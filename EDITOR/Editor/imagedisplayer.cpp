#include "imagedisplayer.h"
#include <QRect>
#include <QDebug>
#include <QWheelEvent>
#include <QtMath>

ImageDisplayer::ImageDisplayer(QWidget *parent) :
    QWidget(parent),
    grw(10),
    path(""),
    dxoff(0),
    dyoff(0),
    scr(false)
{
    outlinePen.setWidth(4);
    outlinePen.setColor(QColor::fromRgb(240, 10, 10));

    gray.setStyle(Qt::BrushStyle::SolidPattern);
    gray.setColor(QColor::fromRgb(191, 191, 191));

    white.setStyle(Qt::BrushStyle::SolidPattern);
    white.setColor(QColor::fromRgb(255, 255, 255));

    mtg = mapToGlobal(QPoint(width() / 2, height() / 2));
    dxoff = mtg.x();
    dyoff = mtg.y();

}

void ImageDisplayer::resetAll()
{
    path = "";
    repaint();
    dxoff = 0;
    dyoff = 0;
}

void ImageDisplayer::setPNG(QString str)
{
    resetAll();
    path = str;
    if (path != "")
    {
        if (image.load(path))
            repaint();
        //qDebug() << "path: " << path;
    }
}

void ImageDisplayer::paintEvent(QPaintEvent *event)
{
    QPainter painter(this);

    // inner grid
    painter.setPen(Qt::PenStyle::NoPen);
    painter.save();
    for (int x = 0, ww = width() / grw; x < ww; x++)
    {
        for(int y = 0, hh = height() / grw; y < hh; y++)
        {
            painter.setBrush((((x + y) & 1) ? gray : white));
            painter.drawRect(QRect(x * grw, y * grw,
                    (x + 1) * grw, (y + 1) * grw));
        }
    }
    painter.restore();

    painter.save();
    //QTransform tr;
    //tr.scale(scf, scf);
    //painter.setTransform(tr);
    if (path != "")
    {
        // draw actual image
        int xoff = (width() - image.width()) / 2 ,
            yoff = (height() - image.height()) / 2;
        painter.drawPixmap(xoff - dxoff, yoff - dyoff, image);
    }
    painter.restore();

    painter.save();
    QRect rect(0, 0, width(), height());
    painter.setPen(outlinePen);
    painter.drawRect(rect);
    painter.restore();
}

void ImageDisplayer::mousePressEvent(QMouseEvent *event)
{
    switch (event->button())
    {
    case Qt::MiddleButton:
        scr = true;
        event->accept();
        return;
        break;
    }
    event->ignore();
}

void ImageDisplayer::mouseReleaseEvent(QMouseEvent *event)
{
    switch (event->button())
    {
    case Qt::MiddleButton:
        scr = false;
        event->accept();
        return;
        break;
    }
    event->ignore();
}

void ImageDisplayer::mouseMoveEvent(QMouseEvent *event)
{
    if (scr)
    {
        qDebug() << "mtgx: " << mtg.x();
        qDebug() << "evx: " << event->globalPos().x();
        //qDebug() << "Dy: " << mtg.y() - event->globalPos().y();
        dxoff = mtg.x() - event->globalPos().x();
        dyoff = mtg.y() - event->globalPos().y();
        event->accept();
        return;
    }
    event->ignore();
}

void ImageDisplayer::moveEvent(QMoveEvent *event)
{
    mtg = mapToGlobal(QPoint(width() / 2, height() / 2));
    qDebug() << mtg.x() << " " << mtg.y();
    qDebug() << "------------------------------";
    event->accept();
}

void ImageDisplayer::resizeEvent(QResizeEvent *event)
{
    mtg = mapToGlobal(QPoint(width() / 2, height() / 2));
    dxoff = mtg.x();
    dyoff = mtg.y();
    qDebug() << mtg.x() << " " << mtg.y();
    qDebug() << "------------------------------";
    event->accept();
}

QPixmap& ImageDisplayer::getPNGImage()
{
    return image;
}
const QString& ImageDisplayer::getPNGPath()
{
    return path;
}
