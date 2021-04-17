#ifndef USERVIEW_H
#define USERVIEW_H
#include "header/user/model/user.h"
#include <QObject>

// class nay lam viec voi QML
// dang lam Dang nhap truoc
// lam login() dau tien
// login() gom 2 phan : username, email, phone VS pass
class UserView : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString userName READ getUserName WRITE setUserName NOTIFY userNameChanged)
    Q_PROPERTY(QString userRole READ getUserRole WRITE setUserRole NOTIFY userRoleChanged)
    Q_PROPERTY(bool loginState READ getLoginState WRITE setLoginState NOTIFY loginStateChanged)
public:
    explicit UserView(QObject *parent = nullptr);
    bool getLoginState() const;
    void setLoginState(bool state);

    QString getUserName() const;
    void setUserName(QString name);

    QString getUserRole() const;
    void setUserRole(QString role);

    Q_INVOKABLE void login(QString name, QString password);
    Q_INVOKABLE void logout();
signals:
    void loginStateChanged();
    void userNameChanged();
    void userRoleChanged();

private:
    bool mLoginState;
    QString mUserName;
    QString mUserRole;
};

#endif // USERVIEW_H
