GDPC                                                                            +   @   res://.import/favicon.png-05a5f25b7b35b567a640a7daf7751a8e.stex ��      U      -��`�0��x�5�[<   res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex��      U      -��`�0��x�5�[    res://Bodies/NormalBody.gd.remap��      ,       iz��~����b�;�   res://Bodies/NormalBody.gdc 0      �      ��%�0��Sא4�   res://Bodies/NormalBody.tscn�      {      k���e`~� m����   res://Bullets/Arrow.gd.remap�      (       ���U-��ü+���   res://Bullets/Arrow.gdc `      p      ��/�b��"ႍ   res://Bullets/Arrow.tscn�      z      �3> �/�jWL���   res://Bullets/Ball.gd.remap  �      '       ͱ�`?b0K˔��;n   res://Bullets/Ball.gdc  P      �       {b� L��>Cߙ�'5�   res://Bullets/Ball.tscn P      �      �����AvL�u�+\�g+   res://Guns/Cannon.gd.remap  P�      &       ���']�X�#d[���   res://Guns/Cannon.gdc                ���,��c>Y��$)���   res://Guns/Cannon.tscn  0      �      ؝c]����,G¥�L�   res://Guns/Gun.gd.remap ��      #       3����6q"ƶ#��   res://Guns/Gun.gdc  #      �      ��4K]醕Z�,��    res://Guns/MachineGun.gd.remap  ��      *       � 6�)ओ�Oͧ�   res://Guns/MachineGun.gdc   �(            ��F�P�.ے�Rn����   res://Guns/MachineGun.tscn  �*      �      ��v�/ ������Wȡ   res://Guns/Shield.tscn  �1      �      �޺/6�;�>�u�j�n�,   res://Scenes/BulletDetectionRange.gd.remap  �      6       >���	7�	�Q�A~�I(   res://Scenes/BulletDetectionRange.gdc   P9      )      ޱ�ϕ����(lpFo$   res://Scenes/DetectionRange.gd.remap �      0       ��1��?�qL���O��    res://Scenes/DetectionRange.gdc �:      u      �����6��ip�+�F�   res://Scenes/Enemy.gd.remap P�      '       -u�Q�������-�   res://Scenes/Enemy.gdc   <      �      �I�����vW��V.   res://Scenes/Enemy.tscn �T      �      ��������R�^�FC�   res://Scenes/Player.gd.remap��      (       �	R��S��b�Ҷ?��@   res://Scenes/Player.gdc �`      L      4�隞��HP�K'�3   res://Scenes/Player.tscno      +      L�:P�.
}�D$���    res://Scripts/Camera2D.gd.remap ��      +       l9�g���B�)�W   res://Scripts/Camera2D.gdc  @s      �      ��A>-6�ȫjh�L    res://Scripts/Character.gd.remap�      ,       �6��o4�-��;�{VH   res://Scripts/Character.gdc �w      �      �(X���l$�a8�c��    res://Scripts/Emitter.gd.remap  �      *       ����賏�MA�D�   res://Scripts/Emitter.gdc   �y      �       �J"���I��#8"   res://Test1.tscn�z      F
      �G���7�L�*��   res://TestSquare.tscn   Є            �¬%O���x�f֍�   res://default_env.tres  ��      �       um�`�N��<*ỳ�8   res://favicon.png.import �      �      JB^�����C��?6`   res://icon.png  @�      �      G1?��z�c��vN��   res://icon.png.import   �      �      "�Պ����$��㹌   res://project.binary0�      {      ~��8&�Ɋ��$0GDSC   	         I      �����Ӷ�   ��������򶶶   ��������   ������������   ���Ӷ���   �������¶���   �����������Ķ���   ����׶��   ��������   ^     �     �                     
                        "   	   #   
   +      9      G      Y3YY8;�  Y8;�  �  Y8;�  �  YY0�  P�  R�  R�  QV�  �  &�  �  T�  V�  .�  T�#  P�  �  R�  �  Q�  .�  T�#  P�  T�  R�  �  QY`   [gd_scene load_steps=3 format=2]

[sub_resource type="Gradient" id=2]
colors = PoolColorArray( 0.286743, 0.90625, 0.296423, 1, 0.666992, 1, 0.65625, 1 )

[sub_resource type="GradientTexture" id=3]
gradient = SubResource( 2 )
width = 20

[node name="Body" type="Sprite"]
position = Vector2( -0.140464, -0.0936432 )
scale = Vector2( 1, 20 )
texture = SubResource( 3 )
     GDSC            `      ��������   ��������τ�   ������Ķ   ����򶶶   ������   �����϶�   ������������Ӷ��   ������Ҷ   �������ض���   ���������������Ҷ���   ���϶���   ��������Ķ��   ������¶   ����Ӷ��   ���������Ӷ�       �       �?                                                              0   	   1   
   8      >      D      K      S      W      Z      ^      2Y3�  YY;�  Y8;�  �  Y8;�  �  Y0�  PQV�  �  P�  PQR�  P�  R�  QT�  P�  QQYY0�	  P�
  QV�  &�
  �  V�  &�
  4�  V�  �
  T�  P�  Q�  &�
  T�  �  V�  �  PQ�  (V�  �  PQY`[gd_scene load_steps=5 format=2]

[ext_resource path="res://Bullets/Arrow.gd" type="Script" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 10, 2.125 )

[sub_resource type="Gradient" id=2]
colors = PoolColorArray( 0.109529, 0.464844, 0.088974, 1, 3.05176e-05, 0.00390625, 0.000726938, 1 )

[sub_resource type="GradientTexture" id=3]
gradient = SubResource( 2 )
width = 20

[node name="Arrow" type="RigidBody2D"]
mass = 10.0
gravity_scale = 0.0
script = ExtResource( 1 )

[node name="Collider" type="Area2D" parent="."]
collision_layer = 32
collision_mask = 38

[node name="CollisionShape2D" type="CollisionShape2D" parent="Collider"]
position = Vector2( 10.25, -0.125 )
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 10, -0.125 )
rotation = 3.14159
scale = Vector2( 1, 4 )
texture = SubResource( 3 )

[node name="PhysicsCollider" type="CollisionShape2D" parent="."]
position = Vector2( 10.125, -0.125 )
scale = Vector2( 0.95, 0.9 )
shape = SubResource( 1 )
[connection signal="body_entered" from="Collider" to="." method="_on_body_entered"]
      GDSC            #      ��������τ�   ����򶶶   �����϶�   ������������Ӷ��   ������Ҷ   �������ض���   P                                         !      3YY:�  Y0�  PQV�  �  P�  PQR�  P�  R�  QT�  P�  QQY`               [gd_scene load_steps=5 format=2]

[ext_resource path="res://Bullets/Ball.gd" type="Script" id=1]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 12.5, 12.3606 )

[sub_resource type="Gradient" id=2]
colors = PoolColorArray( 0.109529, 0.464844, 0.088974, 1, 3.05176e-05, 0.00390625, 0.000726938, 1 )

[sub_resource type="GradientTexture" id=3]
gradient = SubResource( 2 )
width = 20

[node name="Ball" type="RigidBody2D"]
position = Vector2( 0, 0.25 )
mass = 100.0
gravity_scale = 0.0
script = ExtResource( 1 )

[node name="PhysicsCollider" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Sprite" type="Sprite" parent="."]
rotation = 3.14159
scale = Vector2( 1.24404, 25.0218 )
texture = SubResource( 3 )

[node name="Collider" type="Area2D" parent="."]
collision_layer = 38
collision_mask = 32

[node name="CollisionShape2D2" type="CollisionShape2D" parent="Collider"]
shape = SubResource( 1 )
       GDSC   	         @      ����ƶ��   �����¶�   ���������������������Ӷ�   �����¶�   �������Ӷ���   ����򶶶   ������   �����������ض���   ��������¶��      res://Guns/Gun.gd         res://Bullets/Arrow.tscn   �                                 	                                 	   #   
   )      /      2      3      9      =      >      3YY0PQV�  �  ?P�  Q�  �  -�  Y0�  PQV�  ;�  �  T�  PQ�  �  T�  �  �  �  T�  �  �  .�  YY0�  PQV�  �  �  YY`     [gd_scene load_steps=7 format=2]

[ext_resource path="res://Guns/Cannon.gd" type="Script" id=1]

[sub_resource type="Gradient" id=1]
colors = PoolColorArray( 0.286743, 0.90625, 0.296423, 1, 0.666992, 1, 0.65625, 1 )

[sub_resource type="GradientTexture" id=2]
gradient = SubResource( 1 )
width = 20

[sub_resource type="Curve" id=3]
_data = [ Vector2( 0.620253, 1 ), 0.0, -0.0495301, 0, 0, Vector2( 1, 0 ), 0.0, 0.0, 0, 0 ]

[sub_resource type="CurveTexture" id=4]
curve = SubResource( 3 )

[sub_resource type="ParticlesMaterial" id=5]
lifetime_randomness = 1.0
emission_shape = 2
emission_box_extents = Vector3( 1, 1, 1 )
flag_disable_z = true
spread = 20.0
flatness = 1.0
gravity = Vector3( 0, 0, 0 )
initial_velocity = 120.0
initial_velocity_random = 0.5
orbit_velocity = 0.0
orbit_velocity_random = 0.0
angle_random = 1.0
scale = 4.0
scale_random = 1.0
scale_curve = SubResource( 4 )
color = Color( 0.843137, 1, 0.760784, 1 )

[node name="Cannon" type="Node2D"]
script = ExtResource( 1 )
camera_force = 3.0

[node name="Sprite" type="Sprite" parent="."]
position = Vector2( 0.0064106, -0.00919247 )
rotation = -1.5708
scale = Vector2( 0.245971, 16.2632 )
texture = SubResource( 2 )
centered = false
offset = Vector2( -10.018, 0 )

[node name="ShootingPoint" type="Position2D" parent="."]
position = Vector2( 17.1092, 0.0177097 )

[node name="Cooldown" type="Timer" parent="."]
process_mode = 0
wait_time = 0.8
autostart = true

[node name="ShootParticles" type="Particles2D" parent="."]
position = Vector2( 17.1354, 0.0215788 )
emitting = false
amount = 6
lifetime = 0.4
one_shot = true
preprocess = 0.1
explosiveness = 1.0
local_coords = false
process_material = SubResource( 5 )
[connection signal="timeout" from="Cooldown" to="." method="_on_Cooldown"]
GDSC         &   �      ��ض   ���ӄ�   �����¶�   ���������¶�   ������������¶��   �������Ӷ���   �������ض���   ����Ķ��   �������������Ŷ�   ��������ń�   �����¶�   ��������������Ӷ   ���������������������Ӷ�   �����������Ӷ���   ��������¶��   ����¶��   ����ƶ��   ����¶��   �����¶�   ����¶��   ������¶   �����������¶���   �����¶�   ������Ķ   �������ض���   �������������������۶���   �����ض�   �������ض���   �����������ٶ���   ��������Ҷ��   �������Ӷ���      ShootingPoint         Cooldown      ShootParticles        res://Bullets/Arrow.tscn  �������?                                                 !      -      9      C   	   K   
   Q      V      W      ]      a      b      h      j      k      r      v      z      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   2Y3�  YY85;�  �  PQT�  PQT�  PQY85;�  �  PQY85;�  V�  �  P�  QY85;�  V�	  �  P�  QY85;�
  ?P�  QY5;�  �  PQY8;�  �  Y;�  �  YY0�  PQV�  �  PQYY0�  PQV�  -�  Y0�  P�  QV�  &�  V�  �  �  �  �  T�  PQ�  &�  �  V�  �  T�  PQ�  �  P�  Q�  .�  �  .�  �  Y0�  P�  QV�  ;�  �  PQ�  �  T�  �  �  �  T�  �  T�  PQT�  �  �  T�  �  T�  P�  Q�  �  T�  PQT�  P�  QYY0�  PQV�  .�
  T�  PQY`             GDSC   	         ?      ����ƶ��   �����¶�   ���������������������Ӷ�   �����¶�   �������Ӷ���   ����򶶶   ������   �����������ض���   ��������¶��      res://Guns/Gun.gd         res://Bullets/Arrow.tscn   �       �>                         	                                 	   #   
   )      /      2      3      9      =      3YY0PQV�  �  ?P�  Q�  �  -�  Y0�  PQV�  ;�  �  T�  PQ�  �  T�  �  �  �  T�  �  �  .�  YY0�  PQV�  �  �  Y`              [gd_scene load_steps=7 format=2]

[ext_resource path="res://Guns/MachineGun.gd" type="Script" id=1]

[sub_resource type="Gradient" id=1]
colors = PoolColorArray( 0.286743, 0.90625, 0.296423, 1, 0.666992, 1, 0.65625, 1 )

[sub_resource type="GradientTexture" id=2]
gradient = SubResource( 1 )
width = 20

[sub_resource type="Curve" id=3]
_data = [ Vector2( 0.487342, 1 ), 0.0, 0.0, 0, 0, Vector2( 1, 0 ), 0.0, 0.0, 0, 0 ]

[sub_resource type="CurveTexture" id=4]
curve = SubResource( 3 )

[sub_resource type="ParticlesMaterial" id=5]
lifetime_randomness = 1.0
emission_shape = 2
emission_box_extents = Vector3( 1, 1.5, 1 )
flag_disable_z = true
spread = 30.0
flatness = 1.0
gravity = Vector3( 0, 0, 0 )
initial_velocity = 100.0
initial_velocity_random = 0.5
orbit_velocity = 0.0
orbit_velocity_random = 0.0
scale = 3.0
scale_random = 1.0
scale_curve = SubResource( 4 )
color = Color( 0.854902, 1, 0.862745, 1 )

[node name="MachineGun" type="Node2D"]
script = ExtResource( 1 )
camera_force = 1.5

[node name="MachineGun" type="Sprite" parent="."]
position = Vector2( -4.65661e-10, 0.0078125 )
rotation = -7.85013
scale = Vector2( 0.159024, 24.1363 )
texture = SubResource( 2 )
centered = false
offset = Vector2( -9.941, 0 )

[node name="ShootingPoint" type="Position2D" parent="."]
position = Vector2( 24.5069, -0.0124474 )

[node name="Cooldown" type="Timer" parent="."]
wait_time = 0.25
autostart = true

[node name="ShootParticles" type="Particles2D" parent="."]
position = Vector2( 25.1469, -0.0317068 )
emitting = false
amount = 4
lifetime = 0.3
one_shot = true
preprocess = 0.1
explosiveness = 1.0
local_coords = false
process_material = SubResource( 5 )
[connection signal="timeout" from="Cooldown" to="." method="_on_Cooldown"]
         [gd_scene load_steps=8 format=2]

[sub_resource type="GDScript" id=4]
script/source = "extends \"res://Guns/Gun.gd\"

func shoot(target):
	return 0
"

[sub_resource type="Gradient" id=1]
colors = PoolColorArray( 0.286743, 0.90625, 0.296423, 1, 0.666992, 1, 0.65625, 1 )

[sub_resource type="GradientTexture" id=2]
gradient = SubResource( 1 )
width = 20

[sub_resource type="RectangleShape2D" id=3]
extents = Vector2( 11.8618, 0.469574 )

[sub_resource type="Curve" id=6]
_data = [ Vector2( 0, 1 ), 0.0, 0.0, 0, 0, Vector2( 1, 0 ), 0.0, 0.0, 0, 0 ]

[sub_resource type="CurveTexture" id=7]
curve = SubResource( 6 )

[sub_resource type="ParticlesMaterial" id=5]
lifetime_randomness = 0.5
emission_shape = 2
emission_box_extents = Vector3( 50, 1, 1 )
flag_disable_z = true
direction = Vector3( 0, -1, 0 )
spread = 0.0
flatness = 1.0
gravity = Vector3( 0, 0, 0 )
initial_velocity = 10.0
initial_velocity_random = 0.5
orbit_velocity = 0.0
orbit_velocity_random = 0.0
angle_random = 1.0
scale = 3.0
scale_random = 0.5
scale_curve = SubResource( 7 )
color = Color( 0.854902, 1, 0.862745, 1 )

[node name="Shield" type="Node2D"]
script = SubResource( 4 )

[node name="Cannon" type="Sprite" parent="."]
position = Vector2( 0.0210154, -2.95282 )
rotation = 3.14159
scale = Vector2( 5, 7.996 )
texture = SubResource( 2 )
offset = Vector2( 0, 5 )

[node name="ShootingPoint" type="Position2D" parent="."]
position = Vector2( -13.0277, 1.02044 )
rotation = 1.57212
scale = Vector2( 4.226, 8.526 )

[node name="KinematicBody2D" type="KinematicBody2D" parent="."]
position = Vector2( 0, -42.9082 )
scale = Vector2( 4.226, 8.526 )
collision_layer = 9
collision_mask = 1023

[node name="CollisionShape2D" type="CollisionShape2D" parent="KinematicBody2D"]
rotation = 2.91038e-11
shape = SubResource( 3 )

[node name="ConstantParticles" type="Particles2D" parent="."]
position = Vector2( -0.103382, -47.9955 )
scale = Vector2( 1, 1 )
lifetime = 0.6
local_coords = false
process_material = SubResource( 5 )
             GDSC            -      ���ׄ�   ���������������Ҷ���   ���϶���   ���Ӷ���   ��������   ������Ķ   ���������¶�   ��������������Ҷ                                   "      +      3YY0�  P�  V�  QV�  &�  4�  V�  &�  T�  �  T�  �  PQV�  �  PQT�  P�  QY`       GDSC            6      ���ׄ�   ���������������Ҷ���   ���϶���   ���Ӷ���   ���������¶�   �������������Ҷ�   ��������������Ҷ   ���������������Ӷ���      Player                     
                              $   	   ,   
   4      3YY0�  P�  QV�  &�  T�  V�  �  PQT�  P�  QYYY0�  P�  QV�  &�  T�  V�  �  PQT�  PQY`           GDSC   c      �   �     ��������Ķ��   ������Ŷ   �������Ӷ���   ���������¶�   �����ض�   ��������Ҷ��   ��ض   ���϶���   �������������Ӷ�   ������������Ӷ��   ����������������Ӷ��   ��������������������������¶   ������������Ӷ��   �������������ض�   ���������������Ӷ���   ��������ض��   ��������������ض   ���������Ӷ�   ����������Ҷ   ������Ѷ   �����¶�   ������������τ�   �����������¶���   ��������������ض   ��������Ҷ��   ��������������Ҷ   ��������������Ҷ   ����������Ҷ   ������������������Ŷ   ���������������Ŷ���   ����׶��   ����Ӷ��   ����������Ѷ   ������������������������Ķ��   ���������������¶���   ��������Ӷ��   ����������������������ض   ���������������������ض�   �������������¶�   ������������������������Ӷ��   ����¶��   �����������������Ҷ�   ��������Ķ��   ��������������������������Ķ   �����޶�   ���������Ҷ�   �����Ķ�   ��������������ض   �������������ض�   �������¶���   ������¶   ���Ӷ���   �������������Ӷ�   ��������   �������������Ҷ�   ����϶��   �����������������������Ӷ���   ��������¶��   ��������¶��   ����¶��   ���������������Ӷ���   ������¶   �����Ӷ�   ��������ń�   ������¶   �����޶�   ���������Ӷ�   ��������۶��   ζ��   ϶��   ����������������ض��   ����Ӷ��   ��������������Ҷ   �����¶�   ��������τ�   ������������������ض   �������϶���   ׶��   Զ��   ն��   ������������Ӷ��   ��������������϶   ������������������Ӷ   �������������¶�   ���������¶�   ��������¶��   ���������Ӷ�   �������¶���   ��Ŷ   ���¶���   �������Ӷ���   ���ӄ�   ���������¶�   ��������Ҷ��   ��������������������������Ӷ   ��������������������¶��   ��ض   �������ض���   ���ƶ���      Weapons       Weapons/Weapon               Body       DetectionRange/DetectionCollider   d      �       �>   �           {�G�z�?   2                P     �������?            not                 4      ,        res://TestSquare.tscn         ?                               "      +      4      5   	   ;   
   A      G      M      X      ]      b      c      h      m      r      w      x            �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,   �   -   �   .   �   /   �   0   �   1   �   2     3     4     5     6     7     8   #  9   +  :   ,  ;   5  <   <  =   =  >   C  ?   L  @   V  A   Z  B   [  C   a  D   j  E   o  F   u  G   w  H   x  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S   �  T   �  U   �  V   �  W   �  X   �  Y   �  Z   �  [   �  \     ]     ^   	  _     `     a   "  b   )  c   *  d   1  e   5  f   H  g   O  h   P  i   W  j   ]  k   g  l   j  m   k  n   r  o   w  p   y  q   }  r   �  s   �  t   �  u   �  v   �  w   �  x   �  y   �  z   �  {   �  |   �  }   �  ~   �     �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   	  �   #  �   $  �   -  �   5  �   :  �   ;  �   J  �   Q  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �      �     �     �     �      �   .  �   /  �   0  �   1  �   8  �   F  �   L  �   U  �   V  �   W  �   ]  �   g  �   j  �   n  �   o  �   p  �   v  �   {  �   |  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   �  �   3YY5;�  �  PQY5;�  �  P�  QY5;�  �  T�  P�  Q<�  Y5;�  �  P�  QY5;�  �  P�  QYY8;�	  �  Y8;�
  �  Y8;�  �  Y8;�  �  Y8;�  �  P�	  R�  QY;�  �  Y;�  V�  YY;�  V�  Y;�  �
  Y;�  �  Y;�  �  YY;�  V�  �  Y;�  V�  Y;�  V�  Y;�  �  Y;�  �  Y;�  �  Y;�  �  Y;�  �  YY0�  P�  QV�  &�  V�  �   P�  Q�  .�  �  &�  �  V�  �!  PQ�  &�  �  V�  �"  P�  Q�  &�  �  V�  �#  P�  Q�  '�  �  V�  �   P�  Q�  Y0�"  P�  QV�  �$  PQ�  �%  PQ�  �&  PQ�  &�  
�  V�  �'  P�  Q�  &�(  P�  QV�  �)  PQYY0�!  PQV�  ;�*  �+  P�  Q�  �  �*  T�,  PQ�  �  �*  T�-  PQ�  Y0�+  P�.  QX�  V�  .�.  T�/  �/  �  Y0�)  PQV�  �  �(  P�  R�  Q�  &�'  PQ�  �  V�  �  �  �  Y0�$  PQV�  &P�  4QV�  �?  P�  Q�  �  �  T�/  �  .�  �  ;�0  �  T�1  T�-  PQ�  �  �  �  T�/  �0  �  Y0�%  PQV�  &�  �  PQV�  �  �  �  �  �  T�#  P�  R�  QYY0�&  PQV�  �  T�2  P�  Q�  Y0�'  P�  QV�  &�  �  	�	  V�  �1  �  T�3  P�1  R�  �  R�  Q�  �1  �4  P�1  Q�  '�  �	  V�  �1  �  T�3  P�1  R�  R�  Q�  �1  �4  P�1  Q�  (V�  �   P�  Q�  Y0�   P�  QV�  &�1  �  T�5  V�  .�  �1  �  T�3  P�1  R�  T�5  R�  Q�  �1  �4  P�1  QYY0�#  P�  QV�  �  �  �  �1  �  T�3  P�1  R�  T�-  PQR�  �  Q�  �1  �4  P�1  QYY0�(  P�  QV�  &�  	�
  V�  .�  T�(  P�  Q�  �  .�  YY0�6  P�7  QV�  &�  V�  .�  �  �7  �  �8  PQ�  &W�9  �  V�  �:  P�  Q�  W�9  T�;  PQ�  (V�  �:  P�  Q�  Y0�<  PQV�  &�  V�  .�  �  �  �  �:  P�  Q�  Y0�=  P�>  QV�  &�  V�  .�  W�?  T�@  PQ�  �8  PQ�  �A  �>  �  &�A  
�  V�  �  �  �  �  T�B  PQ�  �  Y0�8  PQV�  �  T�C  T�D  �  �  �  �  T�C  T�E  �  �  YY0�F  P�.  R�G  R�,  QV�  .�  P�,  �  P�G  Q�.  T�D  R�,  P�G  Q�.  T�E  QYY0�H  P�I  V�J  QV�  &�  �  
�  V�  �K  P�I  QYY0�L  P�M  V�  R�N  V�  R�  QV�  ;�O  �  T�5  �  �O  T�D  �M  T�D  P�N  T�D  �M  T�D  Q�  P�+  P�  �  QQP�N  T�E  �M  T�E  QP�+  P�  �  QQ�  �O  T�E  �M  T�E  P�N  T�D  �M  T�D  QP�+  P�  �  QQP�N  T�E  �M  T�E  Q�  P�+  P�  �  QQ�  .�O  �  YY0�K  P�I  V�J  QV�  �  �  �  �  ;�P  �I  T�/  P�I  T�Q  T�-  PQ�  Q�  ;�R  �/  T�S  P�P  Q�  �  ;�T  �L  P�I  T�/  R�P  R�  Q�  ;�U  �L  P�I  T�/  R�P  R�  Q�  �  ;�V  �T  �  &P�/  �T  QT�,  PQ	P�/  �U  QT�,  PQV�  �V  �U  �  �  �  P�/  �V  QT�-  PQ�  �  �  �  Y0�W  P�X  QV�  ;�Y  ?P�  QT�Z  PQ<�[  �  �Y  T�/  �X  �  �\  PQT�]  P�Y  Q�  �  Y0�^  PQV�  &P�'  PQ�  QV�  .�  �  .�  YYY0�_  PQV�  �:  P�  QYY0�:  P�`  V�  �  QV�  �  T�:  �`  �  &�`  V�  �  T�a  T�;  PQ�  (V�  �  T�a  T�b  PQ�  �  Y`     [gd_scene load_steps=14 format=2]

[ext_resource path="res://Bodies/NormalBody.gd" type="Script" id=1]
[ext_resource path="res://Guns/Cannon.tscn" type="PackedScene" id=2]
[ext_resource path="res://Scenes/BulletDetectionRange.gd" type="Script" id=3]
[ext_resource path="res://Scenes/DetectionRange.gd" type="Script" id=4]
[ext_resource path="res://Scenes/Enemy.gd" type="Script" id=5]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 10.4262, 10.3583 )

[sub_resource type="Gradient" id=2]
colors = PoolColorArray( 0.00143433, 0.183594, 0, 1, 0.0118406, 0.378906, 0, 1 )

[sub_resource type="GradientTexture" id=3]
gradient = SubResource( 2 )
width = 20

[sub_resource type="CircleShape2D" id=4]
radius = 448.0

[sub_resource type="CircleShape2D" id=5]
radius = 104.0

[sub_resource type="Curve" id=6]
_data = [ Vector2( 0.575949, 1 ), 0.0, 0.0, 0, 0, Vector2( 1, 0 ), 0.0, 0.0, 0, 0 ]

[sub_resource type="CurveTexture" id=7]
width = 2053
curve = SubResource( 6 )

[sub_resource type="ParticlesMaterial" id=8]
lifetime_randomness = 1.0
flag_disable_z = true
spread = 180.0
flatness = 1.0
gravity = Vector3( 0, 0, 0 )
initial_velocity = 200.0
orbit_velocity = 0.0
orbit_velocity_random = 0.0
scale = 8.0
scale_random = 1.0
scale_curve = SubResource( 7 )

[node name="Enemy" type="KinematicBody2D"]
collision_layer = 5
collision_mask = 63
script = ExtResource( 5 )

[node name="Collider" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Body" type="Sprite" parent="."]
position = Vector2( -0.140464, -0.0936432 )
scale = Vector2( 1, 20 )
texture = SubResource( 3 )
script = ExtResource( 1 )
MAX_SPEED = 300
ACCEL = 100
FRICTION = 200

[node name="DetectionRange" type="Area2D" parent="."]
visible = false
collision_layer = 0
collision_mask = 2
script = ExtResource( 4 )

[node name="DetectionCollider" type="CollisionShape2D" parent="DetectionRange"]
shape = SubResource( 4 )

[node name="BulletDetectionRange" type="Area2D" parent="."]
collision_layer = 0
collision_mask = 33
script = ExtResource( 3 )

[node name="DetectionRange" type="CollisionShape2D" parent="BulletDetectionRange"]
shape = SubResource( 5 )

[node name="Weapons" type="Node2D" parent="."]

[node name="Weapon" type="Node2D" parent="Weapons"]
position = Vector2( 6, 0 )

[node name="Cannon" parent="Weapons/Weapon" instance=ExtResource( 2 )]

[node name="Particles2D" type="Particles2D" parent="."]
emitting = false
amount = 6
lifetime = 0.4
one_shot = true
preprocess = 0.01
explosiveness = 1.0
process_material = SubResource( 8 )

[node name="FirstShot" type="Timer" parent="."]
one_shot = true
[connection signal="body_entered" from="DetectionRange" to="DetectionRange" method="_on_body_entered"]
[connection signal="body_exited" from="DetectionRange" to="DetectionRange" method="_on_body_exited"]
[connection signal="body_entered" from="BulletDetectionRange" to="BulletDetectionRange" method="_on_body_entered"]
[connection signal="timeout" from="FirstShot" to="." method="_on_FirstShot_timeout"]
              GDSC   :      f   ^     ��������Ķ��   ������������ض��   ����Ӷ��   ���϶���   �������Ӷ���   ������Ŷ   �������������¶�   ��������������¶   ���������¶�   ��������Ҷ��   ��ض   ����������¶   ���������ض�   �����ض�   �����Ҷ�   ����������������¶��   �����������������¶�   ������������������¶   �������������������¶���   ���������Ӷ�   ���������������Ŷ���   ����׶��   ���Ӷ���   ������Ŷ   ����¶��   ����������������Ҷ��   �����Ӷ�   ���������Ӷ�   ���������������������Ҷ�   ������¶   �����������Ķ���   ��������   ζ��   ������������������޶   ϶��   �������¶���   �������������Ӷ�   �������������Ŷ�   ������������������ض   �������������������ض���   ���Ӷ���   ���������ض�   �����������������¶�   �������Ӷ���   ������������������¶   ������¶   ������������������������ض��   ����¶��   �����ض�   ����������ڶ   ��������Ҷ��   ���������Ӷ�   ���Ӷ���   �������ض���   ������¶   �����Ӷ�   �������Ӷ���   �������������������Ӷ���      Body      Weapons       Weapons/WeaponLeft        Weapons/WeaponRight              res://Guns/MachineGun.tscn        res://Guns/Cannon.tscn        res://Guns/Shield.tscn               space     �������?            r         v      
   move_right     	   move_left      	   move_down         move_up       z         x          
   left_click        right_click       camera_shaken         Shield     �                      	      
                        &   	   /   
   <      I      J      S      \      e      f      r      ~            �      �      �      �      �      �      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   �   (   �   )   �   *   �   +   �   ,     -     .     /      0   !  1   (  2   ,  3   0  4   4  5   5  6   >  7   L  8   T  9   ]  :   f  ;   t  <   |  =   �  >   �  ?   �  @   �  A   �  B   �  C   �  D   �  E   �  F   �  G   �  H   �  I   �  J   �  K   �  L   �  M   �  N   �  O   �  P   �  Q   �  R   �  S     T     U     V     W     X     Y   "  Z   +  [   1  \   7  ]   ;  ^   <  _   C  `   H  a   L  b   M  c   S  d   [  e   \  f   3YYB�  P�  QYY5;�  �  PQYY5;�  �  P�  QY5;�  �  P�  QY5;�  �  P�  QY5;�  �  T�	  P�  Q<�
  Y5;�  �  T�	  P�  Q<�
  YY5;�  ?P�  QY5;�  ?P�  QY5;�  ?P�  QYY5;�  L�  R�  R�  MY5;�  L�  R�  R�  MYY;�  �  Y;�  �  YY;�  �  YY0�  P�  QV�  �  P�  Q�  �  P�  Q�  �  &�  T�  P�	  QV�  �  T�  �
  �  (V�  �  T�  �  �  �  &�  T�  P�  QV�  �  PQ�  �  &�  T�  P�  QV�  �  �  �  YY0�  P�  QV�  ;�  �  T�  �  �  T�   �  T�!  P�  Q�  T�!  P�  Q�  �  T�"  �  T�!  P�  Q�  T�!  P�  Q�  �  �#  �  T�  P�#  R�  R�  Q�  �#  �$  P�#  QYY0�  P�  QV�  �%  PQ�  �&  PQ�  �'  PQ�  �  &�  T�  P�  QV�  �  P�  �  Q�  T�(  PQ�  ;�)  �  L�  M�  �*  P�)  T�+  PQQ�  &�  T�  P�  QV�  �  P�  �  Q�  T�(  PQ�  ;�)  �  L�  M�  �,  P�)  T�+  PQQYY0�%  PQV�  �  T�-  P�.  PQQ�  Y0�&  PQV�  &�  �  V�  &�  T�  P�  QV�  �/  P�  QYY0�'  PQV�  &�  �  V�  &�  T�  P�  QV�  �/  P�  QYY0�/  P�0  QV�  ;�  �0  T�/  P�.  PQQ�  &�  �  V�  �1  P�  R�  Q�  Y0�*  P�)  QV�  �  T�2  P�)  Q�  &�  �  V�  �  T�3  PQ�  �  �)  �  Y0�,  P�)  QV�  �  T�2  P�)  Q�  &�)  T�4  �  V�  �)  T�5  �+  P�  Q�  &�  �  V�  �  T�3  PQ�  �  �)  �  Y0�6  P�7  QV�  &�  V�  �  PQ�  Y0�  PQV�  �8  PQT�9  PQ�  Y`    [gd_scene load_steps=6 format=2]

[ext_resource path="res://Bodies/NormalBody.gd" type="Script" id=1]
[ext_resource path="res://Guns/Cannon.tscn" type="PackedScene" id=2]
[ext_resource path="res://Bodies/NormalBody.tscn" type="PackedScene" id=3]
[ext_resource path="res://Scenes/Player.gd" type="Script" id=4]

[sub_resource type="RectangleShape2D" id=1]

[node name="Player" type="KinematicBody2D"]
collision_layer = 2147483650
collision_mask = 61
script = ExtResource( 4 )

[node name="CollisionShape2D" type="CollisionShape2D" parent="."]
shape = SubResource( 1 )

[node name="Body" parent="." instance=ExtResource( 3 )]
script = ExtResource( 1 )
MAX_SPEED = 300
ACCEL = 3000
FRICTION = 10000

[node name="Weapons" type="Node2D" parent="."]

[node name="WeaponRight" type="Node2D" parent="Weapons"]
position = Vector2( 7, 6 )

[node name="Cannon" parent="Weapons/WeaponRight" instance=ExtResource( 2 )]

[node name="WeaponLeft" type="Node2D" parent="Weapons"]
position = Vector2( 7, -6 )

[node name="Cannon" parent="Weapons/WeaponLeft" instance=ExtResource( 2 )]
     GDSC         '   �      �����ׄ򶶶�   �����Ķ�   ���������¶�   �������Ӷ���   ����������   ���������Ѷ�   ����������Ķ   ���������Ӷ�   ���������������ض���   �����������Ӷ���   �����϶�   ������Ӷ   �����¶�   ���������������Ŷ���   ����׶��   ��Ķ   ��������������ض   ����Ӷ��   ��������Ӷ��   ����Ӷ��      Player    �������?                              
                                                    !      '   	   (   
   +      0      1      7      ;      ?      @      G      R      c      d      h      m      n      u      {      �      �      �      �      �      �       �   !   �   "   �   #   �   $   �   %   �   &   �   '   3YY5;�  �  PQT�  PQY:�  �  YY;�  �  Y8;�  �  Y8;�  �  YY;�  Y;�	  �  YY0�
  PQV�  �  �  �  �  �  YY0�  P�  QV�  ;�  P�  T�  �  Q�  �  P�  T�#  P�  T�  R�  QQ�  �  �  &�  V�  �  P�  QYY0�  P�  QV�  &�	  	�  V�  �  �  P�'  PQR�'  PQQ�  �  �	  �  �  (V�  �  �  �  �	  �  �  �  �  �  �  �  �  �  �  �  Y0�  P�  QV�  �  �  �  �  �3  P�  R�  Q�  �  �  �  �3  P�  �  R�  QY`    GDSC   	         ;      ��������Ķ��   ������������τ�   �����޶�   ����Ӷ��   �������¶���   ��������   ������¶   �����Ӷ�   ���������Ӷ�                                                                               	   '   
   +      1      5      9      2Y3�  YY8;�  Y8;�  V�  �  YY8;�  V�  �  T�  YY0�  P�  QV�  �  �  �  &�  
�  V�  �  �  �  �  PQY`           GDSC                  ���ӄ�   �����϶�   �����Ķ�   ������¶   �����ׄ򶶶�      camera_shaken      	   _on_shake                      	            3YY0�  PQV�  W�  T�  PRW�  R�  QY`          [gd_scene load_steps=8 format=2]

[ext_resource path="res://Scenes/Player.tscn" type="PackedScene" id=1]
[ext_resource path="res://Scripts/Camera2D.gd" type="Script" id=2]
[ext_resource path="res://Scenes/Enemy.tscn" type="PackedScene" id=3]
[ext_resource path="res://Scripts/Emitter.gd" type="Script" id=4]

[sub_resource type="RectangleShape2D" id=1]
extents = Vector2( 28.937, 29.5936 )

[sub_resource type="Gradient" id=2]
offsets = PoolRealArray( 0, 0.509677, 0.980645 )
colors = PoolColorArray( 0, 0, 0, 1, 0.480469, 0.480469, 0.480469, 1, 0, 0, 0, 1 )

[sub_resource type="GradientTexture" id=3]
gradient = SubResource( 2 )

[node name="World" type="Node2D"]

[node name="Node2D" type="Node2D" parent="."]
position = Vector2( -1.32294, 83.315 )
scale = Vector2( 1.6, 1.6 )

[node name="RichTextLabel" type="RichTextLabel" parent="Node2D"]
margin_left = -29.5071
margin_top = -29.7937
margin_right = 32.4929
margin_bottom = 31.2063
text = "WASD
Mouse
Z and X
Spacebar"
fit_content_height = true
scroll_active = false
__meta__ = {
"_edit_lock_": true,
"_edit_use_anchors_": false,
"_editor_description_": ""
}

[node name="RigidBody2D" type="RigidBody2D" parent="Node2D/RichTextLabel"]
mode = 3
gravity_scale = 0.0
__meta__ = {
"_edit_lock_": true
}

[node name="CollisionShape2D" type="CollisionShape2D" parent="Node2D/RichTextLabel/RigidBody2D"]
position = Vector2( 29.5071, 29.7937 )
shape = SubResource( 1 )
__meta__ = {
"_edit_lock_": true
}

[node name="Emitter" type="Node2D" parent="."]
script = ExtResource( 4 )

[node name="Player" parent="Emitter" instance=ExtResource( 1 )]
position = Vector2( 1.10684, 245.253 )

[node name="Camera2D" type="Camera2D" parent="Emitter"]
scale = Vector2( 1e-05, 1.25 )
current = true
zoom = Vector2( 1.5, 1.5 )
process_mode = 0
script = ExtResource( 2 )

[node name="Node2D" type="Node2D" parent="Emitter/Camera2D"]
scale = Vector2( 1, 1.224 )

[node name="Sprite" type="Sprite" parent="Emitter/Camera2D/Node2D"]
position = Vector2( 377696, -1.29193 )
scale = Vector2( 93071.7, 718.416 )
z_index = -100
z_as_relative = false
texture = SubResource( 3 )
__meta__ = {
"_edit_lock_": true
}

[node name="Enemy" parent="Emitter" instance=ExtResource( 3 )]
position = Vector2( 504, 8 )

[node name="Enemy2" parent="Emitter" instance=ExtResource( 3 )]
position = Vector2( 1.10684, -472 )

[node name="Enemy3" parent="Emitter" instance=ExtResource( 3 )]
position = Vector2( -160, -472 )

[node name="Enemy4" parent="Emitter" instance=ExtResource( 3 )]
position = Vector2( 144, -472 )

[node name="Enemy5" parent="Emitter" instance=ExtResource( 3 )]
position = Vector2( -536, -2.09364 )
          [gd_scene load_steps=2 format=2]

[ext_resource path="res://icon.png" type="Texture" id=1]

[node name="Node2D" type="Node2D"]

[node name="icon" type="Sprite" parent="."]
position = Vector2( 1.19209e-07, 0 )
scale = Vector2( 0.297133, 0.323487 )
texture = ExtResource( 1 )
              [gd_resource type="Environment" load_steps=2 format=2]

[sub_resource type="ProceduralSky" id=1]

[resource]
background_mode = 2
background_sky = SubResource( 1 )
             GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/favicon.png-05a5f25b7b35b567a640a7daf7751a8e.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://favicon.png"
dest_files=[ "res://.import/favicon.png-05a5f25b7b35b567a640a7daf7751a8e.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
     GDST@   @           9  PNG �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx�ݜytTU��?��WK*�=���%�  F����0N��݂:���Q�v��{�[�����E�ӋH���:���B�� YHB*d_*�jyo�(*M�JR!h��S�T��w�߻���ro���� N�\���D�*]��c����z��D�R�[�
5Jg��9E�|JxF׵'�a���Q���BH�~���!����w�A�b
C1�dB�.-�#��ihn�����u��B��1YSB<%�������dA�����C�$+(�����]�BR���Qsu][`
�DV����у�1�G���j�G͕IY! L1�]��� +FS�IY!IP ��|�}��*A��H��R�tQq����D`TW���p\3���M���,�fQ����d��h�m7r�U��f������.��ik�>O�;��xm��'j�u�(o}�����Q�S�-��cBc��d��rI�Ϛ�$I|]�ơ�vJkZ�9>��f����@EuC�~�2�ym�ش��U�\�KAZ4��b�4������;�X婐����@Hg@���o��W�b�x�)����3]j_��V;K����7�u����;o�������;=|��Ŗ}5��0q�$�!?��9�|�5tv�C�sHPTX@t����w�nw��۝�8�=s�p��I}�DZ-̝�ǆ�'�;=����R�PR�ۥu���u��ǻC�sH`��>�p�P ���O3R�������۝�SZ7 �p��o�P!�
��� �l��ހmT�Ƴێ�gA��gm�j����iG���B� ܦ(��cX�}4ۻB��ao��"����� ����G�7���H���æ;,NW?��[��`�r~��w�kl�d4�������YT7�P��5lF�BEc��=<�����?�:]�������G�Μ�{������n�v��%���7�eoݪ��
�QX¬)�JKb����W�[�G ��P$��k�Y:;�����{���a��&�eפ�����O�5,;����yx�b>=fc�* �z��{�fr��7��p���Ôִ�P����t^�]͑�~zs.�3����4��<IG�w�e��e��ih�/ˆ�9�H��f�?����O��.O��;!��]���x�-$E�a1ɜ�u�+7Ȃ�w�md��5���C.��\��X��1?�Nغ/�� ��~��<:k?8��X���!���[���꩓��g��:��E����>��꩓�u��A���	iI4���^v:�^l/;MC��	iI��TM-$�X�;iLH���;iI1�Zm7����P~��G�&g�|BfqV#�M������%��TM��mB�/�)����f����~3m`��������m�Ȉ�Ƽq!cr�pc�8fd���Mۨkl�}P�Л�汻��3p�̤H�>+���1D��i�aۡz�
������Z�Lz|8��.ִQ��v@�1%&���͏�������m���KH�� �p8H�4�9����/*)�aa��g�r�w��F36���(���7�fw����P��&�c����{﹏E7-f�M�).���9��$F�f r �9'1��s2).��G��{���?,�
�G��p�µ�QU�UO�����>��/�g���,�M��5�ʖ�e˃�d����/�M`�=�y=�����f�ӫQU�k'��E�F�+ =΂���
l�&���%%�������F#KY����O7>��;w���l6***B�g)�#W�/�k2�������TJ�'����=!Q@mKYYYdg��$Ib��E�j6�U�,Z�鼌Uvv6YYYԶ��}( ���ߠ#x~�s,X0�����rY��yz�	|r�6l����cN��5ϑ��KBB���5ϡ#xq�7�`=4A�o�xds)�~wO�z�^��m���n�Ds�������e|�0�u��k�ٱ:��RN��w�/!�^�<�ͣ�K1d�F����:�������ˣ����%U�Ą������l{�y����)<�G�y�`}�t��y!��O@� A� Y��sv:K�J��ՎۣQ�܃��T6y�ǯ�Zi
��<�F��1>�	c#�Ǉ��i�L��D�� �u�awe1�e&')�_�Ǝ^V�i߀4�$G�:��r��>h�hݝ������t;)�� &�@zl�Ұր��V6�T�+����0q��L���[t���N&e��Z��ˆ/����(�i啝'i�R�����?:
P].L��S��E�݅�Á�.a6�WjY$F�9P�«����V^7���1Ȓ� �b6�(����0"�k�;�@MC���N�]7 �)Q|s����QfdI���5 ��.f��#1���G���z���>)�N�>�L0T�ۘ5}��Y[�W뿼mj���n���S?�v��ْ|.FE"=�ߑ��q����������p����3�¬8�T�GZ���4ݪ�0�L�Y��jRH��.X�&�v����#�t��7y_#�[�o��V�O����^�����paV�&J�V+V��QY����f+m��(�?/������{�X��:�!:5�G�x���I����HG�%�/�LZ\8/����yLf�Æ>�X�Єǣq���$E������E�Ǣ�����gێ��s�rxO��x孏Q]n���LH����98�i�0==���O$5��o^����>6�a� �*�)?^Ca��yv&���%�5>�n�bŜL:��y�w���/��o�褨A���y,[|=1�VZ�U>,?͑���w��u5d�#�K�b�D�&�:�����l~�S\���[CrTV�$����y��;#�������6�y��3ݸ5��.�V��K���{�,-ւ� k1aB���x���	LL� ����ңl۱������!U��0L�ϴ��O\t$Yi�D�Dm��]|�m���M�3���bT�
�N_����~uiIc��M�DZI���Wgkn����C��!xSv�Pt�F��kڨ��������OKh��L����Z&ip��
ޅ���U�C�[�6��p���;uW8<n'n��nͽQ�
�gԞ�+Z	���{���G�Ĭ� �t�]�p;躆 ��.�ۣ�������^��n�ut�L �W��+ ���hO��^�w�\i� ��:9>3�=��So�2v���U1z��.�^�ߋěN���,���� �f��V�    IEND�B`�           [remap]

importer="texture"
type="StreamTexture"
path="res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex"
metadata={
"vram_texture": false
}

[deps]

source_file="res://icon.png"
dest_files=[ "res://.import/icon.png-487276ed1e3a0c39cad0279d744ee560.stex" ]

[params]

compress/mode=0
compress/lossy_quality=0.7
compress/hdr_mode=0
compress/bptc_ldr=0
compress/normal_map=0
flags/repeat=0
flags/filter=true
flags/mipmaps=false
flags/anisotropic=false
flags/srgb=2
process/fix_alpha_border=true
process/premult_alpha=false
process/HDR_as_SRGB=false
process/invert_color=false
stream=false
size_limit=0
detect_3d=true
svg/scale=1.0
              [remap]

path="res://Bodies/NormalBody.gdc"
    [remap]

path="res://Bullets/Arrow.gdc"
        [remap]

path="res://Bullets/Ball.gdc"
         [remap]

path="res://Guns/Cannon.gdc"
          [remap]

path="res://Guns/Gun.gdc"
             [remap]

path="res://Guns/MachineGun.gdc"
      [remap]

path="res://Scenes/BulletDetectionRange.gdc"
          [remap]

path="res://Scenes/DetectionRange.gdc"
[remap]

path="res://Scenes/Enemy.gdc"
         [remap]

path="res://Scenes/Player.gdc"
        [remap]

path="res://Scripts/Camera2D.gdc"
     [remap]

path="res://Scripts/Character.gdc"
    [remap]

path="res://Scripts/Emitter.gdc"
      �PNG

   IHDR   @   @   �iq�   sRGB ���  �IDATx��ytTU��?�ի%���@ȞY1JZ �iA�i�[P��e��c;�.`Ow+4�>�(}z�EF�Dm�:�h��IHHB�BR!{%�Zߛ?��	U�T�
���:��]~�������-�	Ì�{q*�h$e-
�)��'�d�b(��.�B�6��J�ĩ=;���Cv�j��E~Z��+��CQ�AA�����;�.�	�^P	���ARkUjQ�b�,#;�8�6��P~,� �0�h%*QzE� �"��T��
�=1p:lX�Pd�Y���(:g����kZx ��A���띊3G�Di� !�6����A҆ @�$JkD�$��/�nYE��< Q���<]V�5O!���>2<��f��8�I��8��f:a�|+�/�l9�DEp�-�t]9)C�o��M~�k��tw�r������w��|r�Ξ�	�S�)^� ��c�eg$�vE17ϟ�(�|���Ѧ*����
����^���uD�̴D����h�����R��O�bv�Y����j^�SN֝
������PP���������Y>����&�P��.3+�$��ݷ�����{n����_5c�99�fbסF&�k�mv���bN�T���F���A�9�
(.�'*"��[��c�{ԛmNު8���3�~V� az
�沵�f�sD��&+[���ke3o>r��������T�]����* ���f�~nX�Ȉ���w+�G���F�,U�� D�Դ0赍�!�B�q�c�(
ܱ��f�yT�:��1�� +����C|��-�T��D�M��\|�K�j��<yJ, ����n��1.FZ�d$I0݀8]��Jn_� ���j~����ցV���������1@M�)`F�BM����^x�>
����`��I�˿��wΛ	����W[�����v��E�����u��~��{R�(����3���������y����C��!��nHe�T�Z�����K�P`ǁF´�nH啝���=>id,�>�GW-糓F������m<P8�{o[D����w�Q��=N}�!+�����-�<{[���������w�u�L�����4�����Uc�s��F�륟��c�g�u�s��N��lu���}ן($D��ת8m�Q�V	l�;��(��ڌ���k�
s\��JDIͦOzp��مh����T���IDI���W�Iǧ�X���g��O��a�\:���>����g���%|����i)	�v��]u.�^�:Gk��i)	>��T@k{'	=�������@a�$zZ�;}�󩀒��T�6�Xq&1aWO�,&L�cřT�4P���g[�
p�2��~;� ��Ҭ�29�xri� ��?��)��_��@s[��^�ܴhnɝ4&'
��NanZ4��^Js[ǘ��2���x?Oܷ�$��3�$r����Q��1@�����~��Y�Qܑ�Hjl(}�v�4vSr�iT�1���f������(���A�ᥕ�$� X,�3'�0s����×ƺk~2~'�[�ё�&F�8{2O�y�n�-`^/FPB�?.�N�AO]]�� �n]β[�SR�kN%;>�k��5������]8������=p����Ցh������`}�
�J�8-��ʺ����� �fl˫[8�?E9q�2&������p��<�r�8x� [^݂��2�X��z�V+7N����V@j�A����hl��/+/'5�3�?;9
�(�Ef'Gyҍ���̣�h4RSS� ����������j�Z��jI��x��dE-y�a�X�/�����:��� +k�� �"˖/���+`��],[��UVV4u��P �˻�AA`��)*ZB\\��9lܸ�]{N��礑]6�Hnnqqq-a��Qxy�7�`=8A�Sm&�Q�����u�0hsPz����yJt�[�>�/ޫ�il�����.��ǳ���9��
_
��<s���wT�S������;F����-{k�����T�Z^���z�!t�۰؝^�^*���؝c
���;��7]h^
��PA��+@��gA*+�K��ˌ�)S�1��(Ե��ǯ�h����õ�M�`��p�cC�T")�z�j�w��V��@��D��N�^M\����m�zY��C�Ҙ�I����N�Ϭ��{�9�)����o���C���h�����ʆ.��׏(�ҫ���@�Tf%yZt���wg�4s�]f�q뗣�ǆi�l�⵲3t��I���O��v;Z�g��l��l��kAJѩU^wj�(��������{���)�9�T���KrE�V!�D���aw���x[�I��tZ�0Y �%E�͹���n�G�P�"5FӨ��M�K�!>R���$�.x����h=gϝ�K&@-F��=}�=�����5���s �CFwa���8��u?_����D#���x:R!5&��_�]���*�O��;�)Ȉ�@�g�����ou�Q�v���J�G�6�P�������7��-���	պ^#�C�S��[]3��1���IY��.Ȉ!6\K�:��?9�Ev��S]�l;��?/� ��5�p�X��f�1�;5�S�ye��Ƅ���,Da�>�� O.�AJL(���pL�C5ij޿hBƾ���ڎ�)s��9$D�p���I��e�,ə�+;?�t��v�p�-��&����	V���x���yuo-G&8->�xt�t������Rv��Y�4ZnT�4P]�HA�4�a�T�ǅ1`u\�,���hZ����S������o翿���{�릨ZRq��Y��fat�[����[z9��4�U�V��Anb$Kg������]������8�M0(WeU�H�\n_��¹�C�F�F�}����8d�N��.��]���u�,%Z�F-���E�'����q�L�\������=H�W'�L{�BP0Z���Y�̞���DE��I�N7���c��S���7�Xm�/`�	�+`����X_��KI��^��F\�aD�����~�+M����ㅤ��	SY��/�.�`���:�9Q�c �38K�j�0Y�D�8����W;ܲ�pTt��6P,� Nǵ��Æ�:(���&�N�/ X��i%�?�_P	�n�F�.^�G�E���鬫>?���"@v�2���A~�aԹ_[P, n��N������_rƢ��    IEND�B`�       ECFG      _global_script_classes�                    class         Arrow         language      GDScript      path      res://Bullets/Arrow.gd        base      RigidBody2D             class      	   Character         language      GDScript      path      res://Scripts/Character.gd        base      KinematicBody2D             class         Gun       language      GDScript      path      res://Guns/Gun.gd         base      Node2D     _global_script_class_iconsP               Arrow             	   Character                Gun           application/config/name      
   SuperRogue     application/run/main_scene         res://Test1.tscn   application/config/icon         res://icon.png     display/window/size/width      8     display/window/size/height      �     display/window/size/test_width      8     display/window/size/test_height      �     display/window/stretch/mode         2d     display/window/stretch/aspect         keep   input/move_up�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   W      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/move_down�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   S      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/move_right�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   D      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/move_left�              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   A      unicode           echo          script            InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode        unicode           echo          script         input/left_click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         input/right_click�              deadzone      ?      events              InputEventMouseButton         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           button_mask           position              global_position               factor       �?   button_index         pressed           doubleclick           script         input/z`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   Z      unicode           echo          script         input/x`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   X      unicode           echo          script         input/c`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   C      unicode           echo          script         input/space`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode          unicode           echo          script         input/r`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   R      unicode           echo          script         input/v`              deadzone      ?      events              InputEventKey         resource_local_to_scene           resource_name             device            alt           shift             control           meta          command           pressed           scancode   V      unicode           echo          script         layer_names/2d_physics/layer_1         physics    layer_names/2d_physics/layer_2         player     layer_names/2d_physics/layer_3      	   character      layer_names/2d_physics/layer_4         walls      layer_names/2d_physics/layer_5         items      layer_names/2d_physics/layer_6         bullets )   rendering/environment/default_environment          res://default_env.tres       