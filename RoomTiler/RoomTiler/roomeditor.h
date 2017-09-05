#ifndef ROOMEDITOR_H
#define ROOMEDITOR_H

#include <QWidget>
class QScrollArea;
class QScrollBar;
// layers
#include "layer.h"
#include <QVector>

class RoomEditor : public QWidget
{
    Q_OBJECT
public:
    explicit RoomEditor(QWidget *parent = nullptr);

    void setRoomWidth(int w, int h);
    void adjustScrollBar(QScrollBar *scrollBar, float factor);

    // VARIABLES
    QScrollArea* area;

protected:
    void paintEvent(QPaintEvent *event) override;
    void mousePressEvent(QMouseEvent *event) override;
    void mouseReleaseEvent(QMouseEvent *event) override;
    void mouseMoveEvent(QMouseEvent *event) override;

private:
    int wTile;
    int hTile;
    int wReal;
    int hReal;

    int grw; // width of grid
    int grh;
    QBrush gray;
    QBrush white;

    // scale and offset
    int dxoff;
    int dyoff;
    float scale;

    // the room
    QVector<Layer> room;

signals:

public slots:
};

#endif // ROOMEDITOR_H
