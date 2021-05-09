import Felgo 3.0
import QtQuick 2.0
import QtQuick.Layouts 1.11

Item {
  id: root

  property string orderID
  property string thoiGian
  property string thanhTien
  property bool orderComplete

  // Each entry will have its pseudo random color (or grey if in draft)
  property color color: "#00cc66"
  property color textColor: "#99000000"
  property color iconColor: Qt.darker(color, 1.5)
  property real margins: dp(20)

  height: Math.max(tongtien.contentHeight + 6 * margins, dp(100))
  width: parent.width

  AppPaper {
    anchors.fill: parent
    anchors.margins: margins
    background.color: color
    background.radius: margins
    elevated: true
    shadowColor: "#44000000"

//    AppText {
//      id: id
//      anchors { left: tongtien.right; leftMargin: dp(40); top: parent.top; margins: root.margins * 2 }
////      anchors { left: parent.left; right: icon.left; top: parent.top; margins: root.margins * 2 }
//      color: textColor
//      text: orderID
//    }
    AppText {
      id: thoigian
      anchors { left: tongtien.right; leftMargin: dp(15); right: icon.left; rightMargin: dp(5); top: parent.top; margins: root.margins * 2 }
//      anchors { left: id.left; leftMargin: dp(70); top: parent.top; margins: root.margins * 2 }
      maximumLineCount: 3
      color: textColor
      text: thoiGian
    }
    AppText {
      id: tongtien
      anchors { left: parent.left; top: parent.top; margins: root.margins * 2 }
//      anchors { left: thoigian.right; leftMargin: dp(20); right: icon.left; top: parent.top; margins: root.margins * 2 }
      color: textColor
      text: thanhTien
    }

    // A checked icon will be displayed when completed
    Icon {
      id: icon
      anchors { right: parent.right; verticalCenter: parent.verticalCenter }
      width: dp(48)
      height: dp(48)
      color: iconColor
      visible: orderComplete
      icon: IconType.checkcircle
    }

//    MouseArea {
//      anchors.fill: parent
//      onClicked: page.navigationStack.popAllExceptFirstAndPush(detailPageComponent, { todoId: root.todoId })
//    }
  }
}
