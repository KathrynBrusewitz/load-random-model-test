class_name VehicleModel
extends CharacterBody3D


@export var speed: int = 5
var gravity = ProjectSettings.get_setting("physics/3d/default_gravity")


func _physics_process(delta):
	if not is_on_floor():
		velocity.y -= gravity * delta
	
	move_and_slide()

func _ready():
	velocity = Vector3.MODEL_FRONT * speed
	velocity = velocity.rotated(Vector3.UP, rotation.y)
