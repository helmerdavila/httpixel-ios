import SwiftUI

struct ContentView: View {
  var body: some View {
    TabView {
      HistoryView()
      .toolbar {
        ToolbarItem {
          Button {
            print("Hello there")
          } label: {
            Image(systemName: "plus")
          }
        }
      }
      .tabItem {
        Label("History", systemImage: "clock")
      }
      VStack {
        Text("Hello from settings")
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
