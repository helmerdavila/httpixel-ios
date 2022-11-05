import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      NavigationStack {
        HistoryView()
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
    }
  }
}

struct ContentView_Previews: PreviewProvider {
  static var previews: some View {
    ContentView()
  }
}
