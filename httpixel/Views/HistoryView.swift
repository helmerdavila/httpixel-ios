import SwiftUI

struct HistoryView: View {
  var body: some View {
    List {
      VStack {
        Text("History #1").foregroundColor(Color.red)
      }
      VStack {
        Text("History #2").foregroundColor(Color.green)
      }
    }
    .navigationTitle(Text("History"))
    .toolbar {
      ToolbarItem {
        NavigationLink {
          AddRequestView()
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
