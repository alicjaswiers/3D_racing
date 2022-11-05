extends VehicleBody

var max_rpm = 1000
var max_torque = 200
var gripR

func _physics_process(delta):
	gripR = $back_right_wheel.get_skidinfo()
	steering = lerp(steering, Input.get_axis("right","left") * 0.4, 5 * delta)
	var acceleration = Input.get_axis("back", "forward")
	var rpm = $back_left_wheel.get_rpm()
	$back_left_wheel.engine_force = acceleration * max_torque * ( 1 - rpm / max_rpm)
	rpm = $back_right_wheel.get_rpm()
	$back_right_wheel.engine_force = acceleration * max_torque * ( 1 - rpm / max_rpm)
	#if gripR < 0.3:
	#	$smoke.emitting = true
	#	$smoke2.emitting = true
	#else:
	#	$smoke.emitting = false
	#	$smoke2.emitting = false
