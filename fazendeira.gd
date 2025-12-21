extends CharacterBody2D


const SPEED = 100.0
const JUMP_VELOCITY = -400.0


func _physics_process(delta: float) -> void:
	var direction = Input.get_vector("esqueda","direita","cima","baixo")


	if Input.is_action_pressed("direita") || Input.is_action_pressed("esqueda"):
			direction.y = 0   


	elif  Input.is_action_pressed("cima") || Input.is_action_pressed("baixo"):
			direction.x = 0
	else:
		direction = Vector2.ZERO
		$AnimatedSprite2D.play("parado")
		
	direction = direction.normalized()
	
	velocity = (direction * SPEED)
	move_and_slide()    





	if Input.is_action_just_pressed("ui_left"):
		$AnimatedSprite2D.play("andando_tras")
	if Input.is_action_just_pressed("ui_right"):
		$AnimatedSprite2D.play("andando_frente")
	if Input.is_action_just_pressed("ui_up"):
		$AnimatedSprite2D.play("andando_cima")
	if Input.is_action_just_pressed("ui_down"):
		$AnimatedSprite2D.play("andando_baixo")




func _on_tomate_body_entered(body: Node2D) -> void:
	pass # Replace with function body.


func _on_tomate_body_exited(body: Node2D) -> void:
	pass # Replace with function body.
