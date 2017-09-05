#ifndef TILESET_H
#define TILESET_H

#include <QWidget>

class GridTileset;
class QScrollArea;
class QScrollBar;
class QMouseEvent;

class Tileset : public QWidget
{
    Q_OBJECT
public:
    explicit Tileset(QWidget *parent = nullptr);

    void setTileWidth(int tw);
    void setTileHeight(int th);
    void setXoffset(int xoff);
    void setYoffset(int yoff);

    void updateParams(int tilew, int tileh, int xoff, int yoff);

    // VARIABLES
    QScrollArea* area;
    QPoint currentTile;

signals:

protected:
    void paintEvent(QPaintEvent *event) override;
    void mousePressEvent(QMouseEvent *event) override;

public slots:
    void tilesetNew(GridTileset* newTileset);

private:
    int wTile;
    int hTile;
    int wReal;
    int hReal;

    int grw; // width of grid
    int grh; // height of grid
    int xoffset;
    int yoffset;

    QBrush gray;
    QBrush white;

    // scale and offset
    qreal dxoff;
    qreal dyoff;
    float scale;

    // tileset image
    QPixmap image;
};

#endif // TILESET_H
