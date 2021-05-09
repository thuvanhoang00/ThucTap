#include "header/user/database/databasecontroller.h"

DatabaseController* DatabaseController::instance = nullptr;

DatabaseController::DatabaseController()
{
    m_db = QSqlDatabase::addDatabase("QSQLITE");
    QString path = PROJECT_PATH;
    path += "/Database/user.db";
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

void DatabaseController::printAllUser()
{
    QSqlQuery query("SELECT * FROM users");
    int idName = query.record().indexOf("username");
    while(query.next()){
        QString name = query.value(idName).toString();
        qDebug() << "---" << name;
    }
}

bool DatabaseController::processLogin(QString name, QString password, QString& email, QString& phone, Role& role)
{
    QSqlQuery query(QString("SELECT * FROM users WHERE username = '%1'").arg(name));
    int idPass = query.record().indexOf("password");
    int idEmail = query.record().indexOf("email");
    int idPhone = query.record().indexOf("phone");
    int idRole = query.record().indexOf("role");

    while(query.next()){
        QString pass = query.value(idPass).toString();
        if(pass == password)
        {
            email = query.value(idEmail).toString();
            phone = query.value(idPhone).toString();
            role = static_cast<Role>(query.value(idRole).toInt());

            return true;
        }
    }
    return false;
}

bool DatabaseController::updateProfile(QString name, QString phone, QString password)
{
    bool ret =  false;
    QSqlQuery updateQuery(QString("UPDATE users SET phone = '%1', password = '%2' WHERE username = '%3'").arg(phone).arg(password).arg(name));
    if(updateQuery.exec()){
        ret = true;
    }
    else{
        qDebug() << "Update user failed! " << updateQuery.lastError();
    }
    return ret;
}

bool DatabaseController::isUserNameExist(QString name)
{
    bool ret = false;

    QSqlQuery checkQuery;
    checkQuery.prepare("SELECT username FROM users WHERE username = (:name)");
    checkQuery.bindValue(":name", name);

    if(checkQuery.exec()){
        if(checkQuery.next()){
            ret = true;
        }
    }
    else {
        qDebug() << QString("Khong tim thay username = %1").arg(name);
    }

    return ret;
}

bool DatabaseController::isUserEmailExist(QString email)
{
    bool ret = false;

    QSqlQuery checkQuery;
    checkQuery.prepare("SELECT email FROM users WHERE email = (:email)");
    checkQuery.bindValue(":email", email);

    if(checkQuery.exec()){
        if(checkQuery.next()){
            ret = true;
        }
    }
    else {
        qDebug() << QString("Khong tim thay email = %1").arg(email);
    }

    return ret;
}

bool DatabaseController::isUserPhoneExist(QString phone)
{
    bool ret = false;

    QSqlQuery checkQuery;
    checkQuery.prepare("SELECT phone FROM users WHERE phone = (:phone)");
    checkQuery.bindValue(":phone", phone);

    if(checkQuery.exec()){
        if(checkQuery.next()){
            ret = true;
        }
    }
    else {
        qDebug() << QString("Khong tim thay phone = %1").arg(phone);
    }

    return ret;
}

bool DatabaseController::deleteUser(QString name)
{
    bool ret = false;

    QSqlQuery checkQuery;
    checkQuery.prepare("DELETE FROM users WHERE username = (:name)");
    checkQuery.bindValue(":name", name);

    if(checkQuery.exec()){
        if(checkQuery.next()){
            ret = true;
        }
    }
    else {
        qDebug() << QString("Khong tim thay username = %1").arg(name);
    }

    return ret;
}

bool DatabaseController::addUser(QString name, QString email, QString phone, QString password, Role role)
{
    bool success = false;
    QSqlQuery addQuery{m_db};
    addQuery.prepare("INSERT INTO users(username, email, phone, password) VALUES (:name, :email, :phone, :password)");
    addQuery.bindValue(":name", name);
    addQuery.bindValue(":email", email);
    addQuery.bindValue(":phone", phone);
    addQuery.bindValue(":password", password);
    addQuery.bindValue(":role", 1);

    if(addQuery.exec()){
        qDebug() << "Add user done! ";
        success = true;
    }
    else{
        qDebug() << "Add user failed! " << addQuery.lastError();
    }
    return success;
}

QStringList DatabaseController::getAllUsers()
{
    QStringList ret;

    QSqlQuery query("SELECT * FROM users");
    int idName = query.record().indexOf("username");
    int idRole = query.record().indexOf("role");
    while(query.next()){
        QString name = query.value(idName).toString();
        int role = query.value(idRole).toInt();
        if(name != "" && role == 1)
            ret.push_back(name);
        qDebug() << "---" << name;
    }
    return ret;
}

//QString DatabaseController::getRole(QString name)
//{
//    qDebug() << QString("%1 %2").arg(Q_FUNC_INFO).arg(name);
//    QString ret = "";
//    QSqlQuery query(QString("SELECT * FROM users WHERE username = '%1'").arg(name));
//    int idRole = query.record().indexOf("role");
//    while(query.next()){
//        int value = query.value(idRole).toInt();
//        qDebug() << "role---" << value;
//        if(value == 0)
//            ret = "admin";
//        else if(value == 1){
//            ret = "customer";
//        }
//        else
//        {}
//    }
//    qDebug() << "ret---" << ret;
//    return ret;
//}
