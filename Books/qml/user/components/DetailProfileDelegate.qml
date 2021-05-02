import Felgo 3.0
import QtQuick 2.0
import QtGraphicalEffects 1.0
import "../components"
import "../../user"
Page {
    id: page
    property string rowTitle: ""
    backNavigationEnabled: true
    property string username: User.userName
    property string email: User.email
    property string phone: User.phone
    property string password: User.password

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
                id: usernameField
                textItem.text: "Tên tài khoản"
                textFieldItem.text: page.username
                clickEnabled: true
                labelWidth: dp(140)
                color: "#ffbf80"
            }

            TextFieldRow {
                id: emailField
                textItem.text: "Email"
                clickEnabled: true
                labelWidth: dp(140)
                textFieldItem.text: page.email
                color: "#ffbf80"
            }

            TextFieldRow {
                id: phoneField
                textItem.text: "Số điện thoại"
                labelWidth: dp(140)
                textFieldItem.text: User.phone
                color: "#ffbf80"

                textFieldItem.validator: RegExpValidator {
                    regExp: /^[0-9]{1,10}$/
                }
            }

            TextFieldRow {
                id: oldPass
                textItem.text: "Mật khẩu"
                placeHolder: "Nhập mật khẩu hiện tại"
                labelWidth: dp(140)
                color: "#ffbf80"
                textFieldItem.inputMode: textFieldItem.inputModePassword

            }

            TextFieldRow {
                id: pass1
                textItem.text: "Mật khẩu mới"
                placeHolder: "Nhập mật khẩu mới"
                labelWidth: dp(140)
                color: "#ffbf80"
                textFieldItem.inputMode: textFieldItem.inputModePassword
            }
            TextFieldRow {
                id: pass2
                textItem.text: "Xác nhận mật khẩu"
                placeHolder: "Nhập lại mật khẩu"
                labelWidth: dp(140)
                color: "#ffbf80"
                textFieldItem.inputMode: textFieldItem.inputModePassword

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
        // Kiểm tra các giá trị vừa nhập
        {
            console.log("Mat khau hien tai: " + User.password)
            if(phoneField.textFieldItem.text == User.phone &&
                    pass1.textFieldItem.text.length == 0 &&
                    pass2.textFieldItem.text.length == 0){
                dialogText.text = "Vui lòng nhập thông tin muốn thay đổi!"
            }
            if(phoneField.textFieldItem.text != User.phone ||
                    pass1.textFieldItem.text.length != 0 ||
                    pass2.textFieldItem.text.length != 0){
                // Kiem tra mat khau hien tai
                if(oldPass.textFieldItem.text != User.password){
                    dialogText.text = "Nhập sai mật khẩu hiện tại!"
                } else{
                    // Kiem tra sdt hop le hay khong
                    var sdt = false
                    if(phoneField.textFieldItem.text.length == 10 ||
                            phoneField.textFieldItem.text == User.phone){
                        sdt = true
                    }
                    // Kiem tra mat khau moi hop le hay khong
                    var mk = false
                    if(((pass1.textFieldItem.text.length >= 6) && (pass1.textFieldItem.text == pass2.textFieldItem.text))
                            || (pass1.textFieldItem.text.length == 0 && pass2.textFieldItem.text.length == 0)){
                        mk = true
                    }
                    // Ca 2 deu hop le thi moi thay doi
                    if ((sdt && mk) == true) {
                        // Lưu vào Database
                        var savePhone = phoneField.textFieldItem.text
                        var savePass  = (pass1.textFieldItem.text.length != 0) ? pass1.textFieldItem.text : User.password
                        UserView.changeUserProfile(User.userName, savePhone, savePass)
                        dialogText.text = "Thay đổi thành công!"
                    } else {
                        dialogText.text = "Sai thông tin!"
                    }
                }
            }
        }
        saveDialog.open()
        //        page.navigationStack.pop()
    }

    Dialog{
        id: saveDialog
        title: "Thông báo"
        positiveActionLabel: "Đồng ý!"
        negativeAction: false
        onAccepted: {
            // clear cac truong vua nhap
            phoneField.textFieldItem.text = User.phone
            pass1.textFieldItem.text = ""
            pass2.textFieldItem.text = ""
            oldPass.textFieldItem.text = ""
            close()
        }
        scaleAnimation.easing.type: Easing["OutBack"]
        scaleAnimation.duration: 400

        AppText{
            id: dialogText
            y: dp(50)
            width: parent.width
            anchors.horizontalCenter: parent.horizontalCenter
            horizontalAlignment: AppText.AlignHCenter
            text: ""
        }
    }
}
