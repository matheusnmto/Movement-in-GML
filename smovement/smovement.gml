
function move(argument0, argument1){
	
	var speed_ = argument0;
	var bounce_ = argument1;

	if place_meeting(x+speed_[h_], y, oColision) {
		while !place_meeting(x+sign(speed_[h_]), y, oColision) {
			x += sign(speed_[h_]);
		}
		if bounce_ > 0 {
			speed_[@ h_] = -speed_[@ h_]*bounce_;
		} else {
			speed_[@ h_] = 0;
		}
	}
	x += speed_[h_];

	if place_meeting(x, y+speed_[v_], oColision) {
		while !place_meeting(x, y+sign(speed_[v_]), oColision) {
			y += sign(speed_[v_]);
		}
		if bounce_ > 0 {
			speed_[@ v_] = -speed_[@ v_]*bounce_;
		} else {
			speed_[@ v_] = 0;
		}
	}
	y += speed_[v_];

}
