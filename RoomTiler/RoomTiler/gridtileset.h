#ifndef GRIDTILESET_H
#define GRIDTILESET_H

#include <QWidget>

class QMouseEvent;

class GridOfTilesets;

class GridTileset : public QWidget
{
    Q_OBJECT
public:
    explicit GridTileset(QWidget *parent = nullptr, QString path = "");

    QPixmap tileset;
    QString name;
    bool choosen;
    GridOfTilesets* grid;

protected:
    void paintEvent(QPaintEvent *event) override;
    void mousePressEvent(QMouseEvent *event) override;

signals:

public slots:
};

#endif // GRIDTILESET_H
