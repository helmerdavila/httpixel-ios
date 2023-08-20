import SwiftUI
import Fakery

struct RequestSmallView: View {
  @Environment(\.colorScheme) var colorScheme
  let method: String
  let host: String
  let route: String
  
  
  var body: some View {
    HStack {
      VStack(alignment: .leading) {
        Text(method)
          .bold()
          .padding(5)
          .foregroundColor(colorScheme == .dark ? Color.black : Color.white)
          .background(Color.accentColor)
          .cornerRadius(5)
        Text("200").bold()
      }
      .frame(width: 90, alignment: .leading)
      
      VStack(alignment: .leading) {
        Text(route).bold()
        Text(host)
          .foregroundColor(Color.gray)
          .lineLimit(1)
          .truncationMode(.tail)
      }
    }
  }
}

struct RequestSmallView_Previews: PreviewProvider {
  static var fakeRequests = {
    var requests = [HTTPRequestFake]()
    for _ in 0..<3 {
      requests.append(HTTPRequestFake())
    }
    return requests
  }()
  
  
  static var previews: some View {
    List {
      RequestSmallView(method: fakeRequests[0].method.rawValue, host: fakeRequests[0].host, route: fakeRequests[0].route)
      RequestSmallView(method: fakeRequests[1].method.rawValue, host: fakeRequests[1].host, route: fakeRequests[1].route)
      RequestSmallView(method: fakeRequests[2].method.rawValue, host: fakeRequests[2].host, route: fakeRequests[2].route)
    }
  }
}
