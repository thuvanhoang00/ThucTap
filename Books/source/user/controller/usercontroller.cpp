#include "header/user/controller/usercontroller.h"
#include "header/user/database/databasecontroller.h"

UserController* UserController::instance = nullptr;

UserController* UserController::getInstace(){
    if(instance == nullptr){
        instance = new UserController();
    }
    return instance;
}

bool UserController::changeUserProfileController(QString name, QString phone, QString password)
{
    bool ret = false;
    ret = DatabaseController::getInstance()->updateProfile(name, phone, password);
    if(ret){
        // Cap nhat vao Model
        qDebug() << QString("Thay doi thong tin thanh cong, cap nhat vao Model: %1 %2 %3").arg(name).arg(phone).arg(password);
        User::getInstance()->setPhone(phone);
        User::getInstance()->setPassword(password);
    }
    return ret;
}

bool UserController::loginController(QString name, QString password)
{
    bool ret = false;
    QString tempPhone = "";
    QString tempEmail = "";
    Role tempRole = Role::CUSTOMER;

    ret = DatabaseController::getInstance()->processLogin(name, password, tempEmail, tempPhone, tempRole);
    if(ret){
        qDebug() << QString("Thong tin Login: %1 %2 %3 %4 %5").arg(name).arg(password).arg(tempEmail).arg(tempPhone).arg(tempRole);
        User::getInstance()->setUserName(name);
        User::getInstance()->setEmail(tempEmail);
        User::getInstance()->setPhone(tempPhone);
        User::getInstance()->setPassword(password);
        User::getInstance()->setUserRole(tempRole);
    }
    return ret;
}

bool UserController::registerController(QString name, QString email, QString phone, QString password, Role role)
{
    bool ret = false;
    // Kiem tra trong Database xem userName, email da ton tai hay chua
    if(DatabaseController::getInstance()->isUserEmailExist(email) ||
       DatabaseController::getInstance()->isUserNameExist(name) /*||
       DatabaseController::getInstance()->isUserPhoneExist(phone)*/){ // mot trong 2 da ton tai
        qDebug() << QString("%1 Thong tin bi trung").arg(Q_FUNC_INFO);
        return ret;
    }
    else{
        // Them User nay vao Database
        ret = DatabaseController::getInstance()->addUser(name, email, phone, password, role);
        if(ret){
            // Add vao Database thanh cong
            User::getInstance()->setUserName(name);
            User::getInstance()->setEmail(email);
            User::getInstance()->setPhone(phone);
            User::getInstance()->setPassword(password);
            User::getInstance()->setUserRole(Role::CUSTOMER);
        }
        return ret;
    }
}

void UserController::logoutController()
{
    User::getInstance()->setUserName("");
    User::getInstance()->setEmail("");
    User::getInstance()->setPhone("");
    User::getInstance()->setPassword("");
    User::getInstance()->setUserRole(Role::CUSTOMER);
}

void UserController::deleteUser(QString name)
{
    DatabaseController::getInstance()->deleteUser(name);
}

QStringList UserController::getUsersFromDB()
{
    QStringList ret = DatabaseController::getInstance()->getAllUsers();
    return ret;
}

UserController::UserController()
{

}
