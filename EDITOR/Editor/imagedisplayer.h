#ifndef IMAGEDISPLAYER_H
#define IMAGEDISPLAYER_H

#include <QWidget>
#include <QPainter>

class QEvent;

class ImageDisplayer : public QWidget
{
    Q_OBJECT
public:
    explicit ImageDisplayer(QWidget *parent = 0);
    void resetAll();
    void setPNG(QString str);
    const QString& getPNGPath();
    QPixmap& getPNGImage();

private:
    QString path;
    QPixmap image;

    QPen outlinePen;
    QBrush gray;
    QBrush white;
    int grw;

    QPoint mtg;
    bool scr;
    int dxoff;
    int dyoff;

protected:
    void paintEvent(QPaintEvent *event) override;
    void mousePressEvent(QMouseEvent *event) override;
    void mouseReleaseEvent(QMouseEvent *event) override;
    void mouseMoveEvent(QMouseEvent *event) override;
    void moveEvent(QMoveEvent *event) override;
    void resizeEvent(QResizeEvent *event) override;

signals:

public slots:
};

#endif // IMAGEDISPLAYER_H
