#ifndef IMAGEDISPLAYER_H
#define IMAGEDISPLAYER_H

#include <QWidget>
#include <QPainter>

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

protected:
    void paintEvent(QPaintEvent *event) override;

signals:

public slots:
};

#endif // IMAGEDISPLAYER_H
