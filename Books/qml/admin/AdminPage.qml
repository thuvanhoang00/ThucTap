import Felgo 3.0
import QtQuick 2.0
import QtGraphicalEffects 1.0
import "../model"

Page{
    id: root
    signal logOut()
    title: "Quản trị viên"
    LinearGradient {
        anchors.fill: parent

        start: Qt.point(0, 0)
        end: Qt.point(root.width * 0.2, root.width * 0.7)
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#ffbf80" }
            GradientStop { position: 0.7; color: "#ffbf80" }
        }
    }


    // rowModel
    JsonListModel {
        id: rowModel
        property var dataSource: [
            {
                "title": "Quản lý người dùng"
            },
            {
                "title": "Quản lý doanh thu"
            }
        ]

        fields: ["title"]
        source: rowModel.dataSource
    }

    // Thống kê
    JsonListModel {
        id: statisticModel
        property var dataSource: [
            {
                "ngay": "",
                "tongtien": "",
                "soluong" : ""
            }
        ]

        fields: ["ngay", "tongtien", "soluong"]
        source: statisticModel.dataSource
    }

    // Thành viên
    JsonListModel {
        id: userModel
        fields: ["username"]
    }


    ListPage {
        id: adminDetailPage
        title: "adminDetailPage"
        model: rowModel
        backgroundColor: "#ffbf80"

        delegate: SimpleRow {
            iconSource: {
                if(index === 0)
                    return IconType.users
                else if(index === 1)
                    return IconType.linechart
                else
                    return IconType.users
            }
            active: true
            text: model.title
            onSelected: {
                if(index === 0){
                    // lay thong tin nguoi dung tu SQL Database
                    getUsersFromSQL()
                    adminDetailPage.navigationStack.push(userDelegateComponent)
                }
                else if(index === 1){
                    getOrderHistory()
                    adminDetailPage.navigationStack.push(statisticDelegateComponent)
                }
            }
        }
    }

    function getUsersFromSQL(){
        var arr = UserView.getAllUsers()
        console.log("arrrr length = " + arr.length)
        for(const username of arr){
            var entry = {"username" : username}
            userModel.append(entry)
        }
    }

    Component {
        id: userDelegateComponent
        UserDelegate {
        }
    }

    Component {
        id: statisticDelegateComponent
        StatisticDelegate {
        }
    }


    // Model
    JsonListModel {
        id: historyModel
        property var dataSource: [
            {
                "ngay": "",
                "tongtien": "",
                "soluong" : ""
            }
        ]

        fields: ["ngay", "tongtien", "soluong"]
        source: historyModel.dataSource
    }

    function getOrderHistory(){
        historyModel.remove(0, historyModel.count)
        var daysEntry = datesArrStorage.getValue("ngay")
        if(daysEntry === undefined){
            return
        }
        for(const day of daysEntry){
            var revenueEntry = revenueStorage.getValue(day)
            var solg = revenueEntry["soluong"]
            var doanhthu = revenueEntry["doanhthu"]
            var arr = {"ngay": day, "tongtien": doanhthu, "soluong": solg}
            historyModel.append(arr)
        }

        console.log("soluong:" + solg + ", doanhthu: " + doanhthu)
    }

}
