import Felgo 3.0
import QtQuick 2.0
import "../model"
import "../components"
Page{
    id: root
    signal logOut()
    ListPage {
        id: userProfileDetailPage
        title: "userProfileDetail"
        model: dataModel.filteredIssuesModel

        delegate: SimpleRow {
            imageSource: Qt.resolvedUrl(model.imageSrc)
            text: model.title
            detailText: model.label
            badgeValue: dataModel.getStatus(model.status)
            badgeColor: "#172B4D"
            onSelected: {
                userProfileDetailPage.navigationStack.push(worklogDetailPageComponent, {issue: model})
            }
        }
        Component {
            id: worklogDetailPageComponent
            WorklogDetailPage {
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
//            UserView.logout()
            root.logOut()
        }
    }
}
