import Felgo 3.0
import QtQuick 2.0
import QtGraphicalEffects 1.0
import "../model"
Page {
    id: root

    title: "Giỏ hàng"
    property int totalCartItem: 1
    property int totalPrice: 0

    rightBarItem: TextButtonBarItem {
        width: dp(100)
        AppText{
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: "Đặt mua"
            color: "white"
            font.bold: true
            fontSize: dp(10)
        }

        onClicked: {
            if(UserView.loginState == false){
                dangNhap.open()
            } else{
                xacNhanDatMua.open()
            }
        }
        visible: root.totalCartItem > 0 ? true : false
    }


    LinearGradient {
        anchors.fill: parent

        start: Qt.point(0, 0)
        end: Qt.point(root.width * 0.2, root.width * 0.7)
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#ffbf80" }
            GradientStop { position: 0.7; color: "#ffbf80" }
        }
    }
    /*-----------------------------MODEL----------------------------------*/

    BookModel{
        id: cartItemModel

    }
    /*-----------------------------------------------------------------------*/
    AppListView {
        id: cartItemList

        anchors {
            fill: parent
            bottomMargin: 0
        }

        emptyView.children: [
            AppText {
                anchors.centerIn: parent

                fontSize: 16
                font.bold: true
                text: qsTr("Không có sản phẩm nào trong giỏ")
            }
        ]

        model: cartItemModel

        delegate: CartItemRow {
            id: row

            // button to remove from List
            IconButton {
                id: removeButton
                icon: IconType.close
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                onClicked: {
                    for(var i = 0; i < cartItemModel.count; i++){
                        if(cartItemModel.get(i).title == row.text){
                            cartItemModel.remove(i, 1)
                            cartItemModel.removeFromFavorites(row.text, cartItemModel.get(index).mainPrice)
                            break
                        }
                    }
                }
            }
            AppText {
                id: itemCount
                text: "Số lượng: " + storage.getValue(row.text)
                anchors.right: removeButton.left
                anchors.rightMargin: dp(50)
                anchors.verticalCenter: removeButton.verticalCenter
                color: "#993300"

            }

            AppText {
                id: itemPrice
                text: "Giá: " + cartItemModel.get(index).mainPrice
                anchors.right: itemCount.left
                anchors.rightMargin: dp(50)
                anchors.verticalCenter: itemCount.verticalCenter
                color: "#993300"
            }

        }
    }

    onPushed: {
        cartItemModel.showFavorites()
    }

    Connections {
        target: logic

        onFavoritesChanged: {
            cartItemModel.showFavorites()
        }
    }


    Dialog {
        id: dangNhap
        title: "Thông báo"
        positiveActionLabel: "Đồng ý"
        negativeAction: false
        onAccepted: {
            close()
        }
        AppText {
            text: "Bạn cần đăng nhập \nđể thực hiện chức năng này!"
            anchors.centerIn: parent
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: AppText.AlignHCenter
        }

    }

    Dialog {
        id: xacNhanDatMua
        title: "Thông báo"
        positiveActionLabel: "Đồng ý"
        negativeActionLabel: "Từ chối"
        AppText {
            text: "Bạn muốn mua sản phẩm này chứ?"
            anchors.centerIn: parent
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: AppText.AlignHCenter
        }
        onAccepted: {
            root.totalPrice = storage.getValue("TongTien")
            datMua.open()
            close()
        }

        onCanceled: {
            close()
        }
    }

    Dialog {
        id: datMua
        title: "Thông báo"
        positiveActionLabel: "Đồng ý"
        negativeAction: false
        onAccepted: {
            close()
        }
        AppText {
            text: "Đặt mua thành công!\n Vui lòng thanh toán: " + root.totalPrice + " đ"
            anchors.centerIn: parent
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: AppText.AlignHCenter
        }

    }
}
