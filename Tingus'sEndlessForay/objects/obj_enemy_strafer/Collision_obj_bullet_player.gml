dropchance = irandom_range(1, 5)

//1 in 5 chance to drop medkit instead of coins
if dropchance == 5 {
	instance_create_layer(x,y,"Instances",obj_medkit)
	instance_destroy(other)
	instance_destroy(self)
} else {
	instance_create_layer(x,y-8,"Instances",obj_coin)
	instance_create_layer(x-8,y+8,"Instances",obj_coin)
	instance_create_layer(x+8,y+8,"Instances",obj_coin)
	instance_destroy(other)
	instance_destroy(self)
}