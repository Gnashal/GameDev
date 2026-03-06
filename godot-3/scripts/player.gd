extends RigidBody3D

var mouse_sensitivity = 0.001
var twist_input = 0.0
var pitch_input = 0.0

@export var move_force := 500.0
@export var jump_impulse := 8.0
@export var max_speed := 2.0
@export var stop_speed := 20.0

@onready var twist_pivot = $TwistPivot
@onready var pitch_pivot = $TwistPivot/PitchPivot

func _ready() -> void:
	Input.set_mouse_mode(Input.MOUSE_MODE_CAPTURED)
	gravity_scale = 2.0

func _physics_process(delta: float) -> void:
	var input_dir = Vector3.ZERO
	input_dir.x = Input.get_axis("right", "left")
	input_dir.z = Input.get_axis("forward", "backward")

	input_dir = input_dir.normalized()

	# === MOVEMENT ===
	if input_dir != Vector3.ZERO:
		var force = twist_pivot.basis * input_dir * move_force
		apply_central_force(force)

		# Clamp horizontal speed
		var horizontal_velocity = linear_velocity
		horizontal_velocity.y = 0
		if horizontal_velocity.length() > max_speed:
			horizontal_velocity = horizontal_velocity.normalized() * max_speed
			linear_velocity.x = horizontal_velocity.x
			linear_velocity.z = horizontal_velocity.z
	else:
		# Hard stop when no input (removes skating)
		linear_velocity.x = move_toward(linear_velocity.x, 0, stop_speed * delta)
		linear_velocity.z = move_toward(linear_velocity.z, 0, stop_speed * delta)

	# === JUMP ===
	if Input.is_action_just_pressed("jump"):
		# Basic ground check (simple version)
		if abs(linear_velocity.y) < 0.05:
			apply_central_impulse(Vector3.UP * jump_impulse)

	# === MOUSE LOOK ===
	twist_pivot.rotate_y(twist_input)
	pitch_pivot.rotate_x(pitch_input)
	pitch_pivot.rotation.x = clamp(
		pitch_pivot.rotation.x,
		deg_to_rad(-30),
		deg_to_rad(30)
	)

	twist_input = 0.0
	pitch_input = 0.0


func _unhandled_input(event: InputEvent) -> void:
	if event is InputEventMouseMotion:
		if Input.get_mouse_mode() == Input.MOUSE_MODE_CAPTURED:
			twist_input = -event.relative.x * mouse_sensitivity
			pitch_input = -event.relative.y * mouse_sensitivity

	if Input.is_action_just_pressed("ui_cancel"):
		Input.set_mouse_mode(Input.MOUSE_MODE_VISIBLE)
