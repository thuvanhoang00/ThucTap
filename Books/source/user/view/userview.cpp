#include "header/user/view/userview.h"
#include "header/user/controller/usercontroller.h"
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

Role UserView::getRole(QString name)
{
    if(name == "admin"){
        return Role::ADMIN;
    }
    else
        return Role::CUSTOMER;
}

QString UserView::getUserName() const
{
    return mUserName;
}

void UserView::setUserName(QString name)
{
    if(mUserName != name){
        mUserName = name;
        qDebug() << mUserName;
        emit userNameChanged();
    }
}

void UserView::login(QString name, QString password)
{
    qDebug() << QString("%1 %2 %3").arg(Q_FUNC_INFO).arg(name).arg(password);
    bool ret = false;
    ret = UserController::getInstace()->loginController(name, password);

    if(ret == true){
        setLoginState(true);
        setUserName(name);
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
    setUserName("");
}
