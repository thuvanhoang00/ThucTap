import Felgo 3.0
import QtQuick 2.6

FlickablePage {
    id: root

    property bool allFieldsValid: nameField.isInputCorrect && emailField.isInputCorrect && passwordField.isInputCorrect && confirmPasswordField.isInputCorrect && termsOfServiceCheck.checked

    //  title: qsTr("Đăng ký")
    flickable.contentHeight: content.height

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
            label: qsTr("Tên tài khoản")
            placeholderText: qsTr("Nhập tên tài khoản")

            // we only allow names composed by letters and spaces
            validator: RegExpValidator {
                regExp: /[\w ]+/
            }

            // when the active focus is taken away from the textField we check if we need to display an error
            textField.onActiveFocusChanged: {
                hasError = !textField.activeFocus && !textField.acceptableInput
            }

            errorMessage: qsTr("Tên tài khoản không hợp lệ")
        }

        ValidatedField {
            id: emailField
            label: qsTr("Email")
            placeholderText: qsTr("Nhập email")

            // when the active focus is taken away from the textField we check if we need to display an error
            textField.onActiveFocusChanged: {
                hasError = !textField.activeFocus && !textField.acceptableInput
            }

            errorMessage: qsTr("Địa chỉ email không hợp lệ")

            // customize the text field to automatically discard invalid input and displays a "clear" text icon
            textField.inputMode: textField.inputModeEmail
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

        ValidatedField {
            id: confirmPasswordField

            property bool arePasswordsDifferent: passwordField.textField.text != confirmPasswordField.textField.text

            label: qsTr("Xác nhận mật khẩu")
            placeholderText: qsTr("Xác nhận mật khẩu")
            textField.inputMode: textField.inputModePassword

            // we display an error message when the two password are different
            hasError: arePasswordsDifferent
            errorMessage: qsTr("Mật khẩu không khớp")
        }

        AppCheckBox {
            id: termsOfServiceCheck
            width: parent.width
            text: qsTr("Chấp nhận điều khoản sử dụng")
        }
        AppButton {
            anchors.horizontalCenter: parent.horizontalCenter
            enabled: root.allFieldsValid
            text: qsTr("Đăng ký")
            onClicked: {
                UserView.userRegister(nameField.textField.text, emailField.textField.text, "999999", passwordField.textField.text)
            }
        }
    }
    Constants {
        id: constants
    }
}

