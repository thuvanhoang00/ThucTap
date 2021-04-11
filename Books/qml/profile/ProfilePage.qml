import Felgo 3.0
import QtQuick 2.0
import "../model"
import "../components"
Page{
    id: root
    signal logOut()
    ListPage {
        id: page
        title: "Jira Issues"
        model: dataModel.filteredIssuesModel

        delegate: SimpleRow {
            imageSource: Qt.resolvedUrl(model.imageSrc)
            text: model.title
            detailText: model.label
            badgeValue: dataModel.getStatus(model.status)
            badgeColor: dataModel.getStatusColor(model.status)
            onSelected: {
                page.navigationStack.push(worklogDetailPageComponent, {issue: model})
            }
        }
        Component {
            id: worklogDetailPageComponent
            WorklogDetailPage {

            }
        }

    }
    AppButton {
        anchors.horizontalCenter: parent.horizontalCenter
        anchors.bottom: parent.bottom
        anchors.bottomMargin: 50
        text: qsTr("Đăng Xuất")
        onClicked: {
            root.logOut()
        }
    }
}
