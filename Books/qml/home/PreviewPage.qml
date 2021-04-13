import Felgo 3.0
import QtQuick 2.0
import QtGraphicalEffects 1.0


Page {
    id: root

    property bool isFavorite: dataModel.isFavorite(root.modelEntry)
    property var modelEntry: undefined

    backNavigationEnabled: true
    rightBarItem: TextButtonBarItem {
        id: buttonThemGioHang
        text: "Thêm vào giỏ hàng"

        onClicked: {
            if (root.isFavorite) {
                dataModel.removeFromFavorites(root.modelEntry)
            } else {
                dataModel.addToFavorites(root.modelEntry)
            }

            root.isFavorite = dataModel.isFavorite(root.modelEntry)
            logic.favoritesChanged(root.modelEntry["name"])
        }

        Connections {
            target: logic

            onFavoritesChanged: {
                if (favorite === root.modelEntry["name"]) {
                    root.isFavorite = dataModel.isFavorite(root.modelEntry)
                }
            }
        }
        //        Rectangle {
        //            id: themGioHangBG
        //            width: dp(50)
        //            height: dp(50)
        //            color: "transparent"
        //            anchors.right: buttonThemGioHang.left
        //            anchors.top: buttonThemGioHang.top
        //            anchors.bottom: buttonThemGioHang.bottom

        //            AppText{
        //                id: themGioHangText
        //                text: "Thêm vào giỏ hàng"
        //                anchors.fill: parent
        //                fontSize: dp(10)
        //            }
        //        }

    }

    title: modelEntry.name


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
            bottomMargin: actuallyPlayingOverlay.visible ? actuallyPlayingOverlay.height : 0
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

            AppText {
                id: bookTitle
                anchors.horizontalCenter: parent.horizontalCenter

                font {
                    bold: true
                    pixelSize: sp(15)
                }
                width: dp(200)
                maximumLineCount: 2
                wrapMode: Text.Wrap
                elide: AppText.ElideRight
                text: modelEntry.title
            }

            NumberAnimation {
                id: textAnimation
                running: true
                target: bookTitle
                property: "x"
                from: 0
                to: -1000
                duration: 1000
            }

            Rectangle {
                id: ratingBG
                height: dp(20)
                width: dp(200)
                anchors.horizontalCenter: parent.horizontalCenter

                AppText{
                    id: star
                    text: "Hiển thị số đánh giá"
                }
            }

            Rectangle {
                id: priceBG
                height: dp(20)
                width: dp(200)
                color: "transparent"
                anchors.horizontalCenter: parent.horizontalCenter


                AppText {
                    id: mainPrice
                    anchors.left: bookTitle.left
                    width: AppText.width
                    //                    horizontalAlignment: AppText.AlignHCenter
                    verticalAlignment: AppText.AlignVCenter
                    color: Theme.textColor
                    font.bold: true
                    text: {
                        return modelEntry.mainPrice + " đ"
                    }
                }

                AppText {
                    id: originalPrice
                    width: AppText.width
                    //                    horizontalAlignment: AppText.AlignHCenter
                    verticalAlignment: AppText.AlignVCenter
                    anchors.left: mainPrice.right
                    anchors.leftMargin: dp(15)
                    color: Theme.textColor
                    fontSize: mainPrice.fontSize/1.5
                    text: {
                        return modelEntry.originalPrice + " đ"
                    }
                }

                AppText{
                    id: discount
                    width: AppText.width
                    //                    horizontalAlignment: AppText.AlignHCenter
                    verticalAlignment: AppText.AlignVCenter
                    anchors.left: originalPrice.right
                    anchors.leftMargin: dp(20)
                    font.bold: true
                    fontSize: mainPrice.fontSize/1.2
                    text: {
                        var discountPercentage = Math.floor(modelEntry.mainPrice) / Math.floor(modelEntry.originalPrice)
                        discountPercentage = discountPercentage*100
                        return "(-" + (100-Math.floor(discountPercentage)) + " %)"
                    }
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
                    soundManager.shufflePlay(root.modelEntry)
                    actuallyPlayingModal.open()
                }
            }
        }
    }
}
