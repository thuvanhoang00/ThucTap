import Felgo 3.0
import QtQuick 2.0

Item {
    id: root

    signal selected()

    width: dp(120)
    height: dp(150)
    clip: true
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
    // Hiển thị % giá giảm
    Rectangle {
        anchors.top: parent.top
        anchors.right: parent.right
        anchors.rightMargin: -dp(5)
        anchors.topMargin: -dp(5)
        width: dp(30)
        height: dp(30)
        color: "#ff9933"
        radius: 100

        AppText{
            anchors.centerIn: parent
            text: {
                var discountPercentage = Math.floor(model.mainPrice) / Math.floor(model.originalPrice)
                discountPercentage = discountPercentage*100
                return "-" + (100-Math.floor(discountPercentage)) + "%"
            }
            fontSize: dp(7)
            font.bold: true
            color: "#cc0000"
        }
    }

    MouseArea {
        anchors.fill: parent

        onClicked: {
            root.selected()
        }
    }
}
