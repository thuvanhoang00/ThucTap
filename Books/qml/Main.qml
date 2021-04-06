import Felgo 3.0
import QtQuick 2.0
import "./profile"
App {
    id: root
    property int appWidth: root.width
    property int appHeight: root.height
    color: "#0000cc"

    onInitTheme: {
        Theme.colors.statusBarStyle = Theme.colors.statusBarStyleWhite

        // Colors customization
        Theme.colors.backgroundColor = "#666699"
        Theme.colors.secondaryBackgroundColor = Theme.colors.backgroundColor
        Theme.colors.tintColor = "#1ed35e"
        Theme.colors.secondaryTextColor = "#b3b3b3"
        Theme.colors.textColor = "white"

        // tabBar customization
        Theme.navigationTabBar.backgroundColor = "#282828"
        Theme.navigationTabBar.titleOffColor = "#afafaf"
        Theme.navigationTabBar.titleColor = "#f5f5f5"
        Theme.navigationTabBar.height = 50
        Theme.navigationTabBar.dividerColor = "transparent"

        // navigationBar customization
        Theme.navigationBar.backgroundColor = "#282828"
        Theme.navigationBar.titleColor = "white"
        Theme.navigationBar.itemColor = "white"
        Theme.navigationBar.titleAlignLeft = false
        Theme.navigationBar.dividerColor = Theme.navigationBar.backgroundColor
    }

    //    Navigation {
    //        id: navigation
    //        enabled: true
    //        // only enable if user is logged in

    //        // first tab
    //        NavigationItem{
    //            title: qsTr("Danh mục sản phẩm")
    //            icon: IconType.list

    //            NavigationStack {
    //                id: stack
    //                splitView: tablet // use side-by-side view on tablet
    //                initialPage: ListBooksPage{}
    //                Component.onCompleted: {
    //                    console.log("width - height: " + root.width + " " + root.height)
    //                }
    //            }
    //        }

    //        // second tab
    //        NavigationItem {
    //            title: qsTr("Thông tin tài khoản")
    //            icon: IconType.users

    //            NavigationStack {

    //            }
    //        }
    //    }

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
            title: qsTr("Cá nhân")
            icon: IconType.user

            NavigationStack {
                initialPage: SignupPage {}
            }
        }

        // Admin: thống kê, Users: sales
        NavigationItem {
            id: customPageItem
            title: qsTr("Sales")
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

}
