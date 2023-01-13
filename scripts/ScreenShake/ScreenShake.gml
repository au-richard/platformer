/// @description ScreenShake(magnitude, frames)
/// @arg Magnitude sets strength of shake (radius in pixels)
/// @arg Frames sets length of shake in frames (60 = 1 second at 60fps)

with (oCamera) {
	if (argument0 > shake_remain) {
		shake_magnitude = argument0;
		shake_remain = argument0;
		shake_length = argument1;
	}
}