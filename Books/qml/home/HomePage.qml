import Felgo 3.0
import QtQuick 2.8
import QtGraphicalEffects 1.0
import "./components"
import "../model"
import "./model"

Page {
    id: root
    title: "Trang chủ"
    property bool isLogged: UserView.loginState
    property string userName: User.userName
    property string userRole: {
        if(User.userRole === 1){ // CUSTOMER
            return "Customer"
        }
        else if(User.userRole === 0){
            return "Admin"
        }
        else{
            console.log("KHONG TIM THAY ROLE")
            return ""
        }
    }
    rightBarItem:   TextButtonBarItem{
        width: dp(200)
        AppText{
            id: name
            anchors.top: parent.top
            anchors.topMargin: dp(10)
            anchors.horizontalCenter: parent.horizontalCenter
//            fontSize: dp(7)
            font.bold: true
            color: "white"
            text: "Xin chào! " + userName
        }
        AppText {
            id: role
            anchors.top: name.bottom
            anchors.topMargin: dp(2)
//            fontSize: dp(5)
            color: "white"
            anchors.horizontalCenter: name.horizontalCenter
            text: "(" + userRole +")"
            opacity: 0.6
        }
        visible: root.isLogged
    }

//    DataModel {
//        id: dataModel
//    }

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

            Column {
                id: madeForYouColumn

                width: parent.width
                spacing: dp(20)
                visible: homePageModels.madeForYouModel.count > 0

                AppText {
                    font.bold: true
                    fontSize: 24
                    leftPadding: dp(Theme.contentPadding)
                    text: "Giảm giá mạnh!"
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
            /*-------------------------------------------------------------------------------------------------------------------------*/
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
            /*-------------------------------------------------------------------------------------------------------------------------*/
            Column {
                id: it

                width: parent.width
                spacing: dp(20)
                visible: homePageModels.itBookModel.count > 0

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
                    contentWidth: itBookRow.width
                    contentHeight: itBookRow.height

                    Row {
                        id: itBookRow
                        leftPadding: dp(Theme.contentPadding)
                        rightPadding: dp(Theme.contentPadding)
                        spacing: dp(Theme.contentPadding)

                        Repeater {
                            model: homePageModels.itBookModel

                            HomePageListDelegate {
                                onSelected: {
                                    root.navigationStack.push(previewPageComponent, {"modelEntry": model})
                                }
                            }
                        }
                    }
                }
            }
            /*-------------------------------------------------------------------------------------------------------------------------*/
            Column {
                id: literality

                width: parent.width
                spacing: dp(20)
                visible: homePageModels.literalityBookModel.count > 0

                AppText {
                    font.bold: true
                    fontSize: 24
                    leftPadding: dp(Theme.contentPadding)
                    text: "Sách văn học"
                }


                AppFlickable {
                    width: parent.width
                    height: contentHeight
                    flickableDirection: Flickable.HorizontalFlick
                    contentWidth: literalityRow.width
                    contentHeight: literalityRow.height

                    Row {
                        id: literalityRow
                        leftPadding: dp(Theme.contentPadding)
                        rightPadding: dp(Theme.contentPadding)
                        spacing: dp(Theme.contentPadding)

                        Repeater {
                            model: homePageModels.literalityBookModel

                            HomePageListDelegate {
                                onSelected: {
                                    root.navigationStack.push(previewPageComponent, {"modelEntry": model})
                                }
                            }
                        }
                    }
                }
            }
            /*-------------------------------------------------------------------------------------------------------------------------*/
            Column {
                id: economic

                width: parent.width
                spacing: dp(20)
                visible: homePageModels.economicBookModel.count > 0

                AppText {
                    font.bold: true
                    fontSize: 24
                    leftPadding: dp(Theme.contentPadding)
                    text: "Sách kinh tế"
                }


                AppFlickable {
                    width: parent.width
                    height: contentHeight
                    flickableDirection: Flickable.HorizontalFlick
                    contentWidth: economicBookRow.width
                    contentHeight: economicBookRow.height

                    Row {
                        id: economicBookRow
                        leftPadding: dp(Theme.contentPadding)
                        rightPadding: dp(Theme.contentPadding)
                        spacing: dp(Theme.contentPadding)

                        Repeater {
                            model: homePageModels.economicBookModel

                            HomePageListDelegate {
                                onSelected: {
                                    root.navigationStack.push(previewPageComponent, {"modelEntry": model})
                                }
                            }
                        }
                    }
                }
            }
            /*-------------------------------------------------------------------------------------------------------------------------*/
            Column {
                id: kids

                width: parent.width
                spacing: dp(20)
                visible: homePageModels.kidsBookModel.count > 0

                AppText {
                    font.bold: true
                    fontSize: 24
                    leftPadding: dp(Theme.contentPadding)
                    text: "Sách thiếu nhi"
                }


                AppFlickable {
                    width: parent.width
                    height: contentHeight
                    flickableDirection: Flickable.HorizontalFlick
                    contentWidth: kidsBookRow.width
                    contentHeight: kidsBookRow.height

                    Row {
                        id: kidsBookRow
                        leftPadding: dp(Theme.contentPadding)
                        rightPadding: dp(Theme.contentPadding)
                        spacing: dp(Theme.contentPadding)

                        Repeater {
                            model: homePageModels.kidsBookModel

                            HomePageListDelegate {
                                onSelected: {
                                    root.navigationStack.push(previewPageComponent, {"modelEntry": model})
                                }
                            }
                        }
                    }
                }
            }
/*-------------------------------------------------------------------------------------------------------------------------*/
            Column {
                id: law

                width: parent.width
                spacing: dp(20)
                visible: homePageModels.lawBookModel.count>0
                AppText {
                    font.bold: true
                    fontSize: 24
                    leftPadding: dp(Theme.contentPadding)
                    text: "Sách pháp luật"
                }


                AppFlickable {
                    width: parent.width
                    height: contentHeight
                    flickableDirection: Flickable.HorizontalFlick
                    contentWidth: lawBookRow.width
                    contentHeight: lawBookRow.height

                    Row {
                        id: lawBookRow
                        leftPadding: dp(Theme.contentPadding)
                        rightPadding: dp(Theme.contentPadding)
                        spacing: dp(Theme.contentPadding)

                        Repeater {
                            model: homePageModels.lawBookModel

                            HomePageListDelegate {
                                onSelected: {
                                    root.navigationStack.push(previewPageComponent, {"modelEntry": model})
                                }
                            }
                        }
                    }
                }
            }
/*-------------------------------------------------------------------------------------------------------------------------*/
            Column {
                id: history

                width: parent.width
                spacing: dp(20)
                visible: homePageModels.historyBookModel.count>0
                AppText {
                    font.bold: true
                    fontSize: 24
                    leftPadding: dp(Theme.contentPadding)
                    text: "Sách lịch sử"
                }


                AppFlickable {
                    width: parent.width
                    height: contentHeight
                    flickableDirection: Flickable.HorizontalFlick
                    contentWidth: historyBookRow.width
                    contentHeight: historyBookRow.height

                    Row {
                        id: historyBookRow
                        leftPadding: dp(Theme.contentPadding)
                        rightPadding: dp(Theme.contentPadding)
                        spacing: dp(Theme.contentPadding)

                        Repeater {
                            model: homePageModels.historyBookModel

                            HomePageListDelegate {
                                onSelected: {
                                    root.navigationStack.push(previewPageComponent, {"modelEntry": model})
                                }
                            }
                        }
                    }
                }
            }
/*-------------------------------------------------------------------------------------------------------------------------*/
            Column {
                id: medical

                width: parent.width
                spacing: dp(20)
                visible: homePageModels.medicalBookModel.count > 0
                AppText {
                    font.bold: true
                    fontSize: 24
                    leftPadding: dp(Theme.contentPadding)
                    text: "Sách y tế, sức khỏe"
                }


                AppFlickable {
                    width: parent.width
                    height: contentHeight
                    flickableDirection: Flickable.HorizontalFlick
                    contentWidth: medicalBookRow.width
                    contentHeight: medicalBookRow.height

                    Row {
                        id: medicalBookRow
                        leftPadding: dp(Theme.contentPadding)
                        rightPadding: dp(Theme.contentPadding)
                        spacing: dp(Theme.contentPadding)

                        Repeater {
                            model: homePageModels.medicalBookModel

                            HomePageListDelegate {
                                onSelected: {
                                    root.navigationStack.push(previewPageComponent, {"modelEntry": model})
                                }
                            }
                        }
                    }
                }
            }
/*-------------------------------------------------------------------------------------------------------------------------*/
        }
    }

    HomePageModels {
        id: homePageModels
    }

//    Component {
//        id: previewPageComponent

//        PreviewPage{}
//    }
}
