class_name SpawnPoint
extends CSGCylinder3D


@export var vehicle_scene: PackedScene


func _ready():
	spawn_vehicle()


func spawn_vehicle() -> void:
	var vehicle = vehicle_scene.instantiate()
	vehicle.initialize(position)
	get_parent().add_child.call_deferred(vehicle)
