#ifndef DATABASECONTROLLER_H
#define DATABASECONTROLLER_H
#include <QtSql>
#include <QSqlQuery>
#include <QString>
#include "header/user/model/user.h"
class DatabaseController
{
public:
    static DatabaseController* getInstance();

    void printAllUser();
    bool processLogin(QString name, QString password, QString &email, QString& phone, Role &role);

    // Tim trong Database xem da ton tai hay chua
    bool isUserNameExist(QString name);
    bool isUserEmailExist(QString email);
    bool isUserPhoneExist(QString phone);

    bool addUser(QString name, QString email, QString phone, QString password, Role role = Role::CUSTOMER);

//    // Lay cac gia tri tu Database
//    QString getEmail();
//    QString getPhone();
//    Role getRole();

private:
    DatabaseController();
private:
    QSqlDatabase m_db;
    static DatabaseController* instance;
};



#endif // DATABASECONTROLLER_H
