function get_room_num() {
    var r_name = room_get_name(room);
    
    // 1. Handle your specific rm_F1 outlier
    if (r_name == "rm_F1") return 1;
	if (r_name == "Room_end") return -1;

    // 2. Remove all non-numeric characters (leaving only the digits)
    // We replace "F", "_Boss", and "_Final" with empty strings
    var digits = string_digits(r_name); 
    
    // 3. Convert the remaining string of digits to a real number
    if (digits != "") {
        return real(digits);
    }
	
    return 0; // Fallback if no number is found
}