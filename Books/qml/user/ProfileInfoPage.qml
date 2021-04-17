import Felgo 3.0
import QtQuick 2.0
import "../model"
import "./components"
Page{
    id: root
    signal logOut()
    ListPage {
        id: userProfileDetailPage
        title: "userProfileDetail"
        model: dataModel.filteredIssuesModel

        delegate: SimpleRow {
            imageSource: "http://simpleicon.com/wp-content/uploads/user1.svg"
            text: model.title
            detailText: model.label
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
}
