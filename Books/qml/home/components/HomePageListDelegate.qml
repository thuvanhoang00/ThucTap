import Felgo 3.0
import QtQuick 2.0

Item {
    id: root

    signal selected()

    width: dp(120)
    height: dp(150)

    AppImage {
        id: coverImage
        width: parent.width
        height: width
        fillMode: Image.PreserveAspectCrop

        source: Qt.resolvedUrl(dataModel.getCover(model))

    }

    AppText {
        anchors {
            top: coverImage.bottom
            topMargin: dp(5)
        }
        width: dp(100)
        maximumLineCount: 2
        wrapMode: Text.Wrap
        elide: AppText.ElideRight
        //    font.bold: true
        fontSize: 10
        text: model.title
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            root.selected()
        }
    }
}
