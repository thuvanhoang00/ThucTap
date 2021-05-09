import Felgo 3.0
import QtQuick 2.0
import QtGraphicalEffects 1.0
import "../model"
Page {
    id: root

    title: "Quản lý người dùng"
    property int totalCartItem: 0
    property int totalPrice: 0
    property variant deleteUserArr : []
    onPopped: {
        console.log("quay lai tu man Userdelegate ")
        root.deleteUserArr = []
        userModel.clear(0, userModel.count)
    }

    function deleteUsers(){
        for(const us of deleteUserArr){
            console.log("Dang xoa: " + us)
            UserView.deleteUser(us)
        }
    }

    rightBarItem: TextButtonBarItem {
        width: dp(100)
        AppText{
            anchors.top: parent.top
            anchors.horizontalCenter: parent.horizontalCenter
            anchors.verticalCenter: parent.verticalCenter
            text: "Lưu"
            color: "white"
            font.bold: true
        }

        onClicked: {
            if(UserView.loginState == true){
                root.deleteUsers()
                xoaThanhCong.open()
            } else{

            }
        }
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
    AppListView {
        id: userItemList

        anchors {
            fill: parent
            bottomMargin: 0
        }

        emptyView.children: [
            AppText {
                anchors.centerIn: parent
                fontSize: 16
                font.bold: true
                text: qsTr("Không tồn tại tài khoản nào")
            }
        ]

        model: userModel

        delegate: UserItemRow {
            id: row

            // button to remove from List
            IconButton {
                id: removeButton
                icon: IconType.close
                anchors.right: parent.right
                anchors.verticalCenter: parent.verticalCenter
                onClicked: {
                    console.log("Xoa tai khoan: " + userModel.get(index)["username"])
                    root.deleteUserArr.push(userModel.get(index)["username"])
                    userModel.remove(index, 1)
                }
            }
        }
    }

    Dialog {
        id: xoaThanhCong
        title: "Thông báo"
        positiveActionLabel: "Đồng ý"
        negativeAction: false
        onAccepted: {
            close()
        }
        AppText {
            text: "Lưu thành công!"
            anchors.centerIn: parent
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: AppText.AlignHCenter
        }

    }
}
