#ifndef PROJECTPATH_H
#define PROJECTPATH_H

#include <QObject>
#include <QString>

class ProjectPath : public QObject
{
    Q_OBJECT
    Q_PROPERTY(QString imagePath READ getImagePath WRITE setImagePath NOTIFY imagePathChanged)
public:
    explicit ProjectPath(QObject *parent = nullptr);
    QString getImagePath() const;
    void setImagePath(QString path);
signals:
    void imagePathChanged();
private:
    QString imagePath;

};

#endif // PROJECTPATH_H
