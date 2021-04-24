import Felgo 3.0
import QtQuick 2.0
import "./user"
import "./cart"
import "./home"
import "./search"

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

        // Admin: thống kê, Users: sales
        NavigationItem {
            id: customPageItem
            title: qsTr("Tùy chọn")
            icon: IconType.yelp
        }

        NavigationItem {
            id: searchPageItem
            title: qsTr("Tìm Kiếm")
            icon: IconType.search

            NavigationStack {
                id: searchNavigationStack

                initialPage: SearchTermsPage {

                    onSearchRequested: {
                        searchNavigationStack.push(searchPageComponent, {"searchTerm": term})
                    }
                }
            }
        }


        NavigationItem {
            id: libraryPageItem
            title: qsTr("Giỏ hàng")
            icon: IconType.shoppingcart

            NavigationStack {
                initialPage: CartPage { }
            }
        }
    }
    Component {
      id: searchPageComponent

      SearchPage { }
    }

    Component {
      id: previewPageComponent

      PreviewPage { }
    }

    BookModel {
        id: bookModel
    }
}
