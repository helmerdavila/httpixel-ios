import Foundation
import Fakery

class HTTPRequestFake: HTTPRequest {
  let faker = Faker()
  
  override init(
    host: String = "https://\(Faker().internet.domainName())",
    route: String = "/\(Faker().lorem.word())",
    method: HTTPMethod = HTTPMethod.allCases.randomElement() ?? .get,
    headers: [HTTPHeader]? = [HTTPHeader(field: "Authorization", value: "Bearer \(Faker().lorem.word())")],
    body: Data? = Faker().lorem.paragraph().data(using: .utf8),
    queryParameters: [String: String]? = [Faker().lorem.word(): Faker().lorem.sentence()]) {
      
      super.init(host: host, route: route, method: method, headers: headers, body: body, queryParameters: queryParameters)
    }
}
