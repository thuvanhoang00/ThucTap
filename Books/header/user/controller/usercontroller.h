#ifndef USERCONTROLLER_H
#define USERCONTROLLER_H
#include <QString>
#include "header/user/model/user.h"

// class nay lam theo Singleton design
// class nay lam viec voi Database

class UserController
{
public:
    static UserController* getInstace();
    bool changeUserProfileController(QString name, QString phone, QString password);
    bool loginController(QString name, QString password);
    bool registerController(QString name, QString email, QString phone, QString password, Role role = Role::CUSTOMER);
    void logoutController();
private:
    UserController();
    static UserController* instance;
};
#endif // USERCONTROLLER_H
