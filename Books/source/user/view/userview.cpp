#include "header/user/view/userview.h"
#include "header/user/model/user.h"
#include "header/user/controller/usercontroller.h"
#include "header/user/database/databasecontroller.h"
#include <QDebug>

UserView::UserView(QObject *parent) : QObject(parent)
{
    mLoginState = false;
}

bool UserView::getLoginState() const
{
    return mLoginState;
}

void UserView::setLoginState(bool state)
{
    if(mLoginState != state){
        mLoginState = state;
        emit loginStateChanged();
    }
}

bool UserView::changeUserProfile(QString name, QString phone, QString password)
{
    qDebug() << QString("%1 %2 %3 %4").arg(Q_FUNC_INFO).arg(name).arg(phone).arg(password);
    bool ret = false;

    ret = UserController::getInstace()->changeUserProfileController(name, phone, password);
    if(ret){
        qDebug() << "Thay doi thong tin thanh cong!";
    }
    else{
        qDebug() << "Khong thay doi duoc thong tin!";
    }
    return ret;
}

bool UserView::userRegister(QString name, QString email, QString phone, QString password)
{
    qDebug() << QString("%1 %2 %3 %4 %5").arg(Q_FUNC_INFO).arg(name).arg(email).arg(phone).arg(password);

    bool ret = false;

    ret = UserController::getInstace()->registerController(name, email, phone, password);

    if(ret == true){
        setLoginState(true);
        qDebug() << "Dang ky thanh cong!" ;
    }
    else {
        qDebug() << "Dang ky khong thanh cong!" ;
    }
    return ret;
}

void UserView::login(QString name, QString password)
{
    qDebug() << QString("%1 %2 %3").arg(Q_FUNC_INFO).arg(name).arg(password);
    bool ret = false;
    ret = UserController::getInstace()->loginController(name, password);

    if(ret == true){
        setLoginState(true);
        qDebug() << "Login Succeeded!";
    }
    else{
        setLoginState(false);
        qDebug() << "Login failed!";
    }
}

void UserView::logout()
{
    setLoginState(false);
    UserController::getInstace()->logoutController();
}
