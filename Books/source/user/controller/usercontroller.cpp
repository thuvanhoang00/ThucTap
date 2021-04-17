#include "header/user/controller/usercontroller.h"

UserController* UserController::instance = nullptr;

UserController* UserController::getInstace(){
    if(instance == nullptr){
        instance = new UserController();
    }
    return instance;
}

bool UserController::loginController(QString name, QString password)
{
    if(name == "admin" && password == "123456")
        return true;
    else
        return false;
}

void UserController::logoutController()
{

}

UserController::UserController()
{

}
