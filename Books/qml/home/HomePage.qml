import Felgo 3.0
import QtQuick 2.8
import QtGraphicalEffects 1.0
import "./components"
import "./model"

Page {
    id: root
    title: "Trang chủ"
    property bool isLogged: UserView.loginState
    property string userName: UserView.userName
    property string role: ""
    rightBarItem:   TextButtonBarItem{
        width: dp(200)
        AppText{
            id: name
            anchors.top: parent.top
            anchors.topMargin: dp(15)
            anchors.horizontalCenter: parent.horizontalCenter
            fontSize: dp(12)
            font.bold: true
            color: "white"
            text: "Xin chào! " + "root.userNamzzze"
        }
        AppText {
            id: role
            anchors.top: name.bottom
            anchors.topMargin: dp(5)
            fontSize: dp(10)
            color: "white"
            anchors.horizontalCenter: name.horizontalCenter
            text: "(" + "admin" +")"
            opacity: 0.6
        }
        visible: root.isLogged
    }

    DataModel {
        id: dataModel
    }

    BookModel {
        id: bookModel
    }

    Rectangle {
        z: 1
        width: parent.width
        height: Theme.statusBarHeight
        color: "#000"
        opacity: Math.min(1,flickable.contentY / dp(300)) * 0.75
    }

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
        anchors {
            fill: parent
        }

        contentHeight: column.height

        Column {
            id: column

            topPadding: Theme.statusBarHeight + dp(Theme.navigationBar.height)
            width: parent.width
            spacing: dp(30)


            /***************************
             ***
             *** them San pham vua xem
             ***************************/

            Column {
                id: madeForYouColumn

                width: parent.width
                spacing: dp(20)
                visible: homePageModels.madeForYouModel.count > 0

                AppText {
                    font.bold: true
                    fontSize: 24
                    leftPadding: dp(Theme.contentPadding)
                    text: "Dành riêng cho bạn"
                }

                AppFlickable {
                    width: parent.width
                    height: contentHeight
                    flickableDirection: Flickable.HorizontalFlick
                    contentWidth: madeForYouRow.width
                    contentHeight: madeForYouRow.height

                    Row {
                        id: madeForYouRow
                        leftPadding: dp(Theme.contentPadding)
                        rightPadding: dp(Theme.contentPadding)
                        spacing: dp(Theme.contentPadding)

                        Repeater {
                            model: homePageModels.madeForYouModel

                            HomePageListDelegate {
                                onSelected: {
                                    root.navigationStack.push(previewPageComponent, {"modelEntry": model})
                                }
                            }
                        }
                    }
                }
            }

            Column {
                id: popularColumn

                width: parent.width
                spacing: dp(20)
                visible: homePageModels.popularModel.count > 0

                AppText {
                    font.bold: true
                    fontSize: 24
                    leftPadding: dp(Theme.contentPadding)
                    text: "Tất cả sách"
                }


                AppFlickable {
                    width: parent.width
                    height: contentHeight
                    flickableDirection: Flickable.HorizontalFlick
                    contentWidth: popularRow.width
                    contentHeight: popularRow.height

                    Row {
                        id: popularRow
                        leftPadding: dp(Theme.contentPadding)
                        rightPadding: dp(Theme.contentPadding)
                        spacing: dp(Theme.contentPadding)

                        Repeater {
                            model: homePageModels.popularModel

                            HomePageListDelegate {
                                onSelected: {
                                    root.navigationStack.push(previewPageComponent, {"modelEntry": model})
                                }
                            }
                        }
                    }
                }
            }

            Column {
                id: popSongsColumn

                width: parent.width
                spacing: dp(20)
                visible: homePageModels.popSongsModel.count > 0

                AppText {
                    font.bold: true
                    fontSize: 24
                    leftPadding: dp(Theme.contentPadding)
                    text: "Sách Công nghệ thông tin"
                }

                AppFlickable {
                    width: parent.width
                    height: contentHeight
                    flickableDirection: Flickable.HorizontalFlick
                    contentWidth: popSongsRow.width
                    contentHeight: popSongsRow.height

                    Row {
                        id: popSongsRow
                        leftPadding: dp(Theme.contentPadding)
                        rightPadding: dp(Theme.contentPadding)
                        spacing: dp(Theme.contentPadding)

                        Repeater {
                            model: homePageModels.popSongsModel

                            HomePageListDelegate {
                                onSelected: {
                                    root.navigationStack.push(previewPageComponent, {"modelEntry": model})
                                }
                            }
                        }
                    }
                }
            }

            Column {
                id: podcastsToTry

                width: parent.width
                spacing: dp(20)
                visible: homePageModels.podcastsToTryModel.count > 0

                AppText {
                    font.bold: true
                    fontSize: 24
                    leftPadding: dp(Theme.contentPadding)
                    text: "Podcasts to try"
                }


                AppFlickable {
                    width: parent.width
                    height: contentHeight
                    flickableDirection: Flickable.HorizontalFlick
                    contentWidth: podcastsToTryRow.width
                    contentHeight: podcastsToTryRow.height

                    Row {
                        id: podcastsToTryRow
                        leftPadding: dp(Theme.contentPadding)
                        rightPadding: dp(Theme.contentPadding)
                        spacing: dp(Theme.contentPadding)

                        Repeater {
                            model: homePageModels.podcastsToTryModel

                            HomePageListDelegate {
                                onSelected: {
                                    root.navigationStack.push(previewPageComponent, {"modelEntry": model})
                                }
                            }
                        }
                    }
                }
            }
        }
    }

    HomePageModels {
        id: homePageModels
    }

    Component {
        id: previewPageComponent

        PreviewPage{}
    }
}
