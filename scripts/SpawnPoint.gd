class_name SpawnPoint
extends CSGCylinder3D


const RESOURCE_PATHS: Array[StringName] = [
	"res://scenes/vehicles/sedan.tscn",
	"res://scenes/vehicles/suv.tscn",
	"res://scenes/vehicles/van.tscn"
]


func _ready():
	spawn_vehicle()


func spawn_vehicle() -> void:
	var path: String = RESOURCE_PATHS.pick_random()
	var vehicle = load(path).instantiate()
	vehicle.translate(position)
	get_parent().add_child.call_deferred(vehicle)
