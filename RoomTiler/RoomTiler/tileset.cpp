#include "tileset.h"
#include "gridtileset.h"
#include <QPainter>
#include <qmath.h>
#include <QScrollArea>
#include <QScrollBar>
#include <QDebug>
#include <QMouseEvent>

Tileset::Tileset(QWidget *parent) :
    QWidget(parent),
    // CELL SIZE
    grw(64),
    grh(64),
    xoffset(0),
    yoffset(0),
    // SCALE AND OFFSET
    dxoff(0.f),
    dyoff(0.f),
    scale(1.f),
    currentTile(-1, -1)
{
    gray.setStyle(Qt::BrushStyle::SolidPattern);
    gray.setColor(QColor::fromRgb(191, 191, 191));

    white.setStyle(Qt::BrushStyle::SolidPattern);
    white.setColor(QColor::fromRgb(255, 255, 255));

    repaint();
}

void Tileset::tilesetNew(GridTileset *newTileset)
{
    image = newTileset->tileset;

    wReal = image.width();
    hReal = image.height();
    resize(wReal, hReal);
    setMinimumSize(wReal, hReal);
    currentTile.setX(-1); currentTile.setY(-1);
    repaint();
}

void Tileset::paintEvent(QPaintEvent *event)
{
    QPainter painter(this);

    painter.save();
    int aw = area->viewport()->contentsRect().width(),
        ah = area->viewport()->contentsRect().height();
    dxoff = dyoff = 0.f;
    if (wReal < aw)
    {
        dxoff = qAbs(aw - wReal) / 2.f;
        painter.translate(dxoff, 0.f);
    }
    if (hReal < ah)
    {
        dyoff = qAbs(ah - hReal) / 2.f;
        painter.translate(0.f, dyoff);
    }

    painter.drawPixmap(0, 0, image);

    painter.setPen(QPen(QColor(200, 10, 10)));
    painter.translate(xoffset, yoffset);
    // lines
    for (int x = 0, ww = qCeil(wReal / grw); x <= ww; ++x)
    {
        painter.drawLine(x * grw, 0, x * grw, hReal);
        for (int y = 0, hh = qCeil(hReal / grh); y <= hh; ++y)
        {
            painter.drawLine(0, y * grh, wReal, y * grh);
        }
    }
    painter.restore();

    if (currentTile.x() != -1 && currentTile.y() != -1)
    {
        painter.save();
        // draw white rect
        QPen pen(Qt::NoBrush, 2);
        pen.setColor(QColor(255, 255, 255));
        painter.setPen(pen);
        painter.drawRect(QRect(currentTile + QPoint(dxoff, dyoff) + QPoint(xoffset, yoffset),
                               QSize(grw, grh)));
        painter.restore();
        painter.drawPixmap(QRect(0, 0, grw, grh),
                           image, QRect(currentTile, QSize(grw, grh)));
    }
}

void Tileset::mousePressEvent(QMouseEvent *event)
{
    if (event->button() == Qt::LeftButton)
    {
        // get the position
        QPoint localpos(event->localPos().x(), event->localPos().y());
        //qDebug() << localpos;
        localpos.setX(qFloor((localpos.x() - dxoff + xoffset) / grw) * grw);
        localpos.setY(qFloor((localpos.y() - dyoff + yoffset) / grh) * grh);
        // set as current tile
        qDebug() << localpos;
        currentTile = localpos;
        repaint();
        event->accept();
    }
    else
        event->ignore();
}

void Tileset::setTileWidth(int tw)
{
    updateParams(tw, grh, xoffset, yoffset);
}

void Tileset::setTileHeight(int th)
{
    updateParams(grw, th, xoffset, yoffset);
}

void Tileset::setXoffset(int xoff)
{
    updateParams(grw, grh, xoff, yoffset);
}

void Tileset::setYoffset(int yoff)
{
    updateParams(grw, grh, xoffset, yoff);
}

void Tileset::updateParams(int tilew, int tileh, int xoff, int yoff)
{
    grw = tilew;
    grh = tileh;
    xoffset = xoff;
    yoffset = yoff;

    repaint();
}
