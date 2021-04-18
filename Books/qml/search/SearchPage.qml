import Felgo 3.0
import QtQuick 2.0
import QtGraphicalEffects 1.0
//import "../components"


Page {
    id: root

    property alias searchTerm: searchBar.text
    LinearGradient {
        anchors.fill: parent

        start: Qt.point(0, 0)
        end: Qt.point(root.width * 0.2, root.width * 0.7)
        gradient: Gradient {
            GradientStop { position: 0.0; color: "#ffbf80" }
            GradientStop { position: 0.7; color: "#ffbf80" }
        }
    }

    onPushed: {
        if (searchTerm != "") {
            dataModel.buildModelUponSearch(searchTerm)
        } else {
            searchBar.textField.forceActiveFocus()
        }
    }

    rightBarItem: NavigationBarItem {
        Row {
            property real backButtonWidth: dp(Theme.navigationBar.height)
            height: dp(Theme.navigationBar.height)
            width: root.width - backButtonWidth
            anchors.right: parent.right

            SearchBar {
                id: searchBar
                inputBackgroundColor: Theme.backgroundColor
                barBackgroundColor: "transparent"
                showClearButton: false
                anchors.verticalCenter: parent.verticalCenter

                width: textField.displayText != "" ? parent.width - clearButton.width - dp(Theme.contentPadding) : parent.width
                Behavior on width {NumberAnimation{duration: 150; easing.type: Easing.InOutQuad}}

                textField.onDisplayTextChanged: {
                    dataModel.buildModelUponSearch(textField.displayText)
                }
            }

            AppButton {
                id: clearButton
                flat: true
                text: "Clear"
                anchors.verticalCenter: parent.verticalCenter
                horizontalMargin: 0
                textColor: Theme.textColor
                textColorPressed: Qt.darker(Theme.textColor, 1.2)
                textSize: sp(14)

                opacity: searchBar.textField.displayText != ""
                Behavior on opacity {NumberAnimation{duration: 150}}

                onClicked: {
                    searchBar.textField.focus = false
                    searchBar.textField.clear()
                }
            }
        }
    }

    AppListView {
        id: searchResultsList

        anchors {
            fill: parent
            bottomMargin: actuallyPlayingOverlay.visible ? actuallyPlayingOverlay.height : 0
        }

        emptyView.children: [
            Column {
                anchors.centerIn: parent
                width: searchResultsList.width * 0.75
                spacing: dp(10)

                AppText {
                    width: parent.width

                    fontSize: 18
                    font.bold: true
                    horizontalAlignment: Text.AlignHCenter
                    text: qsTr("Bạn muốn tìm sách gì?")
                }

                AppText {
                    width: parent.width

                    color: Theme.secondaryTextColor
                    fontSize: 12
                    horizontalAlignment: Text.AlignHCenter
                    text: qsTr("Hãy tìm kiếm sách theo tên")
                    wrapMode: Text.WordWrap
                }
            }
        ]

        model: dataModel

        delegate: SearchPageRow {

            onSelected: {
                root.navigationStack.push(previewPageComponent, {"modelEntry": model})
            }
        }
    }
}
