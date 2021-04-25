import Felgo 3.0
import QtQuick 2.0
import QtGraphicalEffects 1.0
import "../model"
import "./components"
Page{
    id: root
    signal logOut()
    property string imagePath: ProjectPath.imagePath + "usericon.jpg"

    LinearGradient {
        anchors.fill: parent

        start: Qt.point(0, 0)
        end: Qt.point(root.width * 0.2, root.width * 0.7)
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#ffbf80" }
            GradientStop { position: 0.7; color: "#ffbf80" }
        }
    }

    ListPage {
        id: userProfileDetailPage
        title: "userProfileDetail"
        model: dataModel.filteredIssuesModel
        backgroundColor: "#ffbf80"

        delegate: SimpleRow {
            iconSource: index == 0 ? IconType.user : IconType.yahoo
            active: true
            text: model.title
            onSelected: {
                userProfileDetailPage.navigationStack.push(detailDelegateComponent, {issue: model})
            }
        }
    }


    Component {
        id: detailDelegateComponent
        DetailProfileDelegate {
        }
    }

    AppButton {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: dp(50)
        text: qsTr("Đăng Xuất")
        onClicked: {
            logoutDialog.open()
        }
    }
    Component.onCompleted: {
        console.log("aaaaaaaaaaaaaaaa ------ " + root.imagePath)
    }

    Dialog {
        id: logoutDialog
        title: "Bạn muốn thoát tài khoản ?"
        positiveActionLabel: "Đồng ý"
        negativeActionLabel: "Từ chối"
        onAccepted: {
            UserView.logout()
            root.logOut()
            close()
        }
        onCanceled: {
            close()
        }
    }
}
