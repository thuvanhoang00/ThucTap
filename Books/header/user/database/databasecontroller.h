#ifndef DATABASECONTROLLER_H
#define DATABASECONTROLLER_H
#include <QtSql>
#include <QSqlQuery>
#include <QString>

class DatabaseController
{
public:
    static DatabaseController* getInstance();
    void printAllUser();
    bool processLogin(QString name, QString password);
    QString getRole(QString name);
private:
    DatabaseController();
private:
    QSqlDatabase m_db;
    static DatabaseController* instance;
};



#endif // DATABASECONTROLLER_H
