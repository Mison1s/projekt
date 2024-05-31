extends Node2D

var health = 20
var player_inattack_zone = false
var can_take_damage = true

func _physics_process(delta):
	deal_with_damage()




func deal_with_damage():
	if player_inattack_zone and global.player_current_attack == true:
		if can_take_damage == true:
			health = health - 20
			can_take_damage = false
			Autoscript.score += 2
			if health<= 0:
				self.queue_free()
				



func _on_area_2d_body_entered(body):
	if body.has_method("player"):
		player_inattack_zone = true





func _on_area_2d_body_exited(body):
	if body.has_method("player"):
		player_inattack_zone = false
