#include "layer.h"
#include "roomeditor.h"

Layer::Layer(RoomEditor *par, int depth, QString name):
    parent(par),
    depth(depth),
    name(name)
{

}

Layer::~Layer()
{

}
