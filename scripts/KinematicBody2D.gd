extends KinematicBody2D

export(bool) var double_jump
export(bool) var wall_jump
export(bool) var coyote_jump

var motion = Vector2()
var velocity = Vector2()

var can_double_jump = true
var coyote_base_time = 2
var coyote_time = coyote_base_time
var coyote_time_factor = 0.1
var can_coyote_jump = true

onready var coyote_ghost = get_parent().get_node('CoyoteGhost')

const JUMP_HEIGHT = -250
const ACCELERATION = 4000 
const FRICTION = 10
const GRAVITY = 500

func handle_motion():
	motion.x = int(Input.is_action_pressed("ui_right")) - int(Input.is_action_pressed("ui_left"))

func handle_raycast():
	if not motion.is_equal_approx(Vector2.ZERO):
		$RayCast2D.cast_to = motion * 10	

func handle_jump(jump_height):
	if Input.is_action_just_pressed("ui_jump"):
		velocity.y = jump_height

func handle_double_jump(jump_height):
	if double_jump and can_double_jump and Input.is_action_just_pressed("ui_jump"):
		velocity.y = jump_height
		can_double_jump = false

func handle_wall_jump(jump_height):
	if wall_jump and $RayCast2D.is_colliding():
		if Input.is_action_just_pressed("ui_jump"):
			velocity.x = 0.2 * jump_height * $RayCast2D.cast_to.x
			velocity.y = jump_height
		elif bool($RayCast2D.cast_to.dot(motion)): # snapping
			apply_vertical_friction(0.5)

func handle_coyote_jump(jump_height):
	if coyote_jump and can_coyote_jump:
		if coyote_time <= 0:
			finish_coyote_jump()
		elif Input.is_action_just_pressed("ui_jump"):
			velocity.y = jump_height
			finish_coyote_jump()
		else:
			coyote_time -= coyote_time_factor

func finish_coyote_jump():
	coyote_ghost.visible = true
	coyote_ghost.rect_position = position - coyote_ghost.rect_size / 2
	can_coyote_jump = false

func apply_motion(acceleration):
	velocity.x += acceleration * motion.x

func apply_horizontal_friction(friction):
	velocity.x = lerp(velocity.x, 0, friction)

func apply_vertical_friction(friction):
	velocity.y = lerp(velocity.y, 0, friction)

func apply_gravity(gravity):
	velocity.y += gravity

func move():
	velocity = move_and_slide(velocity, Vector2.UP)

func _physics_process(delta):
	handle_motion()
	handle_raycast()
	apply_motion(ACCELERATION * delta)
	apply_gravity(GRAVITY * delta)

	if is_on_floor():
		can_double_jump = true
		coyote_time = coyote_base_time
		can_coyote_jump = true
		handle_jump(JUMP_HEIGHT)
		apply_horizontal_friction(3 * FRICTION * delta)
	else:
		handle_double_jump(JUMP_HEIGHT)
		handle_wall_jump(JUMP_HEIGHT)
		handle_coyote_jump(JUMP_HEIGHT)
		apply_horizontal_friction(2 * FRICTION * delta)

	move()
