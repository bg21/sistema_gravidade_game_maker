/// @description Insert description here
// You can write your code in this editor

verticalVelocidade += gravidade;
if(!place_free(x, y+1) && keyboard_check(vk_up)){
	verticalVelocidade =-8;
	jump = false;
}

if(!place_free(x, y + verticalVelocidade)){
	signVsp = 0;
	if(verticalVelocidade >= 0){
		signVsp = 1;
	}else{
		signVsp = -1;
	}
	while(place_free(x, y+signVsp)){
		y = y+signVsp;
	}
	verticalVelocidade = 0;
}

y = y + verticalVelocidade;


if(keyboard_check(vk_right) && place_free(x+4, y)){
	x += 4;
}else if(keyboard_check(vk_left) && place_free(x-4, y)){
	x -= 4;
}

