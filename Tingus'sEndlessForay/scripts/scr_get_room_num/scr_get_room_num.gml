function get_room_num(){
	switch (room_get_name(room))
	{
	case "rm_f1":
		return 1;
	
	case "F2":
	return 2;
	
	case "F3_Boss":
	return 3;
	
	case "F4":
	return 4;
	
	case "F5":
	return 5;
	
	case "F6_Boss":
	return 6;
	
	case "F7":
	return 7;
	
	case "F8":
	return 8;
	
	case "F9_Boss":
	return 9;
	
	case "F10":
	return 10;
	
	case "F11":
	return 11;
	
	case "F12_Boss":
	return 12;
	
	case "F13":
	return 13;
	
	case "F14":
	return 14;
	
	case "F15_Boss_Final":
	return 15;
	
	case "Room_end":
	return 16;
	
	default:
	return 0;
	}
}