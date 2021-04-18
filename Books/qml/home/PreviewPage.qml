import Felgo 3.0
import QtQuick 2.0
import QtGraphicalEffects 1.0

Page {
    id: root

    property bool isFavorite: dataModel.isFavorite(root.modelEntry)
    property var modelEntry: undefined

    backNavigationEnabled: true

    rightBarItem: IconButtonBarItem{
        icon: IconType.cartplus
        iconSize: dp(35)
    }

    LinearGradient {
        id: bgColor
        anchors.fill: parent

        start: Qt.point(0, 0)
        end: Qt.point(root.width * 0.2, root.width * 0.7)
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#ffbf80" }
            GradientStop { position: 0.7; color: "#ffbf80" }
        }
    }

    AppFlickable {
        anchors {
            fill: parent
            bottomMargin: 0
        }

        contentHeight: contentColumn.height + contentColumn.anchors.topMargin

        Column {
            id: contentColumn

            anchors {
                top: parent.top
                topMargin: dp(20)
                horizontalCenter: parent.horizontalCenter
            }

            spacing: dp(10)

            AppImage {
                anchors.horizontalCenter: parent.horizontalCenter

                width: dp(250)
                height: width

                source: Qt.resolvedUrl(dataModel.getCover(modelEntry))
            }
            Rectangle {
                id: ratingBG
                height: dp(10)
                width: dp(200)
                anchors.left: parent.left
                anchors.leftMargin: dp(20)
                color: "transparent"
                AppText{
                    id: txt1
                    text: "Rating: "
                    font.pixelSize: sp(12)
                    font.italic: true
                    color: "#ff3300"
                }

                AppText{
                    id: txt2
                    anchors.left: txt1.right
                    anchors.leftMargin: dp(5)
                    text: modelEntry.rating + "/5"
                    font.pixelSize: sp(12)
                    font.italic: true
                    color: "#ff3300"
                }

                AppText {
                    id: txt3
                    anchors.left: txt2.right
                    anchors.leftMargin: dp(3)
                    text: "("+modelEntry.ratingCount+")"
                    font.pixelSize: sp(12)
                    font.italic: true
                    color: "#ff3300"
                }
            }
            AppText {
                id: bookTitle
                anchors.left: parent.left
                anchors.leftMargin: dp(20)
                font {
                    bold: true
                    pixelSize: sp(15)
                }
                width: dp(300)
                maximumLineCount: 2
                wrapMode: Text.Wrap
                elide: AppText.ElideRight
                text: modelEntry.title
            }



            Rectangle {
                id: priceBG
                height: dp(20)
                width: dp(200)
                color: "transparent"
                anchors.horizontalCenter: parent.horizontalCenter

                // giá bán
                AppText {
                    id: mainPrice
                    anchors.left: priceBG.left
                    anchors.leftMargin: dp(10)
                    width: AppText.width
                    anchors.verticalCenter: parent.verticalCenter
                    verticalAlignment: AppText.AlignVCenter
//                    color: Theme.textColor
                    font.bold: true
                    text: {
                        return modelEntry.mainPrice + " đ"
                    }
                }
                // giá gốc
                AppText {
                    id: originalPrice
                    width: AppText.width
                    anchors.verticalCenter: parent.verticalCenter
                    anchors.left: mainPrice.right
                    anchors.leftMargin: dp(10)
                    anchors.bottom: parent.bottom
                    color: Theme.textColor
                    fontSize: mainPrice.fontSize/1.5
                    font.strikeout: true
                    text: {
                        return modelEntry.originalPrice + " đ"
                    }
                }
                // % giảm giá
                AppText{
                    id: discount
                    width: AppText.width
                    anchors.verticalCenter: parent.verticalCenter
                    verticalAlignment: AppText.AlignVCenter
                    anchors.left: originalPrice.right
                    anchors.leftMargin: dp(10)
                    font.bold: true
                    fontSize: mainPrice.fontSize/1.2
                    text: {
                        var discountPercentage = Math.floor(modelEntry.mainPrice) / Math.floor(modelEntry.originalPrice)
                        discountPercentage = discountPercentage*100
                        return "(-" + (100-Math.floor(discountPercentage)) + " %)"
                    }
                    color: "#e60000"
                }
            }

            AppButton {
                anchors.horizontalCenter: parent.horizontalCenter

                height: dp(40)

                verticalPadding: dp(12)
                horizontalPadding: dp(45)

                radius: height / 2
                backgroundColor: Theme.tintColor
                textColor: Theme.textColor
                enabled: dataModel.relatedTracks(root.modelEntry).length > 0
                flat: false
                text: "Đặt mua" // click vào đây là chuyển sang Tab giỏ hàng
                textSize: sp(15)

                onClicked: {
                }
            }
        }
    }
}
