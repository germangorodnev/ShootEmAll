#ifndef MAINWINDOW_H
#define MAINWINDOW_H

#include <QMainWindow>
#include <QLineEdit>
#include <QTextEdit>
#include <QSpinBox>
#include <QRadioButton>
#include <QPushButton>

class ImageDisplayer;

namespace Ui {
    class MainWindow;
}

class MainWindow : public QMainWindow
{
    Q_OBJECT

public:
    explicit MainWindow(QWidget *parent = 0);
    ~MainWindow();

private slots:
    void on_pushButtonPNGLoad_clicked();
    void on_pushButtonPNGShootLoad_clicked();
    void on_pushButtonPNGProjectileLoad_clicked();
    void on_pushButtonPNGAdditionalLoad_clicked();
    void on_pushButtonPNGAdditionalLoad_2_clicked();

    void on_weapSave_triggered();

    void on_weapExport_triggered();

    void on_weapLoad_triggered();

    void on_weapNew_triggered();

private:
    // METHODS
    void PNGclick(QString& change, ImageDisplayer* displayer);

    // FIELDS
    Ui::MainWindow *ui;
    QString fpath;
    // Line Edits
    QLineEdit* weapName;
    QLineEdit* weapDesc;
    QLineEdit* projType;
    // Text Edits
    QTextEdit* weapPrincipe;
    // Spin Boxes
    QSpinBox* dmgMin;
    QSpinBox* dmgMax;
    QSpinBox* critDmgMin;
    QSpinBox* critDmgMax;
    QSpinBox* projAmount;
    QSpinBox* clipSize;
    QSpinBox* ammoPerShoot;
    QSpinBox* maxScatter;
    // Double Spin Boxes
    QDoubleSpinBox* shootCooldown;
    QDoubleSpinBox* reloadTime;
    QDoubleSpinBox* nextDmgCooldown;
    // Radio Buttons
    QRadioButton* canCrit;
    // Push Buttons
    QPushButton* pngload;
    QPushButton* pngShootload;
    QPushButton* pngProjload;

    // Image Pathes
    QString png;
    QString pngShoot;
    QString pngProj;
    QString pngAdd;
    QString pngAdd2;

    // Image Displayers
    ImageDisplayer* idPNG;
    ImageDisplayer* idPNGShoot;
    ImageDisplayer* idPNGProj;
    ImageDisplayer* idPNGAdd;
    ImageDisplayer* idPNGAdd2;

    // newwin
    MainWindow* newwin;
};

#endif // MAINWINDOW_H
