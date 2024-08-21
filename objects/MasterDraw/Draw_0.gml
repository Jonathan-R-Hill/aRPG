if (ds_exists(depthGrid, ds_type_grid)) 
{
    ds_grid_sort(depthGrid, 1, true); // Sort by y-coordinate (ascending - true)

    for (var i = 0; i < ds_grid_height(depthGrid); i++) 
    {
        var instanceID = depthGrid[# 0, i];

        if (instance_exists(instanceID)) {
            with (instanceID) {
                draw_self();
            }
        }
    }

    ds_grid_destroy(depthGrid); // Clean up the grid after drawing
    depthGrid = 0; // Reset the grid reference
}
