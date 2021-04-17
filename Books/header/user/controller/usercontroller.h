#ifndef USERCONTROLLER_H
#define USERCONTROLLER_H
#include <QString>

// class nay lam theo Singleton design
class UserController
{
public:
    static UserController* getInstace();
    bool loginController(QString name, QString password);
    void logoutController();
private:
    UserController();
    static UserController* instance;
};
#endif // USERCONTROLLER_H
