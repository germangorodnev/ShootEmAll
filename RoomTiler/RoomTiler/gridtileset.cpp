#include "gridtileset.h"
#include <QPainter>
#include "gridoftilesets.h"
#include <QMouseEvent>

GridTileset::GridTileset(QWidget *parent, QString path) : QWidget(parent),
    choosen(false)
{
    int w = 100, h = 100;
    setMinimumSize(w, h);
    setMaximumSize(w, h);
    resize(w, h);

    if (tileset.load(path))
    {
        name = path.mid(path.lastIndexOf("/"));
        repaint();
    }
}

void GridTileset::paintEvent(QPaintEvent *event)
{
    QPainter painter(this);

    painter.setPen(Qt::NoPen);
    painter.save();
    painter.setBrush(
        (choosen) ? QBrush(QColor(150, 0, 0)) :
                    QBrush(QColor(150, 150, 150)));
    painter.drawRect(QRect(0, 0, width(), height()));
    painter.restore();
    painter.drawPixmap(QRect(0, 0, width(), height()),
                        tileset, QRect(tileset.rect()));
}

void GridTileset::mousePressEvent(QMouseEvent *event)
{
    // set this as active
    if (event->button() == Qt::MouseButton::LeftButton)
    {
        grid->setActiveTileset(this);
        event->accept();
    }
    else
        event->ignore();
}
