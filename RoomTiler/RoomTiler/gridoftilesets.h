#ifndef GRIDOFTILESETS_H
#define GRIDOFTILESETS_H

#include <QGridLayout>


class GridTileset;

class GridOfTilesets : public QGridLayout
{
    Q_OBJECT
public:
    GridOfTilesets(QWidget* parent, int maxInRow);
    ~GridOfTilesets();

    void addWidget(QWidget *w);
    void setActiveTileset(GridTileset* tileset);

private:
    int maxColsCount;
    // list of items
    QList<GridTileset*> tilesets;

signals:
    void tilesetChanged(GridTileset* newtileset);
};

#endif // GRIDOFTILESETS_H
