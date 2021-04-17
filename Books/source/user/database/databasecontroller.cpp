#include "header/user/database/databasecontroller.h"

DatabaseController* DatabaseController::instance = nullptr;

DatabaseController::DatabaseController()
{
    m_db = QSqlDatabase::addDatabase("QSQLITE");
    QString path = QCoreApplication::applicationDirPath();
    path += "/user.db";
    m_db.setDatabaseName(path);
    qDebug() << path;
    if(!m_db.open()){
        qDebug() << "Cant open db file!";
    }
    else{
        qDebug() << "Open ok!";
    }
}

DatabaseController* DatabaseController::getInstance()
{
    if(instance == nullptr){
        instance = new DatabaseController();
    }
    return instance;
}

//void DatabaseController::printAllUser()
//{
//    QSqlQuery query("SELECT * FROM users");
//    int idName = query.record().indexOf("username");
//    while(query.next()){
//        QString name = query.value(idName).toString();
//        qDebug() << "---" << name;
//    }
//}

bool DatabaseController::processLogin(QString name, QString password)
{
    QSqlQuery query(QString("SELECT * FROM users WHERE username = '%1'").arg(name));
    int idPass = query.record().indexOf("password");

    while(query.next()){
        QString value = query.value(idPass).toString();
        if(value == password)
        {
            return true;
        }
    }
    return false;
}

QString DatabaseController::getRole(QString name)
{
    qDebug() << QString("%1 %2").arg(Q_FUNC_INFO).arg(name);
    QString ret = "";
    QSqlQuery query(QString("SELECT * FROM users WHERE username = '%1'").arg(name));
    int idRole = query.record().indexOf("role");
    while(query.next()){
        int value = query.value(idRole).toInt();
        qDebug() << "role---" << value;
        if(value == 0)
            ret = "admin";
        else if(value == 1){
            ret = "customer";
        }
        else
        {}
    }
    qDebug() << "ret---" << ret;
    return ret;
}
