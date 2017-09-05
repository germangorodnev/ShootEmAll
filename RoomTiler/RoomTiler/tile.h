#ifndef TILE_H
#define TILE_H

class GridTileset;

class Tile
{
public:
    Tile();
    ~Tile();

private:
    GridTileset* tileset;
};

#endif // TILE_H
