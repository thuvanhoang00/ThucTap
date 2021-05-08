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


    // Model
    JsonListModel {
        id: historyModel
        property var dataSource: [
            {
                "id": "",
                "tongtien": "",
                "thoigian" : ""
            },
        ]

        fields: ["id", "tongtien", "thoigian"]
        source: historyModel.dataSource
    }


    ListPage {
        id: userProfileDetailPage
        title: "userProfileDetail"
        model: dataModel.filteredIssuesModel
        backgroundColor: "#ffbf80"

        delegate: SimpleRow {
            iconSource: {
                if(index === 0)
                    return IconType.user
                else if(index === 1)
                    return IconType.history
                else if(index === 2)
                    return IconType.history
                else
                    return IconType.user
            }
            active: true
            text: model.title
            onSelected: {
                if(index === 0)
                    userProfileDetailPage.navigationStack.push(detailDelegateComponent, {issue: model})
                else if(index === 1){
                    if(User.userRole==1)
                    {
                        getOrderHistory()
                        userProfileDetailPage.navigationStack.push(historyDelegateComponent, {issue: model})
                    }
                }
            }
        }
    }


    Component {
        id: detailDelegateComponent
        DetailProfileDelegate {
        }
    }

    Component {
        id: historyDelegateComponent
        HistoryDelegate {
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
            storage.clearValue("favorites")
            storage.clearValue("TongTien")
            UserView.logout()
            root.logOut()
            close()
        }
        onCanceled: {
            close()
        }
    }

    function getOrderHistory(){
        historyModel.remove(0, historyModel.count)

        var username = User.userName
        var accountOrderIds = accountStorage.getValue(username)
        if(accountOrderIds === undefined){
            console.log("accountOrderIds are undefined")
            accountOrderIds = []
        }
        console.log("username:" + username + ", accountOrderIds: " + accountOrderIds.length)
        for(const id of accountOrderIds){
            // tu ID lay duoc thong tin ve don hang do
            var tongTien = orderStorage.getValue(id)[0]
            var tg = orderStorage.getValue(id)[1]
            console.log("THOI GIAN: " + tg)
            var entry = {"id": id, "tongtien": tongTien, "thoigian": tg}
            historyModel.append(entry)
        }
    }
}
