#include "header/projectpath/projectpath.h"
#include <QtDebug>
ProjectPath::ProjectPath(QObject *parent) : QObject(parent)
{

}

QString ProjectPath::getImagePath() const
{
    return imagePath;
}

void ProjectPath::setImagePath(QString path)
{
    qDebug() << QString("%1 %2").arg(Q_FUNC_INFO).arg(path);
    if(imagePath != path){
        imagePath = path;
        emit imagePathChanged();
    }
}
