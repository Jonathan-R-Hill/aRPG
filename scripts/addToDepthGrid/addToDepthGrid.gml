function addToDepthGrid() 
{
    // Check if depthGrid exists and create it if not
    if (!ds_exists(MasterDraw.depthGrid, ds_type_grid)) {
        MasterDraw.depthGrid = ds_grid_create(2, 1); // Create a 2-column grid with 1 row
    }

    var gridHeight = ds_grid_height(MasterDraw.depthGrid);
    ds_grid_resize(MasterDraw.depthGrid, 2, gridHeight + 1); // Add a new row

    MasterDraw.depthGrid[# 0, gridHeight] = id; // Store the instance ID
    MasterDraw.depthGrid[# 1, gridHeight] = y;  // Store the instance's y-coordinate
}
