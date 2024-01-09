extends Node2D

var enemyspawn = preload("res://scenes/enemy.tscn")

@onready var spawn_positions = $SpawnPositions
func _on_timer_timeout():
	spawn_enemy()

func spawn_enemy():
	var positions_array = spawn_positions.get_children()
	var rspawnpos = positions_array.pick_random()
	
	var enemy_instance = enemyspawn.instantiate()
	enemy_instance.global_position = rspawnpos.global_position
	add_child(enemy_instance)
	
