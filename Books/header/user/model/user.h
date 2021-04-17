#ifndef USER_H
#define USER_H
#include <QString>

// class nay la model
// lam viec voi SQLite Database
enum class Role : int{
    ADMIN = 0,
    CUSTOMER = 1,
    ROLEMAX = 2
};

class User
{
public:
    User(QString email, QString username, QString password, QString phone, Role role);
//    virtual QString getPassword() const; // this function will not change any class variable
//    virtual QString getUserName() const;
//    virtual QString getPhone() const;
//    virtual QString getEmail() const;
//    virtual Role getRole() const;

private:
    QString mEmail;
    QString mUserName;
    QString mPassword;
    QString mPhone;
    Role mRole;
};

#endif // USER_H
