#include "header/user/view/userview.h"
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

QString UserView::getUserRole() const
{
    return mUserRole;
}

void UserView::setUserRole(QString role)
{
    if(mUserRole != role){
        mUserRole = role;
        emit userRoleChanged();
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
        setUserRole(DatabaseController::getInstance()->getRole(name));
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
