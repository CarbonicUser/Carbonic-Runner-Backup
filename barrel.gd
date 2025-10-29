extends RigidBody2D

func _on_body_entered(body: Node2D) -> void:
	#var t = Timer
	#add_child(t)
	print(body)
	if body is Player:
		if body.invincible: return
		DamageManager.apply_damage(body, 1, self, Vector2(-200,0))
