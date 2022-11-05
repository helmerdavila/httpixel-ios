import SwiftUI

struct HistoryView: View {
  var body: some View {
    Text("Welcome to the history view")
      .navigationTitle(Text("History"))
      .toolbar {
        ToolbarItem {
          Button {
            print("Pressed here")
          } label: {
            Image(systemName: "plus")
          }
        }
      }
  }
}

struct HistoryView_Previews: PreviewProvider {
  static var previews: some View {
    HistoryView()
  }
}
