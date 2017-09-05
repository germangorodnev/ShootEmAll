#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>

class QSplitter;
class QScrollArea;
class RoomEditor;
class GridOfTilesets;
class Tileset;

namespace Ui {
    class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

    void loadNewTileset(QString path);

    RoomEditor* roomEditor;

private slots:
    void on_buttonLoadTileset_clicked();

    void on_sbTileWidth_valueChanged(int arg1);

    void on_sbTileHeight_valueChanged(int arg1);

    void on_sbXoffset_valueChanged(int arg1);

    void on_sbYoffset_valueChanged(int arg1);

private:
    Ui::MainWindow *ui;

    // items
    QSplitter* splitterRoomAndSplitter;
    QSplitter* splitterListAndTileset;

    QScrollArea* roomEditorScrollArea;
    QScrollArea* tilesetEditorScrollArea;
    GridOfTilesets* gridTilesets;

    Tileset* tilesetEditor;


};

#endif // MAINWINDOW_H
