extends Node2D
var player_inattack_zone = false
var can_take_damage = true
var is_open = false

func _physics_process(delta):
	deal_with_damage()

func deal_with_damage():
	if player_inattack_zone:
		if Input.is_action_just_pressed("interaction"):
			Autoscript.score += 5
			$close_timer.start()
				
func _on_chest_zone_body_entered(body):
	if body.has_method("player"):
		player_inattack_zone = true
		if is_open == false:
			$AnimatedSprite2D.play("open")
			is_open = true


func _on_chest_zone_body_exited(body):
	if body.has_method("player"):
		player_inattack_zone = false
		if is_open == true:
			$AnimatedSprite2D.play("close")
			is_open = false


func _on_close_timer_timeout():
	self.queue_free()
