import Felgo 3.0
import QtQuick 2.0
import "./profile"

App {
  Navigation {
    id: navigation

    NavigationItem {
      title: qsTr("Signup")
      icon: IconType.key

      NavigationStack {

        SignupPage {
          id: mainPage
        }
      }
    }

    NavigationItem {
      title: qsTr("Profile")
      icon: IconType.user

      NavigationStack {

        ProfilePage {
          id: profilePage
        }
      }
    }

    function navigateToProfilePage() {
      currentIndex = 1
    }
  }

  Constants {
    id: constants
  }
}
