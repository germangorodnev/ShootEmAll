#include "gridoftilesets.h"
#include <QWidget>
#include "gridtileset.h"
#include "mainwindow.h"

GridOfTilesets::GridOfTilesets(QWidget *parent, int maxInRow):
    QGridLayout(parent),
    maxColsCount(maxInRow)
{
}

GridOfTilesets::~GridOfTilesets()
{

}

void GridOfTilesets::addWidget(QWidget *w)
{
    int current_row = 0;
    int current_column = 0;

    while(itemAtPosition(current_row, current_column) != 0)
    {
        if(current_column == (maxColsCount - 1))
        {
            current_column = 0;
            ++current_row;
        }
        else
        {
            ++current_column;
        }
    }

    QGridLayout::addWidget(w, current_row, current_column, Qt::AlignCenter);
    GridTileset* tls = qobject_cast<GridTileset*>(w);
    tls->grid = this;
    tilesets.append(tls);
}


void GridOfTilesets::setActiveTileset(GridTileset *tileset)
{
    // reset
    for (auto tls : tilesets)
    {
         tls->choosen = (tls == tileset) ? true : false;
         tls->repaint();
    }
    emit tilesetChanged(tileset);
}

