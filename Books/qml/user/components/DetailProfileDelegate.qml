import Felgo 3.0
import QtQuick 2.0
import QtGraphicalEffects 1.0
import "../components"

Page {
    id: page
    property string rowTitle: ""
    backNavigationEnabled: true
    property string username: User.userName
    property string email: User.email
    property string phone: User.phone
    property string password: "123456"

    rightBarItem: TextButtonBarItem {
        text: "Lưu"
        onClicked: {
            save()
        }
    }

    Rectangle{
        anchors.fill: parent

        LinearGradient {
            anchors.fill: parent

            start: Qt.point(0, 0)
            end: Qt.point(root.width * 0.2, root.width * 0.7)
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#ffbf80" }
                GradientStop { position: 0.7; color: "#ffbf80" }
            }
        }

        Column {
            id: contentCol
            width: parent.width
            Rectangle{
                id: padding
                height: dp(20)
                width: parent.width
                color: "#ffbf80"
            }

            AppText{
                text: "Cập nhật thông tin tài khoản"
                font.bold: true
                x: dp(90)
            }
            TextFieldRow {
                id: username
                textItem.text: "Tên tài khoản"
                textFieldItem.text: page.username
                clickEnabled: true
                labelWidth: dp(140)
                color: "#ffbf80"
            }

            TextFieldRow {
                textItem.text: "Email"
                clickEnabled: true
                labelWidth: dp(140)
                textFieldItem.text: page.email
                color: "#ffbf80"
            }

            TextFieldRow {
                id: timeSpent
                textItem.text: "Số điện thoại"
                labelWidth: dp(140)
                textFieldItem.text:  page.phone
                color: "#ffbf80"
            }

            TextFieldRow {
                id: pass1
                textItem.text: "Mật khẩu"
                placeHolder: "Nhập mật khẩu"
                labelWidth: dp(140)
                color: "#ffbf80"
            }
            TextFieldRow {
                id: pass2
                textItem.text: "Xác nhận mật khẩu"
                placeHolder: "Nhập lại mật khẩu"
                labelWidth: dp(140)
                color: "#ffbf80"
            }
        }


    }


    FloatingActionButton {
        id: saveButton
        icon: IconType.save
        onClicked: {
            save()
        }

        PropertyAnimation {
            target: saveButton
            property: "anchors.bottomMargin"
            duration: 500
            easing.type: Easing.InQuart
            from: -8*saveButton.anchors.bottomMargin
            to: saveButton.anchors.bottomMargin
            running: true
        }
    }

    function save() {
        if(worklog) {
            dataModel.updateWorklog(issue, worklog, startDate, timeSpent.value, comment.value)
        } else {
            dataModel.addWorklog(issue, startDate, timeSpent.value, comment.value)
        }
        page.navigationStack.pop()
    }

}
