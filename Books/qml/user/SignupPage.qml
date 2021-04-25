import Felgo 3.0
import QtQuick 2.6
import QtGraphicalEffects 1.0

Page {
    id: root

    property bool allFieldsValid: nameField.isInputCorrect
                                  && emailField.isInputCorrect
                                  && passwordField.isInputCorrect
                                  && phoneField.isInputCorrect
                                  && confirmPasswordField.isInputCorrect
                                  && termsOfServiceCheck.checked

    LinearGradient {
        anchors.fill: parent

        start: Qt.point(0, 0)
        end: Qt.point(root.width * 0.2, root.width * 0.7)
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#ffbf80" }
            GradientStop { position: 0.7; color: "#ffbf80" }
        }
    }

    signal registerSucceed()

    Column {
        id: content
        spacing: constants.defaultMargins
        topPadding: constants.defaultMargins
        bottomPadding: constants.defaultMargins
        anchors { left: parent.left; right: parent.right; margins: constants.defaultMargins }

        ValidatedField {
            id: nameField
            label: qsTr("Tên tài khoản")
            placeholderText: qsTr("Nhập tên tài khoản")

            // Chi chap nhan chu cai va so va _
            validator: RegExpValidator {
                regExp: /^[a-zA-Z0-9_.-]*$/
            }
            textField.onActiveFocusChanged: {
                hasError = !textField.activeFocus && !textField.acceptableInput
            }
            errorMessage: qsTr("Tên tài khoản không hợp lệ")
        }

        ValidatedField {
            id: emailField
            label: qsTr("Email")
            placeholderText: qsTr("Nhập email")

            textField.onActiveFocusChanged: {
                hasError = !textField.activeFocus && !textField.acceptableInput
            }
            errorMessage: qsTr("Địa chỉ email không hợp lệ")

            textField.inputMode: textField.inputModeEmail
        }

        ValidatedField {
            id: phoneField
            label: qsTr("Số điện thoại")
            placeholderText: qsTr("Nhập Số điện thoại")
            validator: RegExpValidator {
                regExp: /^[0-9]{1,10}$/

            }
            property bool isPhoneNumberTooShort: textField.text.length > 0 && textField.text.length < 10

            hasError: isPhoneNumberTooShort
            errorMessage: qsTr("Số điện thoại không hợp lệ")
            textField.inputMode: textField.inputModeDefault
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

        ValidatedField {
            id: confirmPasswordField

            property bool arePasswordsDifferent: passwordField.textField.text != confirmPasswordField.textField.text

            label: qsTr("Xác nhận mật khẩu")
            placeholderText: qsTr("Xác nhận mật khẩu")
            textField.inputMode: textField.inputModePassword

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
                var isSucceed = UserView.userRegister(nameField.textField.text, emailField.textField.text, phoneField.textField.text, passwordField.textField.text)
                if(isSucceed){
                    succeedDialog.open()
//                    root.registerSucceed()
                } else{
                    failedDialog.open()
                }
            }
        }
    }
    Constants {
        id: constants
    }

    Dialog{
        id: succeedDialog
        title: "Đăng ký thành công!"
        positiveActionLabel: "Tiếp tục"
        negativeAction: false
        onAccepted: {
            root.registerSucceed()
            close()
        }
    }

    Dialog{
        id: failedDialog
        title: "Đăng ký không thành công! Thông tin không hợp lệ"
        positiveActionLabel: "Tiếp tục"
        negativeAction: false
        onAccepted: {
            // Clear het cac truong vua nhap
            termsOfServiceCheck.checked = false
            nameField.textField.text = ""
            emailField.textField.text = ""
            passwordField.textField.text = ""
            confirmPasswordField.textField.text = ""
            phoneField.textField.text = ""
            close()
        }

    }
}

