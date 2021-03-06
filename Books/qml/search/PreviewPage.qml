import Felgo 3.0
import QtQuick 2.0
import QtGraphicalEffects 1.0

Page {
    id: root
    property var modelEntry: undefined
    //    property bool isFavorite: bookModel.isFavorite(root.modelEntry)

    backNavigationEnabled: true

    rightBarItem: IconButtonBarItem{
        id: cartIcon
        icon: IconType.cartplus
        iconSize: dp(35)
        color: "white"
        visible: User.userRole == 1

        onClicked: {
            if(UserView.loginState == true){
                bookModel.addToFavorites(root.modelEntry)
                logic.favoritesChanged(root.modelEntry["name"])
                cartIcon.color = "#00ff00"
                cartIcon.iconSize = dp(40)
                timer.start()
            }
            else {
                dangNhap.open()
            }
        }

        Timer{
            id: timer
            interval: 150
            onTriggered: {
                cartIcon.color = "white"
                cartIcon.iconSize = dp(35)

            }
        }
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

                source: Qt.resolvedUrl(bookModel.getCover(modelEntry))
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

                // gi?? b??n
                AppText {
                    id: mainPrice
                    anchors.left: priceBG.left
                    anchors.leftMargin: dp(0)
                    width: AppText.width
                    anchors.verticalCenter: parent.verticalCenter
                    verticalAlignment: AppText.AlignVCenter
                    //                    color: Theme.textColor
                    font.bold: true
                    text: {
                        return "Gi??: " + modelEntry.mainPrice + " ??"
                    }
                }
                // gi?? g???c
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
                        return modelEntry.originalPrice + " ??"
                    }
                }
                // % gi???m gi??
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
                visible: User.userRole == 1
                verticalPadding: dp(12)
                horizontalPadding: dp(45)

                radius: height / 2
                backgroundColor: Theme.tintColor
                textColor: Theme.textColor
                enabled: true
                flat: false
                text: "?????t mua" // click v??o ????y l?? chuy???n sang Tab gi??? h??ng
                textSize: sp(15)

                onClicked: {
                    if(UserView.loginState == false){
                        dangNhap.open()
                    }
                    else{
                        xacNhanDatMua.open()
                    }
                }
            }
            AppButton {
                anchors.horizontalCenter: parent.horizontalCenter

                height: dp(40)
                visible: User.userRole == 0
                verticalPadding: dp(12)
                horizontalPadding: dp(45)

                radius: height / 2
                backgroundColor: Theme.tintColor
                textColor: Theme.textColor
                enabled: true
                flat: false
                text: "S???a th??ng tin S??ch" // click v??o ????y l?? chuy???n sang Tab gi??? h??ng
                textSize: sp(15)

                onClicked: {
                    if(UserView.loginState == false){
                        //                        dangNhap.open()
                    }
                    else{
                        //                        xacNhanDatMua.open()
                    }
                }
            }
        }
    }

    Dialog {
        id: dangNhap
        title: "Th??ng b??o"
        positiveActionLabel: "?????ng ??"
        negativeAction: false
        onAccepted: {
            close()
        }
        AppText {
            text: "B???n c???n ????ng nh???p \n????? th???c hi???n ch???c n??ng n??y!"
            anchors.centerIn: parent
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: AppText.AlignHCenter
        }

    }

    Dialog {
        id: xacNhanDatMua
        title: "Th??ng b??o"
        positiveActionLabel: "?????ng ??"
        negativeActionLabel: "T??? ch???i"
        AppText {
            text: "B???n mu???n mua s???n ph???m n??y ch????"
            anchors.centerIn: parent
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: AppText.AlignHCenter
        }
        onAccepted: {
            datMua.open()
            close()
        }

        onCanceled: {
            close()
        }
    }

    Dialog {
        id: datMua
        title: "Th??ng b??o"
        positiveActionLabel: "?????ng ??"
        negativeAction: false
        onAccepted: {
            // luu thong tin ve Don hang nay
            var userName = User.userName
            var orderID = orderIDCountStorage.getValue("orderID")
            if(orderID === undefined){
                console.log("orderID are undefined -- preview page")

                orderID = 0
            }
            orderID += 1
            orderIDCountStorage.setValue("orderID", orderID)

            // Lay gia tien cua san pham nay
            // luu vao orderStorage
            var price =  modelEntry["mainPrice"]
            var tg = new Date().toLocaleTimeString()
            var arr = [price, tg]
            orderStorage.setValue(orderID, arr)

            // Luu ID cua don hang nay vao tai khoan
            var accountOrderIDs = accountStorage.getValue(userName)
            if(accountOrderIDs === undefined){
                console.log("accountOrderIDs are undefined -- preview page")
                accountOrderIDs = []
            }

            accountOrderIDs.push(orderID)
            accountStorage.setValue(userName, accountOrderIDs)

            var tg = new Date().toISOString().slice(0,10);
            var entry = revenueStorage.getValue(tg)
            var solg = 0
            var doanhthu = 0
            var days = datesArrStorage.getValue("ngay")
            if(entry == undefined){
                solg = 0
                doanhthu = 0
                if(days == undefined){
                    days = []
                }
                days.push(tg)
            } else {
                solg = entry["soluong"]
                doanhthu = entry["doanhthu"]
            }

            solg += 1
            doanhthu += parseInt(modelEntry.mainPrice)
            var arr = {"soluong": solg, "doanhthu": doanhthu}
//            var newEntry = {tg : arr }
            datesArrStorage.clearValue("ngay")
            datesArrStorage.setValue("ngay", days)
            revenueStorage.clearValue(tg)
            revenueStorage.setValue(tg, arr)
            console.log("ngay dat mua: " + tg + " chi tiet: " + arr)

            close()
        }
        AppText {
            text: "?????t mua th??nh c??ng!\n Vui l??ng thanh to??n: " + modelEntry["mainPrice"] + " ??"
            anchors.centerIn: parent
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: AppText.AlignHCenter
        }

    }
}
