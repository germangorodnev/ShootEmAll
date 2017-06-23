#include "imagedisplayer.h"
#include <QRect>
#include <QDebug>

ImageDisplayer::ImageDisplayer(QWidget *parent) :
    QWidget(parent),
    grw(10),
    path("")
{
    outlinePen.setWidth(4);
    outlinePen.setColor(QColor::fromRgb(240, 10, 10));

    gray.setStyle(Qt::BrushStyle::SolidPattern);
    gray.setColor(QColor::fromRgb(191, 191, 191));

    white.setStyle(Qt::BrushStyle::SolidPattern);
    white.setColor(QColor::fromRgb(255, 255, 255));
}

void ImageDisplayer::resetAll()
{
    path = "";
    repaint();
}

void ImageDisplayer::setPNG(QString str)
{
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
    if (path != "")
    {
        // draw actual image
        int xoff = (width() - image.width()) / 2,
            yoff = (height() - image.height()) / 2;
        painter.drawPixmap(xoff, yoff, image.width(), image.height(), image);
    }
    painter.restore();

    painter.save();
    QRect rect(0, 0, width(), height());
    painter.setPen(outlinePen);
    painter.drawRect(rect);
    painter.restore();
}


QPixmap& ImageDisplayer::getPNGImage()
{
    return image;
}
const QString& ImageDisplayer::getPNGPath()
{
    return path;
}
