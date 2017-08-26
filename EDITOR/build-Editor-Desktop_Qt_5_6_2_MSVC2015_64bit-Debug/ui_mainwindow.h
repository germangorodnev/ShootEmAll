/********************************************************************************
** Form generated from reading UI file 'mainwindow.ui'
**
** Created by: Qt User Interface Compiler version 5.6.2
**
** WARNING! All changes made in this file will be lost when recompiling UI file!
********************************************************************************/

#ifndef UI_MAINWINDOW_H
#define UI_MAINWINDOW_H

#include <QtCore/QVariant>
#include <QtWidgets/QAction>
#include <QtWidgets/QApplication>
#include <QtWidgets/QButtonGroup>
#include <QtWidgets/QHBoxLayout>
#include <QtWidgets/QHeaderView>
#include <QtWidgets/QLabel>
#include <QtWidgets/QLineEdit>
#include <QtWidgets/QMainWindow>
#include <QtWidgets/QMenu>
#include <QtWidgets/QMenuBar>
#include <QtWidgets/QPushButton>
#include <QtWidgets/QRadioButton>
#include <QtWidgets/QSpinBox>
#include <QtWidgets/QTextEdit>
#include <QtWidgets/QWidget>

QT_BEGIN_NAMESPACE

class Ui_MainWindow
{
public:
    QAction *weapSave;
    QAction *weapExport;
    QAction *weapLoad;
    QAction *weapNew;
    QWidget *centralwidget;
    QLineEdit *lineWeaponName;
    QLineEdit *lineWeaponDescription;
    QLabel *label;
    QLabel *label_2;
    QLabel *label_3;
    QPushButton *pushButtonPNGLoad;
    QWidget *horizontalLayoutWidget;
    QHBoxLayout *zonePNG;
    QWidget *horizontalLayoutWidget_2;
    QHBoxLayout *zonePNGShoot;
    QPushButton *pushButtonPNGShootLoad;
    QLabel *label_4;
    QSpinBox *spinDmgMin;
    QLabel *label_5;
    QLabel *label_6;
    QSpinBox *spinDmgMax;
    QRadioButton *radioCrits;
    QTextEdit *lineWeaponPrincipe;
    QLabel *label_7;
    QSpinBox *spinCritDmgMin;
    QLabel *label_8;
    QSpinBox *spinCritDmgMax;
    QWidget *horizontalLayoutWidget_3;
    QHBoxLayout *zonePNGProj;
    QPushButton *pushButtonPNGProjectileLoad;
    QLabel *caption;
    QLineEdit *lineProjectileType;
    QLabel *label_10;
    QLabel *label_11;
    QSpinBox *spinShootCooldown;
    QSpinBox *spinReloadTime;
    QLabel *label_12;
    QLabel *label_13;
    QSpinBox *spinProjectileAmount;
    QSpinBox *spinClipSize;
    QLabel *label_14;
    QLabel *label_15;
    QSpinBox *spinAmmoPerShoot;
    QSpinBox *spinDamageCooldown;
    QLabel *label_16;
    QWidget *horizontalLayoutWidget_4;
    QHBoxLayout *zonePNGAdd;
    QPushButton *pushButtonPNGAdditionalLoad;
    QWidget *horizontalLayoutWidget_5;
    QHBoxLayout *zonePNGAdd2;
    QPushButton *pushButtonPNGAdditionalLoad_2;
    QLabel *label_17;
    QSpinBox *spinMaxScatter;
    QMenuBar *menubar;
    QMenu *menu;

    void setupUi(QMainWindow *MainWindow)
    {
        if (MainWindow->objectName().isEmpty())
            MainWindow->setObjectName(QStringLiteral("MainWindow"));
        MainWindow->resize(640, 487);
        MainWindow->setStyleSheet(QLatin1String("QLabel#caption {\n"
"	color: rgb(255, 85, 255);\n"
"	font: 16px Comic Sans MS;\n"
"}\n"
""));
        weapSave = new QAction(MainWindow);
        weapSave->setObjectName(QStringLiteral("weapSave"));
        weapExport = new QAction(MainWindow);
        weapExport->setObjectName(QStringLiteral("weapExport"));
        weapLoad = new QAction(MainWindow);
        weapLoad->setObjectName(QStringLiteral("weapLoad"));
        weapNew = new QAction(MainWindow);
        weapNew->setObjectName(QStringLiteral("weapNew"));
        centralwidget = new QWidget(MainWindow);
        centralwidget->setObjectName(QStringLiteral("centralwidget"));
        lineWeaponName = new QLineEdit(centralwidget);
        lineWeaponName->setObjectName(QStringLiteral("lineWeaponName"));
        lineWeaponName->setGeometry(QRect(10, 50, 301, 20));
        lineWeaponDescription = new QLineEdit(centralwidget);
        lineWeaponDescription->setObjectName(QStringLiteral("lineWeaponDescription"));
        lineWeaponDescription->setGeometry(QRect(10, 90, 301, 20));
        label = new QLabel(centralwidget);
        label->setObjectName(QStringLiteral("label"));
        label->setGeometry(QRect(10, 30, 101, 16));
        label_2 = new QLabel(centralwidget);
        label_2->setObjectName(QStringLiteral("label_2"));
        label_2->setGeometry(QRect(10, 70, 151, 16));
        label_3 = new QLabel(centralwidget);
        label_3->setObjectName(QStringLiteral("label_3"));
        label_3->setGeometry(QRect(10, 110, 231, 16));
        pushButtonPNGLoad = new QPushButton(centralwidget);
        pushButtonPNGLoad->setObjectName(QStringLiteral("pushButtonPNGLoad"));
        pushButtonPNGLoad->setGeometry(QRect(350, 160, 75, 23));
        horizontalLayoutWidget = new QWidget(centralwidget);
        horizontalLayoutWidget->setObjectName(QStringLiteral("horizontalLayoutWidget"));
        horizontalLayoutWidget->setGeometry(QRect(320, 10, 141, 141));
        zonePNG = new QHBoxLayout(horizontalLayoutWidget);
        zonePNG->setObjectName(QStringLiteral("zonePNG"));
        zonePNG->setContentsMargins(0, 0, 0, 0);
        horizontalLayoutWidget_2 = new QWidget(centralwidget);
        horizontalLayoutWidget_2->setObjectName(QStringLiteral("horizontalLayoutWidget_2"));
        horizontalLayoutWidget_2->setGeometry(QRect(480, 10, 141, 141));
        zonePNGShoot = new QHBoxLayout(horizontalLayoutWidget_2);
        zonePNGShoot->setObjectName(QStringLiteral("zonePNGShoot"));
        zonePNGShoot->setContentsMargins(0, 0, 0, 0);
        pushButtonPNGShootLoad = new QPushButton(centralwidget);
        pushButtonPNGShootLoad->setObjectName(QStringLiteral("pushButtonPNGShootLoad"));
        pushButtonPNGShootLoad->setGeometry(QRect(514, 160, 81, 23));
        label_4 = new QLabel(centralwidget);
        label_4->setObjectName(QStringLiteral("label_4"));
        label_4->setGeometry(QRect(10, 220, 61, 16));
        spinDmgMin = new QSpinBox(centralwidget);
        spinDmgMin->setObjectName(QStringLiteral("spinDmgMin"));
        spinDmgMin->setGeometry(QRect(10, 260, 42, 22));
        spinDmgMin->setMaximum(500);
        label_5 = new QLabel(centralwidget);
        label_5->setObjectName(QStringLiteral("label_5"));
        label_5->setGeometry(QRect(10, 240, 61, 16));
        label_6 = new QLabel(centralwidget);
        label_6->setObjectName(QStringLiteral("label_6"));
        label_6->setGeometry(QRect(10, 280, 61, 16));
        spinDmgMax = new QSpinBox(centralwidget);
        spinDmgMax->setObjectName(QStringLiteral("spinDmgMax"));
        spinDmgMax->setGeometry(QRect(10, 300, 42, 22));
        spinDmgMax->setMaximum(500);
        radioCrits = new QRadioButton(centralwidget);
        radioCrits->setObjectName(QStringLiteral("radioCrits"));
        radioCrits->setGeometry(QRect(10, 330, 82, 17));
        lineWeaponPrincipe = new QTextEdit(centralwidget);
        lineWeaponPrincipe->setObjectName(QStringLiteral("lineWeaponPrincipe"));
        lineWeaponPrincipe->setGeometry(QRect(10, 130, 301, 71));
        label_7 = new QLabel(centralwidget);
        label_7->setObjectName(QStringLiteral("label_7"));
        label_7->setGeometry(QRect(10, 350, 91, 16));
        spinCritDmgMin = new QSpinBox(centralwidget);
        spinCritDmgMin->setObjectName(QStringLiteral("spinCritDmgMin"));
        spinCritDmgMin->setGeometry(QRect(10, 370, 42, 22));
        spinCritDmgMin->setMaximum(500);
        label_8 = new QLabel(centralwidget);
        label_8->setObjectName(QStringLiteral("label_8"));
        label_8->setGeometry(QRect(10, 390, 91, 16));
        spinCritDmgMax = new QSpinBox(centralwidget);
        spinCritDmgMax->setObjectName(QStringLiteral("spinCritDmgMax"));
        spinCritDmgMax->setGeometry(QRect(10, 410, 42, 22));
        spinCritDmgMax->setMaximum(500);
        horizontalLayoutWidget_3 = new QWidget(centralwidget);
        horizontalLayoutWidget_3->setObjectName(QStringLiteral("horizontalLayoutWidget_3"));
        horizontalLayoutWidget_3->setGeometry(QRect(320, 190, 141, 51));
        zonePNGProj = new QHBoxLayout(horizontalLayoutWidget_3);
        zonePNGProj->setObjectName(QStringLiteral("zonePNGProj"));
        zonePNGProj->setContentsMargins(0, 0, 0, 0);
        pushButtonPNGProjectileLoad = new QPushButton(centralwidget);
        pushButtonPNGProjectileLoad->setObjectName(QStringLiteral("pushButtonPNGProjectileLoad"));
        pushButtonPNGProjectileLoad->setGeometry(QRect(320, 250, 141, 23));
        caption = new QLabel(centralwidget);
        caption->setObjectName(QStringLiteral("caption"));
        caption->setGeometry(QRect(20, 0, 291, 31));
        lineProjectileType = new QLineEdit(centralwidget);
        lineProjectileType->setObjectName(QStringLiteral("lineProjectileType"));
        lineProjectileType->setGeometry(QRect(140, 260, 113, 20));
        label_10 = new QLabel(centralwidget);
        label_10->setObjectName(QStringLiteral("label_10"));
        label_10->setGeometry(QRect(140, 240, 131, 16));
        label_11 = new QLabel(centralwidget);
        label_11->setObjectName(QStringLiteral("label_11"));
        label_11->setGeometry(QRect(140, 340, 161, 16));
        spinShootCooldown = new QSpinBox(centralwidget);
        spinShootCooldown->setObjectName(QStringLiteral("spinShootCooldown"));
        spinShootCooldown->setGeometry(QRect(140, 360, 42, 22));
        spinShootCooldown->setMaximum(500);
        spinReloadTime = new QSpinBox(centralwidget);
        spinReloadTime->setObjectName(QStringLiteral("spinReloadTime"));
        spinReloadTime->setGeometry(QRect(140, 410, 42, 22));
        spinReloadTime->setMaximum(500);
        label_12 = new QLabel(centralwidget);
        label_12->setObjectName(QStringLiteral("label_12"));
        label_12->setGeometry(QRect(140, 390, 161, 16));
        label_13 = new QLabel(centralwidget);
        label_13->setObjectName(QStringLiteral("label_13"));
        label_13->setGeometry(QRect(140, 290, 161, 16));
        spinProjectileAmount = new QSpinBox(centralwidget);
        spinProjectileAmount->setObjectName(QStringLiteral("spinProjectileAmount"));
        spinProjectileAmount->setGeometry(QRect(140, 310, 42, 22));
        spinProjectileAmount->setMaximum(500);
        spinProjectileAmount->setValue(1);
        spinClipSize = new QSpinBox(centralwidget);
        spinClipSize->setObjectName(QStringLiteral("spinClipSize"));
        spinClipSize->setGeometry(QRect(310, 310, 42, 22));
        spinClipSize->setMaximum(500);
        label_14 = new QLabel(centralwidget);
        label_14->setObjectName(QStringLiteral("label_14"));
        label_14->setGeometry(QRect(310, 290, 161, 16));
        label_15 = new QLabel(centralwidget);
        label_15->setObjectName(QStringLiteral("label_15"));
        label_15->setGeometry(QRect(310, 340, 161, 16));
        spinAmmoPerShoot = new QSpinBox(centralwidget);
        spinAmmoPerShoot->setObjectName(QStringLiteral("spinAmmoPerShoot"));
        spinAmmoPerShoot->setGeometry(QRect(310, 360, 42, 22));
        spinAmmoPerShoot->setMaximum(500);
        spinDamageCooldown = new QSpinBox(centralwidget);
        spinDamageCooldown->setObjectName(QStringLiteral("spinDamageCooldown"));
        spinDamageCooldown->setGeometry(QRect(310, 410, 42, 22));
        spinDamageCooldown->setMaximum(500);
        label_16 = new QLabel(centralwidget);
        label_16->setObjectName(QStringLiteral("label_16"));
        label_16->setGeometry(QRect(310, 390, 161, 16));
        horizontalLayoutWidget_4 = new QWidget(centralwidget);
        horizontalLayoutWidget_4->setObjectName(QStringLiteral("horizontalLayoutWidget_4"));
        horizontalLayoutWidget_4->setGeometry(QRect(480, 190, 141, 51));
        zonePNGAdd = new QHBoxLayout(horizontalLayoutWidget_4);
        zonePNGAdd->setObjectName(QStringLiteral("zonePNGAdd"));
        zonePNGAdd->setContentsMargins(0, 0, 0, 0);
        pushButtonPNGAdditionalLoad = new QPushButton(centralwidget);
        pushButtonPNGAdditionalLoad->setObjectName(QStringLiteral("pushButtonPNGAdditionalLoad"));
        pushButtonPNGAdditionalLoad->setGeometry(QRect(480, 250, 141, 23));
        horizontalLayoutWidget_5 = new QWidget(centralwidget);
        horizontalLayoutWidget_5->setObjectName(QStringLiteral("horizontalLayoutWidget_5"));
        horizontalLayoutWidget_5->setGeometry(QRect(480, 280, 141, 51));
        zonePNGAdd2 = new QHBoxLayout(horizontalLayoutWidget_5);
        zonePNGAdd2->setObjectName(QStringLiteral("zonePNGAdd2"));
        zonePNGAdd2->setContentsMargins(0, 0, 0, 0);
        pushButtonPNGAdditionalLoad_2 = new QPushButton(centralwidget);
        pushButtonPNGAdditionalLoad_2->setObjectName(QStringLiteral("pushButtonPNGAdditionalLoad_2"));
        pushButtonPNGAdditionalLoad_2->setGeometry(QRect(480, 340, 141, 23));
        label_17 = new QLabel(centralwidget);
        label_17->setObjectName(QStringLiteral("label_17"));
        label_17->setGeometry(QRect(480, 390, 161, 16));
        spinMaxScatter = new QSpinBox(centralwidget);
        spinMaxScatter->setObjectName(QStringLiteral("spinMaxScatter"));
        spinMaxScatter->setGeometry(QRect(480, 410, 42, 22));
        spinMaxScatter->setMaximum(500);
        MainWindow->setCentralWidget(centralwidget);
        menubar = new QMenuBar(MainWindow);
        menubar->setObjectName(QStringLiteral("menubar"));
        menubar->setGeometry(QRect(0, 0, 640, 21));
        menu = new QMenu(menubar);
        menu->setObjectName(QStringLiteral("menu"));
        MainWindow->setMenuBar(menubar);
        QWidget::setTabOrder(lineWeaponName, lineWeaponDescription);
        QWidget::setTabOrder(lineWeaponDescription, lineWeaponPrincipe);
        QWidget::setTabOrder(lineWeaponPrincipe, spinDmgMin);
        QWidget::setTabOrder(spinDmgMin, spinDmgMax);
        QWidget::setTabOrder(spinDmgMax, radioCrits);
        QWidget::setTabOrder(radioCrits, spinCritDmgMin);
        QWidget::setTabOrder(spinCritDmgMin, spinCritDmgMax);
        QWidget::setTabOrder(spinCritDmgMax, lineProjectileType);
        QWidget::setTabOrder(lineProjectileType, spinProjectileAmount);
        QWidget::setTabOrder(spinProjectileAmount, spinShootCooldown);
        QWidget::setTabOrder(spinShootCooldown, spinReloadTime);
        QWidget::setTabOrder(spinReloadTime, spinClipSize);
        QWidget::setTabOrder(spinClipSize, spinAmmoPerShoot);
        QWidget::setTabOrder(spinAmmoPerShoot, spinDamageCooldown);
        QWidget::setTabOrder(spinDamageCooldown, spinMaxScatter);
        QWidget::setTabOrder(spinMaxScatter, pushButtonPNGLoad);
        QWidget::setTabOrder(pushButtonPNGLoad, pushButtonPNGShootLoad);
        QWidget::setTabOrder(pushButtonPNGShootLoad, pushButtonPNGProjectileLoad);
        QWidget::setTabOrder(pushButtonPNGProjectileLoad, pushButtonPNGAdditionalLoad);
        QWidget::setTabOrder(pushButtonPNGAdditionalLoad, pushButtonPNGAdditionalLoad_2);

        menubar->addAction(menu->menuAction());
        menu->addAction(weapNew);
        menu->addAction(weapSave);
        menu->addAction(weapLoad);
        menu->addAction(weapExport);

        retranslateUi(MainWindow);

        QMetaObject::connectSlotsByName(MainWindow);
    } // setupUi

    void retranslateUi(QMainWindow *MainWindow)
    {
        MainWindow->setWindowTitle(QApplication::translate("MainWindow", "Coole Editor 0.2", 0));
        weapSave->setText(QApplication::translate("MainWindow", "\320\241\320\276\321\205\321\200\320\260\320\275\320\270\321\202\321\214 \320\276\321\200\321\203\320\266\320\270\320\265", 0));
        weapSave->setShortcut(QApplication::translate("MainWindow", "Ctrl+S", 0));
        weapExport->setText(QApplication::translate("MainWindow", "\320\255\320\272\321\201\320\277\320\276\321\200\321\202\320\270\321\200\320\276\320\262\320\260\321\202\321\214 \320\262 \320\272\320\260\321\200\321\202\320\270\320\275\320\272\321\203", 0));
        weapExport->setShortcut(QApplication::translate("MainWindow", "Ctrl+E", 0));
        weapLoad->setText(QApplication::translate("MainWindow", "\320\227\320\260\320\263\321\200\321\203\320\267\320\270\321\202\321\214 \320\276\321\200\321\203\320\266\320\270\320\265", 0));
        weapLoad->setShortcut(QApplication::translate("MainWindow", "Ctrl+L", 0));
        weapNew->setText(QApplication::translate("MainWindow", "\320\235\320\276\320\262\320\276\320\265 \320\276\321\200\321\203\320\266\320\270\320\265", 0));
        label->setText(QApplication::translate("MainWindow", "\320\235\320\260\320\267\320\262\320\260\320\275\320\270\320\265 \320\276\321\200\321\203\320\266\320\270\321\217", 0));
        label_2->setText(QApplication::translate("MainWindow", "\320\236\320\277\320\270\321\201\320\260\320\275\320\270\320\265 \320\276\321\200\321\203\320\266\320\270\321\217 \320\275\320\260 \321\200\321\203\321\201\321\201\320\272\320\276\320\274", 0));
        label_3->setText(QApplication::translate("MainWindow", "\320\237\321\200\320\270\320\275\321\206\320\270\320\277 \320\264\320\265\320\271\321\201\321\202\320\262\320\270\321\217, \321\207\321\202\320\276-\321\202\320\276 \321\203\321\202\320\276\321\207\320\275\321\217\321\216\321\211\320\265\320\265", 0));
        pushButtonPNGLoad->setText(QApplication::translate("MainWindow", "PNG", 0));
        pushButtonPNGShootLoad->setText(QApplication::translate("MainWindow", "PNG \320\262\321\213\321\201\321\202\321\200\320\265\320\273", 0));
        label_4->setText(QApplication::translate("MainWindow", "\320\237\320\260\321\200\320\260\320\274\320\265\321\202\321\200\321\213", 0));
        label_5->setText(QApplication::translate("MainWindow", "\320\243\321\200\320\276\320\275 \320\234\320\230\320\235", 0));
        label_6->setText(QApplication::translate("MainWindow", "\320\243\321\200\320\276\320\275 \320\234\320\220\320\232\320\241", 0));
        radioCrits->setText(QApplication::translate("MainWindow", "\320\232\321\200\320\270\321\202\321\203\320\265\321\202", 0));
        label_7->setText(QApplication::translate("MainWindow", "\320\232\321\200\320\270\321\202 \320\243\321\200\320\276\320\275 \320\234\320\230\320\235", 0));
        label_8->setText(QApplication::translate("MainWindow", "\320\232\321\200\320\270\321\202 \320\243\321\200\320\276\320\275 \320\234\320\220\320\232\320\241", 0));
        pushButtonPNGProjectileLoad->setText(QApplication::translate("MainWindow", "PNG \320\277\321\200\320\276\320\266\320\265\320\272\321\202\320\260\320\271\320\273 (\320\265\321\201\321\202\321\214?)", 0));
        caption->setText(QApplication::translate("MainWindow", "\320\225\321\211\320\265 \320\276\320\264\320\275\320\276 \320\261\320\265\321\201\320\277\320\276\320\273\320\265\320\267\320\275\320\276\320\265 \320\276\321\200\321\203\320\266\320\270\320\265 \320\262 \320\270\320\263\321\200\321\203 ", 0));
        label_10->setText(QApplication::translate("MainWindow", "\320\242\320\270\320\277 \320\277\321\200\320\276\320\266\320\265\320\272\321\202\320\260\320\271\320\273\320\276\320\262 \320\262 \320\270\320\263\321\200\320\265", 0));
        label_11->setText(QApplication::translate("MainWindow", "\320\232\321\203\320\273\320\264\320\260\321\203\320\275 \320\275\320\260 \321\201\321\202\321\200\320\265\320\273\321\214\320\261\321\203 (\321\201\320\265\320\272)", 0));
        label_12->setText(QApplication::translate("MainWindow", "\320\222\321\200\320\265\320\274\321\217 \320\277\320\265\321\200\320\265\320\267\320\260\321\200\321\217\320\264\320\272\320\270 (\321\201\320\265\320\272)", 0));
        label_13->setText(QApplication::translate("MainWindow", "\320\232\320\276\320\273-\320\262\320\276 \320\277\321\200\320\276\320\266\320\265\320\272\321\202\320\260\320\271\320\273\320\276\320\262 \320\262 \320\270\320\263\321\200\320\265", 0));
        label_14->setText(QApplication::translate("MainWindow", "\320\236\320\261\320\276\320\271\320\274\320\260 \320\262 \320\265\320\264\320\270\320\275\320\270\321\206\320\260\321\205", 0));
        label_15->setText(QApplication::translate("MainWindow", "\320\237\320\260\321\202\321\200\320\276\320\275\320\276\320\262 \320\267\320\260 \320\262\321\213\321\201\321\202\321\200\320\265\320\273", 0));
        label_16->setText(QApplication::translate("MainWindow", "\320\232\321\203\320\273\320\264\320\260\321\203\320\275 \320\275\320\260 \321\201\320\273\320\265\320\264. \321\203\321\200\320\276\320\275 (\321\201\320\265\320\272)", 0));
        pushButtonPNGAdditionalLoad->setText(QApplication::translate("MainWindow", "\320\225\321\211\320\265 \320\272\320\260\320\272\320\270\320\265-\321\202\320\276 PNG", 0));
        pushButtonPNGAdditionalLoad_2->setText(QApplication::translate("MainWindow", "\320\225\321\211\320\265 \320\272\320\260\320\272\320\270\320\265-\321\202\320\276 PNG", 0));
        label_17->setText(QApplication::translate("MainWindow", "\320\234\320\260\320\272\321\201. \321\203\320\263\320\276\320\273 \321\200\320\260\320\267\320\261\321\200\320\276\321\201\320\260 (\320\263\321\200\320\260\320\264\321\203\321\201\321\213)", 0));
        menu->setTitle(QApplication::translate("MainWindow", "\320\224\320\265\320\271\321\201\321\202\320\262\320\270\321\217", 0));
    } // retranslateUi

};

namespace Ui {
    class MainWindow: public Ui_MainWindow {};
} // namespace Ui

QT_END_NAMESPACE

#endif // UI_MAINWINDOW_H
