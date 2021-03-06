#ifndef USERVIEW_H
#define USERVIEW_H
#include "header/user/model/user.h"
#include <QObject>
#include <QQmlListProperty>
#include <QVariant>

// class nay lam viec voi QML
// login() gom 2 phan : username, email, phone VS pass
class UserView : public QObject
{
    Q_OBJECT
    Q_PROPERTY(bool loginState READ getLoginState WRITE setLoginState NOTIFY loginStateChanged)
public:
    explicit UserView(QObject *parent = nullptr);
    bool getLoginState() const;
    void setLoginState(bool state);

    Q_INVOKABLE bool changeUserProfile(QString name, QString phone, QString password);
    Q_INVOKABLE bool userRegister(QString name, QString email, QString phone, QString password);
    Q_INVOKABLE void login(QString name, QString password);
    Q_INVOKABLE void logout();
    Q_INVOKABLE void deleteUser(QString name);
    Q_INVOKABLE QStringList getAllUsers();

signals:
    void loginStateChanged();

private:
    bool mLoginState;
};

#endif // USERVIEW_H
