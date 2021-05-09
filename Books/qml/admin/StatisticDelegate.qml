import Felgo 3.0
import QtQuick 2.0
import QtGraphicalEffects 1.0


Page {
    id: page
    title: "Quản lý doanh thu"
    property string rowTitle: ""
    backNavigationEnabled: true

    Rectangle{
        anchors.fill: parent
        LinearGradient {
            anchors.fill: parent

            start: Qt.point(0, 0)
            end: Qt.point(root.width * 0.2, root.width * 0.7)
            gradient: Gradient {
                GradientStop { position: 0.0; color: "#ffbf80" }
                GradientStop { position: 0.7; color: "#ffbf80" }
            }
        }

        AppText {
            anchors.centerIn: parent
            text: "Không có lịch sử mua hàng"
            visible: historyModel.count < 1
        }

        AppListView {
            id: listView
            anchors.fill: parent

            model: historyModel
            visible: historyModel.count > 0
            delegate: StatisticEntry {
                orderID:  "Số lượng bán: " + model.soluong
                thanhTien:"Thu được: " + model.tongtien
                thoiGian: "Ngày: " + model.ngay
                orderComplete: true
            }
        }
    }
    Component.onCompleted: {
        console.log("historyModel.count = " +  historyModel.count)
    }
}
