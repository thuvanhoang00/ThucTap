import Felgo 3.0
import QtQuick 2.12
import QtGraphicalEffects 1.0
import "../model"

Page {
    id: root
    property string pageTitle: "Tài khoản"
    title: root.pageTitle

    signal loginOK()
    signal logOutOK()


    LinearGradient {
        anchors.fill: parent

        start: Qt.point(0, 0)
        end: Qt.point(root.width * 0.2, root.width * 0.7)
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#ffbf80" }
            GradientStop { position: 0.7; color: "#ffbf80" }
        }
    }
    UserModel {
        id: dataModel
    }

    Navigation {
        id: tab

        NavigationItem {
            id: login
            title: "Đăng nhập"
            showItem: true
            icon: IconType.user
            LoginPage {
                id: loginPage
                onLoginSucceeded: {
                    root.loginOK()
                    console.log("Login successful!")
                }
            }
        }

        NavigationItem {
            id: register
            title: "Đăng ký"
            icon: IconType.plus
            showItem: true
            SignupPage {
                id: registerPage
                onRegisterSucceed: {
                    root.loginOK()
                    console.log("Dang ky thanh cong => Login")
                }
            }
        }
    }
    onLoginOK: {
        login.showItem = false
        register.showItem = false
        thongtinCaNhan.visible = true
        tab.visible = false
        console.log("an cac tab")
    }

    onLogOutOK: {
        login.showItem = true
        register.showItem = true
        thongtinCaNhan.visible = false
        tab.visible = true
        console.log("hien cac tab")
    }

    ProfileInfoPage {
        id: thongtinCaNhan
        visible: false
        onLogOut: {
            console.log("Logout successful!")
            root.logOutOK()
        }
    }
}
