#include "mainwindow.h"
#include "ui_mainwindow.h"

#include <QSplitter>
#include <QScrollArea>
#include "roomeditor.h"
#include <QFileDialog>
#include <QGridLayout>
#include "gridtileset.h"
#include <qmath.h>
#include "gridoftilesets.h"
#include "tileset.h"

MainWindow::MainWindow(QWidget *parent) :
    QMainWindow(parent),
    ui(new Ui::MainWindow),
    roomEditor(nullptr)
{
    ui->setupUi(this);

    // set default size to splitter
    splitterRoomAndSplitter = ui->splitterRoomAndSplitter;

    QList<int> splitterSizes;
    int splitterW = splitterRoomAndSplitter->width(),
        splitterWPart = (splitterW / 4);
    splitterSizes << splitterWPart * 3
        << splitterWPart * 1;
    splitterRoomAndSplitter->setSizes(splitterSizes);

    splitterListAndTileset = ui->splitterListAndTileset;
    splitterSizes.clear();
    int splitterH = splitterListAndTileset->height(),
        splitterHPart = splitterH / 2;
    splitterSizes << splitterHPart << splitterHPart;
    splitterListAndTileset->setSizes(splitterSizes);



    roomEditorScrollArea = ui->roomEditorScrollArea;
    roomEditorScrollArea->setWidgetResizable(true);
    roomEditorScrollArea->setHorizontalScrollBarPolicy(Qt::ScrollBarAsNeeded);
    roomEditorScrollArea->setVerticalScrollBarPolicy(Qt::ScrollBarAsNeeded);
    // add the room drawer
    roomEditor = new RoomEditor(this);
    roomEditor->area = roomEditorScrollArea;
    roomEditorScrollArea->setWidget(roomEditor);

    //setCentralWidget(roomEditorScrollArea);
    gridTilesets = new GridOfTilesets(this, 5);
    ui->tilesGridLayout->addLayout(gridTilesets);

    tilesetEditorScrollArea = ui->tilesetEditorScrollArea;
    tilesetEditorScrollArea->setWidgetResizable(true);
    tilesetEditorScrollArea->setHorizontalScrollBarPolicy(Qt::ScrollBarAsNeeded);
    tilesetEditorScrollArea->setVerticalScrollBarPolicy(Qt::ScrollBarAsNeeded);
    // add the tileset editor
    tilesetEditor = new Tileset(this);
    tilesetEditor->area = tilesetEditorScrollArea;
    tilesetEditorScrollArea->setWidget(tilesetEditor);
    // connects
    connect(gridTilesets, &GridOfTilesets::tilesetChanged,
            tilesetEditor, &Tileset::tilesetNew);

}

MainWindow::~MainWindow()
{
    delete ui;
}

void MainWindow::on_buttonLoadTileset_clicked()
{
    QString path = QFileDialog::getOpenFileName(
                this,
                "Загрузить тайлсет",
                QDir::currentPath(),
                "HIGH QUALITY TILESET (*.png)");
    if (!path.isNull())
    {
        loadNewTileset(path);
    }
}

void MainWindow::loadNewTileset(QString path)
{
    GridTileset* gt = new GridTileset(this, path);
    gridTilesets->addWidget(gt);
}

void MainWindow::on_sbTileWidth_valueChanged(int arg1)
{
    tilesetEditor->setTileWidth(arg1);
}

void MainWindow::on_sbTileHeight_valueChanged(int arg1)
{
    tilesetEditor->setTileHeight(arg1);
}

void MainWindow::on_sbXoffset_valueChanged(int arg1)
{
    tilesetEditor->setXoffset(arg1);
}

void MainWindow::on_sbYoffset_valueChanged(int arg1)
{
    tilesetEditor->setYoffset(arg1);
}
