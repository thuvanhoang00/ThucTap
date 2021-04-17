import Felgo 3.0
import QtQuick 2.6
import QtGraphicalEffects 1.0

FlickablePage {
    id: root

    property bool allFieldsValid: nameField.isInputCorrect && passwordField.isInputCorrect
    flickable.contentHeight: content.height

    signal loginSucceeded()
    signal loginFailed()

    Column {
        id: content
        spacing: constants.defaultMargins
        topPadding: constants.defaultMargins
        bottomPadding: constants.defaultMargins
        anchors { left: parent.left; right: parent.right; margins: constants.defaultMargins }

        ValidatedField {
            id: nameField
            label: qsTr("Tên tài khoản / Email")
            placeholderText: qsTr("Nhập tên tài khoản / email")

            textField.onActiveFocusChanged: {
                hasError = !textField.activeFocus && !textField.acceptableInput
            }

            errorMessage: qsTr("Tên tài khoản không hợp lệ")
        }

        ValidatedField {
            id: passwordField

            property bool isPasswordTooShort: textField.text.length > 0 && textField.text.length < 6

            textField.inputMode: textField.inputModePassword
            label: qsTr("Mật khẩu")
            placeholderText: qsTr("Nhập mật khẩu")

            hasError: isPasswordTooShort
            errorMessage: qsTr("Mật khẩu quá ngắn")
        }

        AppButton {
            anchors.horizontalCenter: parent.horizontalCenter
            enabled: root.allFieldsValid
            text: qsTr("Đăng nhập")
            onClicked: {
                var name = nameField.textField.text
                var password = passwordField.textField.text
                UserView.login(name, password)
                if(UserView.loginState == true){
                    loginSucceeded()
                }
                else{
                    loginFailed()
                }
            }
        }
    }
    Constants {
        id: constants
    }
}
