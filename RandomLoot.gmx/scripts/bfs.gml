///bfs(int cellPos)
var graph = oLevel.cells,
    used = oLevel.cellsVis,
    ind = argument[0];

var rp = ds_list_create();
     
// Create a queue for BFS
var queue = ds_list_create();

// Mark the current node as visited and enqueue it
used[ind] = 1;
ds_list_add(queue, ind);

while(!ds_list_empty(queue))
{
    // Dequeue a vertex from queue and print it
    ind = queue[| 0];
    ds_list_delete(queue, 0);
    
    ds_list_add(rp, graph[| ind].id);

    // Get all adjacent vertices of the dequeued vertex s
    // If a adjacent has not been visited, then mark it visited
    // and enqueue it
    for(var i = 0,
        ls = graph[| ind].connect,
        ic = ds_list_size(ls); i < ic; ++i)
    {
        var val = ls[| i];
        if(!used[val.number])
        {
            used[val.number] = true;
            ds_list_add(queue, val.number);
        }
    }
}

ds_list_destroy(queue);

return rp;
