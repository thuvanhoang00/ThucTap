import Felgo 3.0
import QtQuick 2.0
import QtQml.Models 2.3
import QtGraphicalEffects 1.0

Page {
  id: root

  signal searchRequested(string term)

  navigationBarHidden: true
  useSafeArea: false

  LinearGradient {
      anchors.fill: parent

      start: Qt.point(0, 0)
      end: Qt.point(root.width * 0.2, root.width * 0.7)
      gradient: Gradient {
          GradientStop { position: 0.0; color: "#ffbf80" }
          GradientStop { position: 0.7; color: "#ffbf80" }
      }
  }

  AppFlickable {
    id: flickable

    anchors.fill: parent
    anchors.topMargin: Theme.statusBarHeight
    anchors.bottomMargin: 0
    contentHeight: column.height
    contentWidth: parent.width

    Column {
      id: column
      width: parent.width
      spacing: dp(15)

      Item {
        id: titleContainer
        width: parent.width
        height: dp(150)

        AppText {
          anchors {
            horizontalCenter: parent.horizontalCenter
            bottom: parent.bottom
            bottomMargin: dp(20)
          }

          font {
            bold: true
            pixelSize: sp(40)
          }

          text: "Tìm kiếm"
        }
      }

      Item {
        width: parent.width
        height: mockedSearchBar.height
        z: 1000

        MockedSearchBar {
          id: mockedSearchBar

          y: flickable.contentY > titleContainer.height + dp(15) ? flickable.contentY - (titleContainer.height + dp(15)) : 0

          onClicked: {
            root.searchRequested("")
          }
        }
      }

      AppText {
        id: browseLabel

        anchors {
          left: parent.left
          leftMargin: parent.width * 0.05
        }

        font.bold: true
        text: qsTr("Tìm theo")
      }

      Grid {
        width: parent.width
        columns: 2

        Repeater {
          model: ListModel {
            ListElement {
              term: "Tất cả"
              tileColor: "#f59a25"
            }
            ListElement {
              term: "Giảm giá mạnh"
              tileColor: "#768d9b"
            }
            ListElement {
              term: "Công nghệ-Tin học"
              tileColor: "#4a927e"
            }
            ListElement {
              term: "Văn học-Tiểu thuyết"
              tileColor: "#ff6537"
            }
            ListElement {
              term: "Thiếu Nhi"
              tileColor: "#f135a3"
            }
            ListElement {
              term: "Lịch sử-Địa lý"
              tileColor: "#f14735"
            }
            ListElement {
              term: "Pháp luật"
              tileColor: "#f59a25"
            }
            ListElement {
              term: "Kinh tế"
              tileColor: "#768d9b"
            }
            ListElement {
              term: "Sức khỏe-Y học"
              tileColor: "#4a927e"
            }
          }

          Rectangle {
            color: Qt.rgba(Math.random(),Math.random(),Math.random(),1);
            width: parent.width / 2
            height: dp(30)
          }

          SearchTermTile {
            width: parent.width / 2
            height: dp(100)

            margins: root.width * 0.05

            onSelected: {
              root.searchRequested(term)
            }
          }
        }
      }
    }
  }
}
