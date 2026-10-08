draw_self();

if (should_show_inventory) {
	
	var len = ds_list_size(inventory_items);
	for (var i = 0; i  < len; i++) {
		var key = ds_list_find_value(inventory_items, i);
		var value = ds_map_find_value(inventory, key);
		
		var cam = camera_get_active();
		var camX = camera_get_view_x(cam);
		var camY = camera_get_view_y(cam);
		
		
		var GRID = 32;
		draw_sprite(object_get_sprite(key), 0, camX , camY + (i * GRID));
		draw_text(camX + GRID, camY + (i * GRID), ": " + string(value));
		
	}
}