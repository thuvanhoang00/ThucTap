#ifndef USER_H
#define USER_H
#include <QString>
#include <QObject>

enum Role : int{
    ADMIN = 0,
    CUSTOMER = 1,
    ROLEMAX = 2
};

class User : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString userName READ getUserName WRITE setUserName NOTIFY userNameChanged)
    Q_PROPERTY(QString password READ getPassword WRITE setPassword NOTIFY passwordChanged)
    Q_PROPERTY(QString phone READ getPhone WRITE setPhone NOTIFY phoneChanged)
    Q_PROPERTY(QString email READ getEmail WRITE setEmail NOTIFY emailChanged)
    Q_PROPERTY(int userRole READ getUserRole WRITE setUserRole NOTIFY userRoleChanged)

public:
    static User* getInstance();

public:
    QString getPassword() const; // this function will not change any class variable
    void setPassword(QString pass);

    QString getUserName() const;
    void setUserName(QString name);

    QString getPhone() const;
    void setPhone(QString phone);

    QString getEmail() const;
    void setEmail(QString email);

    int getUserRole() const;
    void setUserRole(int role);

signals:
    void userNameChanged();
    void passwordChanged();
    void phoneChanged();
    void emailChanged();
    void userRoleChanged();

private:
    User(QString email, QString username, QString password, QString phone, Role role);
    User();

private:
    static User* instance;
    QString mEmail;
    QString mUserName;
    QString mPassword;
    QString mPhone;
    Role mRole;
};

#endif // USER_H
