import Felgo 3.0
import QtQuick 2.0
import "./user"
import "./cart"
import "./home"
import "./search"
import "model"

App {
    id: root
    property int appWidth: root.width
    property int appHeight: root.height
    color: "#000"
    onInitTheme: {
      if (system.desktopPlatform) {
        Theme.platform = "android"
      }
      // background color of Row
      Theme.listItem.backgroundColor = "#ffbf80"
    }
    property bool isLogged: false
    property string userName: ""
    property string role: ""

    /********************************* MODEL *************************************/

    BookModel {
        id: bookModel
    }

    /*****************************************************************************/
    Logic {
        id: logic
    }

    /****************************************************************************/
    // dành cho giỏ hàng
    Storage {
        id: storage
    }
    // dành cho tài khoản - các id đơn hàng của tài khoản đó
    // khi tai khoan dat mua =>> luu thong tin voi key = "tenAccount" & value = "id don hang"
    Storage {
        id: accountStorage
    }
    // dành cho id đơn hàng - chi tiết đơn hàng (tam thoi luu tong tien cua don hang)
    // khi co 1 action Dat mua => luu id - danh sach cac quyen sach duoc dat mua
    Storage {
        id: orderStorage
    }
    //
    Storage {
        id: orderIDCountStorage
    }

    /****************************************************************************/
    Navigation {
        id: navigation

        navigationMode: navigationModeTabs

        NavigationItem {
            id: homePageItem
            title: qsTr("Trang chủ")
            icon: IconType.home

            NavigationStack {
                initialPage: HomePage { }
            }
        }

        NavigationItem {
            id: userPageItem
            title: qsTr("Tài khoản")
            icon: IconType.user

            NavigationStack {
                id: pf
                function changeTitle() {
                    user.pageTitle = "Tài khoản"
                }
                initialPage: MainUserPage {
                    id: user
                }
            }
            onSelected: {
            }
        }

//        NavigationItem {
//            id: customPageItem
//            title: qsTr("Tùy chọn")
//            icon: IconType.yelp
//        }

        NavigationItem {
            id: searchPageItem
            title: qsTr("Tìm Kiếm")
            icon: IconType.search

            NavigationStack {
                id: searchNavigationStack

                initialPage: SearchMainPage {

                    onSearchRequested: {
                        searchNavigationStack.push(searchPageComponent, {"searchTerm": term})
                    }
                }
            }
        }


        NavigationItem {
            id: orderPageItem
            title: qsTr("Giỏ hàng")
            icon: IconType.shoppingcart
            showItem: User.userRole == 1
            NavigationStack {
                initialPage: CartPage { }
            }
        }

//        NavigationItem {
//            id: adminPageItem
//            title: qsTr("Quyền Admin")
//            icon: IconType.shoppingcart
//            showItem: User.userRole == 0
//            NavigationStack {
//                initialPage: CartPage { }
//            }
//        }

    }


    Component {
      id: searchPageComponent

      SearchPage { }
    }

    Component {
      id: previewPageComponent

      PreviewPage { }
    }

    Component.onCompleted: {
        console.log("clear all STORAGEEEEEEEEEEEEEEE")
        storage.clearAll()
        accountStorage.clearAll()
        orderStorage.clearAll()
        orderIDCountStorage.clearAll()
    }
}
