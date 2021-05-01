import Felgo 3.0
import QtQuick 2.0
import QtGraphicalEffects 1.0
import "../model"
Page {
    id: root

    title: "Giỏ hàng"
    property int totalCartItem: 1

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
            save()
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
    /*-----------------------------------------------------------------------*/
    BookModel{
        id: cartItemModel

    }

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
                            bookModel.removeFromFavorites(row.text)
                            break
                        }
                    }
                }
            }
            AppText {
                id: itemPrice
                text: "Số lượng: " + storage.getValue(row.text)
                anchors.right: removeButton.left
                anchors.rightMargin: dp(50)
                anchors.verticalCenter: removeButton.verticalCenter
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
}
