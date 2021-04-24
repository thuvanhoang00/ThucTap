#include "header/user/model/user.h"

User* User::instance = nullptr;

User *User::getInstance()
{
    if(instance == nullptr){
        instance = new User();
    }
    return instance;
}

QString User::getPassword() const
{
    return mPassword;
}

void User::setPassword(QString pass)
{
    if(mPassword != pass){
        mPassword = pass;
        emit passwordChanged();
    }
}

QString User::getUserName() const
{
    return mUserName;
}

void User::setUserName(QString name)
{
    if(mUserName != name){
        mUserName = name;
        emit userNameChanged();
    }
}

QString User::getPhone() const
{
    return mPhone;
}

void User::setPhone(QString phone)
{
    if(mPhone != phone){
        mPhone = phone;
        emit phoneChanged();
    }
}

QString User::getEmail() const
{
    return mEmail;
}

void User::setEmail(QString email)
{
    if(mEmail != email){
        mEmail = email;
        emit emailChanged();
    }
}

int User::getUserRole() const
{
    return static_cast<int>(mRole);
}

void User::setUserRole(int role)
{
    if(mRole != static_cast<Role>(role)){
        mRole = static_cast<Role>(role);
        emit userRoleChanged();
    }
}

User::User()
{
    mEmail = "";
    mUserName = "";
    mPassword = "";
    mPhone = "";
    mRole = Role::CUSTOMER;
}
