instance_destroy(other)

instance_create_layer(x-8,y-8,"Instances",obj_coin)
instance_create_layer(x+8,y-8,"Instances",obj_coin)
instance_create_layer(x,y,"Instances",obj_coin)
instance_create_layer(x-8,y+8,"Instances",obj_coin)
instance_create_layer(x+8,y+8,"Instances",obj_coin)

instance_destroy(self)