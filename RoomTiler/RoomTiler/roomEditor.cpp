#include "roomeditor.h"
#include <QPainter>
#include <qmath.h>
#include <QScrollArea>
#include <QScrollBar>
#include <QMouseEvent>
#include <QDebug>

RoomEditor::RoomEditor(QWidget *parent) :
    QWidget(parent),
    // CELL SIZE
    grw(64),
    grh(64),
    // SCALE AND OFFSET
    dxoff(0),
    dyoff(0),
    scale(1.f)
{
    gray.setStyle(Qt::BrushStyle::SolidPattern);
    gray.setColor(QColor::fromRgb(191, 191, 191));

    white.setStyle(Qt::BrushStyle::SolidPattern);
    white.setColor(QColor::fromRgb(255, 255, 255));

    repaint();

    // set initial width
    //room.append(Layer(this, 100000); // floor
    //room.append(Layer(this, 99999); // carpet
    setRoomWidth(12, 12);
}

void RoomEditor::paintEvent(QPaintEvent *event)
{
    QPainter painter(this);

    painter.setPen(Qt::NoPen);
    painter.save();
    int aw = area->viewport()->contentsRect().width(),
        ah = area->viewport()->contentsRect().height();
    if (wReal < aw)
        painter.translate(qAbs(aw - wReal) / 2, 0.f);
    if (hReal < ah)
        painter.translate(0.f, qAbs(ah - hReal) / 2);

    float sc = grw * scale;
    for (int x = 0, ww = qCeil(wReal / grw); x < ww; ++x)
    {
        for (int y = 0, hh = qCeil(hReal / grh); y < hh; ++y)
        {
            painter.setBrush((((x + y) & 1) ? gray : white));
            painter.drawRect(QRect(QPoint(x * sc - dxoff, y * sc - dyoff),
                QSize(sc, sc)));
        }
    }
    painter.restore();

    // draw the room
}

void RoomEditor::setRoomWidth(int w, int h)
{
    int currx = wReal / grw,
        curry = hReal / grh;
    wTile = w;
    hTile = h;
    wReal = w * grw;
    hReal = h * grh;

    resize(wReal, hReal);
    setMinimumSize(wReal, hReal);
}

void RoomEditor::adjustScrollBar(QScrollBar *scrollBar, float factor)
{
    scrollBar->setValue(int(factor * scrollBar->value()
                            + ((factor - 1) * scrollBar->pageStep()/2)));
}

void RoomEditor::mouseMoveEvent(QMouseEvent *event)
{

}

void RoomEditor::mousePressEvent(QMouseEvent *event)
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

void RoomEditor::mouseReleaseEvent(QMouseEvent *event)
{

}
