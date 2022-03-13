extends Button

export(String, FILE, "*.tscn,*.scn") var scene_path

func go():
	get_tree().change_scene(scene_path)
