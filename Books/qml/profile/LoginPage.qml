import Felgo 3.0
import QtQuick 2.6

FlickablePage {
    id: root

    property bool allFieldsValid: nameField.isInputCorrect && passwordField.isInputCorrect
    //  title: qsTr("Đăng ký")
    flickable.contentHeight: content.height

    signal loginSucceeded()

    Column {
        id: content
        spacing: constants.defaultMargins
        topPadding: constants.defaultMargins
        bottomPadding: constants.defaultMargins
        anchors { left: parent.left; right: parent.right; margins: constants.defaultMargins }

        // we are not enforcing anything on its height. It will grow as necessary, and the page FlickablePage
        // will kick in making the content scrollable.

        ValidatedField {
            id: nameField
            label: qsTr("Tên tài khoản / Email")
            placeholderText: qsTr("Nhập tên tài khoản / email")

            // when the active focus is taken away from the textField we check if we need to display an error
            textField.onActiveFocusChanged: {
                hasError = !textField.activeFocus && !textField.acceptableInput
            }

            errorMessage: qsTr("Tên tài khoản không hợp lệ")
        }

        ValidatedField {
            id: passwordField

            // we display an error message if the password length is less than 6
            property bool isPasswordTooShort: textField.text.length > 0 && textField.text.length < 6

            // this hides characters by default
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
                loginSucceeded()
            }
        }
    }
    Constants {
        id: constants
    }
}

