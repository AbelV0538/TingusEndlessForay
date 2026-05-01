direction = point_direction(self.x, self.y, obj_player.x, obj_player.y)
if direction >= 0 && direction <= 180 { instance_destroy(self) }
direction = clamp(direction, 181, 359)
speed = 8