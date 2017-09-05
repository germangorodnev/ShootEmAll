#ifndef LAYER_H
#define LAYER_H

#include <QString>
#include "tile.h"
#include <QVector>

class RoomEditor;

class Layer
{
public:
    Layer(RoomEditor* par, int depth, QString name);
    ~Layer();

private:
    RoomEditor* parent;

    QVector<Tile> layer;
    int depth;
    QString name;
};

#endif // LAYER_H
