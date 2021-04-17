#include "header/user/controller/usercontroller.h"
#include "header/user/database/databasecontroller.h"

UserController* UserController::instance = nullptr;

UserController* UserController::getInstace(){
    if(instance == nullptr){
        instance = new UserController();
    }
    return instance;
}

bool UserController::loginController(QString name, QString password)
{
    return DatabaseController::getInstance()->processLogin(name, password);
}

void UserController::logoutController()
{

}

UserController::UserController()
{

}
