#include "header/user/model/user.h"

User::User(QString email, QString username, QString password, QString phone, Role role)
{
    mEmail = email;
    mUserName = username;
    mPassword = password;
    mPhone = phone;
    mRole = role;
}
