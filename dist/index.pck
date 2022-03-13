GDPC                                                                                  res://Main.tscn �      �      �g=J�y�)1�P�0�}   res://default_env.tres  P
      �       um�`�N��<*ỳ�8   res://levels/Base.tscn         X      V�{�^f��n��   res://levels/BasicJump.tscn `      �      ��K�����vC   res://levels/CoyoteJump.tscn       �      ~��p� ��1X���wը   res://levels/DoubleJump.tscn�            �	�Y�t�(��R�   res://levels/WallJump.tscn  �!            ��%���f�H��>p��   res://project.binaryP7      n      �pdq'�t4���;z$   res://scenes/KinematicBody2D.tscn   �&      �      ��<A��TJmC�R���    res://scripts/GotoScene.gd.remap�6      ,       �cBҳ2���C�_�Nu   res://scripts/GotoScene.gdc �)      �       5}��*_���mH�w;(   res://scripts/KinematicBody2D.gd.remap  7      2       �&�lLִ�f�$   res://scripts/KinematicBody2D.gdc   �*      [      ���Z�|�K��]�OCP@    [gd_scene load_steps=2 format=2]

[ext_resource path="res://scripts/GotoScene.gd" type="Script" id=1]

[node name="Main" type="Node2D"]

[node name="GotoBasicJump" type="Button" parent="."]
margin_left = 24.0
margin_top = 16.0
margin_right = 120.0
margin_bottom = 37.0
rect_scale = Vector2( 0.5, 0.5 )
text = "basic jump"
align = 0
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}
scene_path = "res://levels/BasicJump.tscn"

[node name="GotoDoubleJump" type="Button" parent="."]
margin_left = 24.0
margin_top = 40.0
margin_right = 120.0
margin_bottom = 61.0
rect_scale = Vector2( 0.5, 0.5 )
text = "double jump"
align = 0
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}
scene_path = "res://levels/DoubleJump.tscn"

[node name="GotoWallJump" type="Button" parent="."]
margin_left = 24.0
margin_top = 64.0
margin_right = 120.0
margin_bottom = 85.0
rect_scale = Vector2( 0.5, 0.5 )
text = "wall jump"
align = 0
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}
scene_path = "res://levels/WallJump.tscn"

[node name="GotoCoyoteJump" type="Button" parent="."]
margin_left = 24.0
margin_top = 88.0
margin_right = 120.0
margin_bottom = 109.0
rect_scale = Vector2( 0.5, 0.5 )
text = "coyote jump"
align = 0
script = ExtResource( 1 )
__meta__ = {
"_edit_use_anchors_": false
}
scene_path = "res://levels/CoyoteJump.tscn"
[connection signal="pressed" from="GotoBasicJump" to="GotoBasicJump" method="go"]
[connection signal="pressed" from="GotoDoubleJump" to="GotoDoubleJump" method="go"]
[connection signal="pressed" from="GotoWallJump" to="GotoWallJump" method="go"]
[connection signal="pressed" from="GotoCoyoteJump" to="GotoCoyoteJump" method="go"]
          [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             [gd_scene load_steps=2 format=2]

[ext_resource path="res://scenes/KinematicBody2D.tscn" type="PackedScene" id=1]

[node name="Base" type="Node2D"]

[node name="KinematicBody2D" parent="." instance=ExtResource( 1 )]

[node name="Camera2D" type="Camera2D" parent="KinematicBody2D"]
current = true
zoom = Vector2( 2, 2 )
smoothing_enabled = true
        [gd_scene load_steps=3 format=2]

[ext_resource path="res://levels/Base.tscn" type="PackedScene" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 176, 10 )

[node name="BasicJump" instance=ExtResource( 1 )]

[node name="StaticBody2D" type="StaticBody2D" parent="." index="0"]
position = Vector2( 80, 112 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D" index="0"]
shape = SubResource( 1 )

[node name="ColorRect" type="ColorRect" parent="StaticBody2D/CollisionShape2D" index="0"]
margin_left = -176.0
margin_top = -8.0
margin_right = 176.0
margin_bottom = 8.0
__meta__ = {
"_edit_use_anchors_": false
}
              [gd_scene load_steps=3 format=2]

[ext_resource path="res://levels/Base.tscn" type="PackedScene" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 32, 8 )

[node name="CoyoteJump" instance=ExtResource( 1 )]

[node name="KinematicBody2D" parent="." index="0"]
coyote_jump = true

[node name="StaticBody2D" type="StaticBody2D" parent="." index="1"]
position = Vector2( 80, 72 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D" index="0"]
shape = SubResource( 1 )

[node name="ColorRect" type="ColorRect" parent="StaticBody2D/CollisionShape2D" index="0"]
margin_left = -32.0
margin_top = -8.0
margin_right = 32.0
margin_bottom = 8.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="StaticBody2D2" type="StaticBody2D" parent="." index="2"]
position = Vector2( 232, 112 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D2" index="0"]
shape = SubResource( 1 )

[node name="ColorRect" type="ColorRect" parent="StaticBody2D2/CollisionShape2D" index="0"]
margin_left = -32.0
margin_top = -16.0
margin_right = 32.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="StaticBody2D3" type="StaticBody2D" parent="." index="3"]
position = Vector2( -56, 184 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D3" index="0"]
shape = SubResource( 1 )

[node name="ColorRect" type="ColorRect" parent="StaticBody2D3/CollisionShape2D" index="0"]
margin_left = -32.0
margin_top = -8.0
margin_right = 32.0
margin_bottom = 8.0
__meta__ = {
"_edit_use_anchors_": false
}
              [gd_scene load_steps=3 format=2]

[ext_resource path="res://levels/Base.tscn" type="PackedScene" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 16, 16 )

[node name="DoubleJump" instance=ExtResource( 1 )]

[node name="KinematicBody2D" parent="." index="0"]
double_jump = true

[node name="StaticBody2D" type="StaticBody2D" parent="." index="1"]
position = Vector2( 40, 96 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D" index="0"]
shape = SubResource( 1 )

[node name="ColorRect" type="ColorRect" parent="StaticBody2D/CollisionShape2D" index="0"]
margin_left = -16.0
margin_top = -16.0
margin_right = 16.0
margin_bottom = 16.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="StaticBody2D2" type="StaticBody2D" parent="." index="2"]
position = Vector2( 80, 96 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D2" index="0"]
shape = SubResource( 1 )

[node name="ColorRect2" type="ColorRect" parent="StaticBody2D2/CollisionShape2D" index="0"]
margin_left = -16.0
margin_top = -16.0
margin_right = 16.0
margin_bottom = 16.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="StaticBody2D3" type="StaticBody2D" parent="." index="3"]
position = Vector2( 128, 96 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D3" index="0"]
shape = SubResource( 1 )

[node name="ColorRect3" type="ColorRect" parent="StaticBody2D3/CollisionShape2D" index="0"]
margin_left = -16.0
margin_top = -16.0
margin_right = 16.0
margin_bottom = 16.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="StaticBody2D4" type="StaticBody2D" parent="." index="4"]
position = Vector2( 184, 96 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D4" index="0"]
shape = SubResource( 1 )

[node name="ColorRect4" type="ColorRect" parent="StaticBody2D4/CollisionShape2D" index="0"]
margin_left = -16.0
margin_top = -16.0
margin_right = 16.0
margin_bottom = 16.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="StaticBody2D5" type="StaticBody2D" parent="." index="5"]
position = Vector2( 248, 96 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D5" index="0"]
shape = SubResource( 1 )

[node name="ColorRect5" type="ColorRect" parent="StaticBody2D5/CollisionShape2D" index="0"]
margin_left = -16.0
margin_top = -16.0
margin_right = 16.0
margin_bottom = 16.0
__meta__ = {
"_edit_use_anchors_": false
}

[node name="StaticBody2D6" type="StaticBody2D" parent="." index="6"]
position = Vector2( 320, 96 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D6" index="0"]
shape = SubResource( 1 )

[node name="ColorRect6" type="ColorRect" parent="StaticBody2D6/CollisionShape2D" index="0"]
margin_left = -16.0
margin_top = -16.0
margin_right = 16.0
margin_bottom = 16.0
__meta__ = {
"_edit_use_anchors_": false
}
               [gd_scene load_steps=4 format=2]

[ext_resource path="res://levels/Base.tscn" type="PackedScene" id=1]


[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 48, 8 )

[sub_resource type="RectangleShape2D" id=2]
extents = Vector2( 8, 64 )

[node name="WallJump" instance=ExtResource( 1 )]

[node name="KinematicBody2D" parent="." index="1"]
position = Vector2( 80, 48 )
wall_jump = true

[node name="Camera2D" parent="KinematicBody2D" index="1"]
smoothing_speed = 0.0

[node name="RayCast2D" parent="KinematicBody2D" index="2"]
enabled = true

[node name="StaticBody2D" type="StaticBody2D" parent="." index="2"]
position = Vector2( 80, 112 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D" index="0"]
shape = SubResource( 1 )

[node name="StaticBody2D2" type="StaticBody2D" parent="." index="3"]
position = Vector2( 24, 40 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D2" index="0"]
shape = SubResource( 2 )

[node name="StaticBody2D3" type="StaticBody2D" parent="." index="4"]
position = Vector2( 136, 40 )
__meta__ = {
"_edit_group_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="StaticBody2D3" index="0"]
shape = SubResource( 2 )
             [gd_scene load_steps=3 format=2]

[ext_resource path="res://scripts/KinematicBody2D.gd" type="Script" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 8, 8 )

[node name="KinematicBody2D" type="KinematicBody2D"]
script = ExtResource( 1 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="ColorRect" type="ColorRect" parent="CollisionShape2D"]
margin_left = -8.0
margin_top = -8.0
margin_right = 8.0
margin_bottom = 8.0
color = Color( 0.623529, 0.941176, 0.87451, 1 )
__meta__ = {
"_edit_use_anchors_": false
}

[node name="RayCast2D" type="RayCast2D" parent="."]
cast_to = Vector2( 10, 0 )
      GDSC                   �����ض�   ���󶶶�   ���������޶�   �ٶ�   �������Ӷ���   �����������Ӷ���      *.tscn,*.scn                                           3YY8P�  R�  RQ;�  YY0�  PQV�  �  PQT�  P�  QY`GDSC   5      `   +     ������������τ�   ����������ƶ   ��������ƶ��   ����������ƶ   �����ض�   �������϶���   ��������������ƶ   ���������������Ӷ���   ����������Ӷ   �����������������Ķ�   ��������������ƶ   �����������¶���   ���������¶�   �������Ӷ���   �����������   ����������������   ������������   �������   ������������ض��   ζ��   ����¶��   ����������������Ҷ��   �������������¶�   ��������   ������򶶶   ������ٶ   ����������ƶ   ����������¶   ���������������������Ҷ�   ϶��   �����������������ƶ�   ���������������ƶ���   �����������Ѷ���   ��¶   ����������������������ض   �����������������ƶ�   �����������������ƶ�   ������Ӷ   ������������ض��   �������ض���   ��������Ӷ��   �����������ض���   �����������ض���   ������������������������ض��   �������ض���   ������������϶��   ������϶   ���Ӷ���   �������������Ӷ�   �涶   ���������������Ŷ���   ����׶��   ����������Ķ              �������?      CoyoteGhost    �      �     
      �        ui_right      ui_left       ui_jump          �������?      ?                                
                               '   	   (   
   -      2      7      <      A      B      O      P      V      [      `      e      f      l      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *     +     ,     -     .     /   #  0   )  1   /  2   3  3   <  4   B  5   F  6   I  7   M  8   N  9   T  :   Z  ;   f  <   j  =   k  >   r  ?   |  @   }  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W      X   	  Y     Z     [     \     ]   $  ^   %  _   )  `   3YY8P�  Q;�  Y8P�  Q;�  Y8P�  Q;�  YY;�  �  PQY;�  �  PQYY;�  Y;�  �  Y;�  �  Y;�	  �  Y;�
  YY5;�  �  PQT�  P�  QYY:�  �  Y:�  �  Y:�  �  Y:�  �  YY0�  PQV�  �  T�  �  P�  T�  P�  QQ�  P�  T�  P�	  QQYY0�  PQV�  &�  T�  P�  T�  QV�  W�  T�  �  �  YY0�  P�  QV�  &�  T�  P�
  QV�  �  T�  �  YY0�  P�  QV�  &�  �  �  T�  P�
  QV�  �  T�  �  �  �  �  YY0�  P�  QV�  &�  W�  T�   PQV�  &�  T�  P�
  QV�  �  T�  �  �  W�  T�  T�  �  �  T�  �  �  '�  PW�  T�  T�!  P�  QQV�  �"  P�  QYY0�#  P�  QV�  &�  �
  V�  &�  
�  V�  �$  PQ�  '�  T�  P�
  QV�  �  T�  �  �  �$  PQ�  (V�  �  �	  YY0�$  PQV�  �  T�%  �  �  T�&  �'  �  T�(  �  �  �
  �  YY0�)  P�*  QV�  �  T�  �*  �  T�  YY0�+  P�,  QV�  �  T�  �  P�  T�  R�  R�,  QYY0�"  P�,  QV�  �  T�  �  P�  T�  R�  R�,  QYY0�-  P�.  QV�  �  T�  �.  YY0�/  PQV�  �  �0  P�  R�  T�1  QYY0�2  P�3  QV�  �  PQ�  �  PQ�  �)  P�  �3  Q�  �-  P�  �3  QY�  &�4  PQV�  �  �  �  �  �  �
  �  �  P�  Q�  �+  P�  �  �3  Q�  (V�  �  P�  Q�  �  P�  Q�  �#  P�  Q�  �+  P�  �  �3  QY�  �/  PQY`     [remap]

path="res://scripts/GotoScene.gdc"
    [remap]

path="res://scripts/KinematicBody2D.gdc"
              ECFG      _global_script_classes             _global_script_class_icons             application/config/name         Jumping    application/run/main_scene         res://Main.tscn    display/window/size/width      �      display/window/size/height      x      display/window/size/test_width      �     display/window/size/test_height      �     display/window/stretch/mode         2d     display/window/stretch/aspect      
   keep_width     input/ui_jump�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   Z      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   C      unicode           echo          script      $   rendering/quality/driver/driver_name         GLES2   %   rendering/vram_compression/import_etc         &   rendering/vram_compression/import_etc2          )   rendering/environment/default_environment          res://default_env.tres    