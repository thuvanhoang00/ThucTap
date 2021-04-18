import Felgo 3.0
import QtQuick 2.0
import "../components"

Page {
    id: page
    property string rowTitle: ""
    backNavigationEnabled: true
    property string username: UserView.userName
    property string email: "email@gmail.com"
    property string phone: "0999999999"
    property string password: "123456"

    rightBarItem: TextButtonBarItem {
        text: "Lưu"
        onClicked: {
            save()
        }
    }

    Column {
        id: contentCol
        width: parent.width

        Rectangle{
            id: padding
            height: dp(20)
            width: parent.width
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
        }

        TextFieldRow {
            textItem.text: "Email"
            clickEnabled: true
            labelWidth: dp(140)
            textFieldItem.text: page.email
        }

        TextFieldRow {
            id: timeSpent
            textItem.text: "Số điện thoại"
            labelWidth: dp(140)
            textFieldItem.text:  page.phone
        }

        TextFieldRow {
            id: pass1
            textItem.text: "Mật khẩu"
            placeHolder: "Nhập mật khẩu"
            labelWidth: dp(140)
        }
        TextFieldRow {
            id: pass2
            textItem.text: "Xác nhận mật khẩu"
            placeHolder: "Nhập lại mật khẩu"
            labelWidth: dp(140)
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
