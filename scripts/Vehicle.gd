class_name Vehicle
extends Node3D


const RESOURCE_PATHS: Array[StringName] = [
	"res://scenes/vehicles/sedan.tscn",
	"res://scenes/vehicles/suv.tscn",
	"res://scenes/vehicles/van.tscn"
]


func initialize(location: Vector3) -> void:
	var path: String = RESOURCE_PATHS.pick_random()
	var vehicle_model = load(path).instantiate()
	
	translate(location)
	add_child(vehicle_model)

