import Felgo 3.0
import QtQuick 2.12
import QtGraphicalEffects 1.0

import "../model"
Page {
    id: root
    //    title: "Tài khoản"

    property string pageTitle: "Tài khoản"
    title: root.pageTitle

    LinearGradient {
        anchors.fill: parent

        start: Qt.point(0, 0)
        end: Qt.point(root.width * 0.2, root.width * 0.7)
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#ffbf80" }
            GradientStop { position: 0.7; color: "#ffbf80" }
        }
    }
    DataModel {
        id: dataModel
    }

    ProfilePage {
        id: thongtinCaNhan
        visible: false
        onLogOut: {
            console.log("Logout successful!")
            tab.logOutOK()
        }
    }

    Navigation {
        id: tab
        signal loginOK()
        signal logOutOK()


        NavigationItem {
            id: login
            title: "Login"
            showItem: true
            icon: IconType.user
            LoginPage {
                id: logPage
                onLoginSucceeded: {
                    tab.loginOK()
                    console.log("Login successful!")
                }
            }
            onSelected: {
                root.title = "Login"
            }
        }

        NavigationItem {
            id: register
            title: "Register"
            icon: IconType.plus
            showItem: true
            SignupPage {
                id: regPage
            }
            onSelected: {
                root.title = "Register"
            }
        }

        onLoginOK: {
            login.showItem = false
            register.showItem = false
            thongtinCaNhan.visible = true
            tab.visible = false
            // Dang Nhap thanh cong => show loading
            console.log("an cac tab")
        }

        onLogOutOK: {
            login.showItem = true
            register.showItem = true
            thongtinCaNhan.visible = false
            tab.visible = true
            // Dang Nhap thanh cong => show loading
            console.log("hien cac tab")
        }
    }

}
