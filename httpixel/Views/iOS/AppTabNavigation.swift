import SwiftUI

struct AppTabNavigation: View {
  var body: some View {
    TabView {
      if #available(iOS 16, macOS 13, *) {
        NavigationStack {
          HistoryView(requests: [])
        }
        .tabItem {
          Label("History", systemImage: "clock")
        }
        NavigationStack {
          SettingsView()
        }
        .tabItem {
          Label("Settings", systemImage: "hammer")
        }
      } else {
        NavigationView {
          HistoryView(requests: [])
        }
        .tabItem {
          Label("History", systemImage: "clock")
        }
        NavigationView {
          SettingsView()
        }
        .tabItem {
          Label("Settings", systemImage: "hammer")
        }
      }
    }
  }
}

struct AppTabNavigation_Previews: PreviewProvider {
  static var previews: some View {
    AppTabNavigation()
  }
}
