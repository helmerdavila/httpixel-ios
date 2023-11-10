import Foundation


struct HTTPHeader {
  let field: String
  let value: String
}

class HTTPRequest: Identifiable {
  let url: URL?
  let route: String
  let host: String
  let method: HTTPMethod
  var headers: [HTTPHeader] = []
  var body: Data?
  var queryParameters: [String: String]?
  
  init(host: String, route: String, method: HTTPMethod, headers: [HTTPHeader]? = nil, body: Data? = nil, queryParameters: [String: String]? = nil) {
    self.method = method
    self.body = body
    self.route = route
    self.host = host
    self.url = URL(string: host + route)
    
    if let headers = headers {
      self.headers.append(contentsOf: headers)
    }
    
    self.queryParameters = queryParameters
  }
}
