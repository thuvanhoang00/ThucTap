import Felgo 3.0
import QtQuick 2.0
import "../model"
import "./components"
Page{
    id: root
    signal logOut()
    property string imagePath: ProjectPath.imagePath + "usericon.jpg"
    ListPage {
        id: userProfileDetailPage
        title: "userProfileDetail"
        model: dataModel.filteredIssuesModel

        delegate: SimpleRow {
            imageSource: root.imagePath
            text: model.title
//            detailText: model.label
            onSelected: {
                userProfileDetailPage.navigationStack.push(detailDelegateComponent, {issue: model})
            }
        }
        Component {
            id: detailDelegateComponent
            DetailProfileDelegate {
                rowTitle: dataModel.title
            }
        }

    }
    AppButton {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: dp(50)
        text: qsTr("Đăng Xuất")
        onClicked: {
            UserView.logout()
            root.logOut()
        }
    }
    Component.onCompleted: {
        console.log("aaaaaaaaaaaaaaaa ------ " + root.imagePath)
    }
}
