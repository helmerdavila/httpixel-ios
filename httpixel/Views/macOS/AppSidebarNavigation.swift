import SwiftUI

struct AppSidebarNavigation: View {
  
  enum NavigationItem {
    case history
    case settings
  }
  
  @State private var selection: NavigationItem? = .history
  
  var body: some View {
    if #available(iOS 16, macOS 13, *) {
      NavigationSplitView {
        List(selection: $selection) {
          NavigationLink(value: NavigationItem.history) {
            Label("History", systemImage: "clock")
          }
          NavigationLink(value: NavigationItem.settings) {
            Label("Settings", systemImage: "hammer")
          }
        }
        
      } detail: {
        switch selection {
          case .history: HistoryView()
          case .settings: SettingsView()
          default: Text("Pick an option")
        }
      }
    } else {
      NavigationView {
        List {
          NavigationLink(tag: NavigationItem.history, selection: $selection) {
            HistoryView()
          } label: {
            Label("History", systemImage: "clock")
          }
          NavigationLink(tag: NavigationItem.settings, selection: $selection) {
            SettingsView()
          } label: {
            Label("Settings", systemImage: "hammer")
          }
        }
      }
    }
  }
}

struct AppSidebarNavigation_Previews: PreviewProvider {
  static var previews: some View {
    AppSidebarNavigation()
  }
}
