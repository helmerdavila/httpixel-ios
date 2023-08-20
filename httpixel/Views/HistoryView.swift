import SwiftUI

struct HistoryView: View {
  let requests: [HTTPRequest]
  
  var body: some View {
    List(requests) {
      RequestSmallView(method: $0.method.rawValue, host: $0.host, route: $0.route)
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
  static var fakeRequests = {
    var requests = [HTTPRequestFake]()
    for _ in 0..<7 {
      requests.append(HTTPRequestFake())
    }
    return requests
  }()
  
  static var previews: some View {
    HistoryView(requests: fakeRequests)
  }
}
