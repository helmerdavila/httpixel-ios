import SwiftUI

struct AddRequestView: View {
  @State private var url: String = ""
  @State private var selectedHttpMethod: HTTPMethod = .get
  
  var body: some View {
    VStack {
      List {
        Section(header: Text("Request data"), content: {
          TextField("URL", text: $url)
          Picker("Method", selection: $selectedHttpMethod) {
            ForEach(HTTPMethod.allCases, id: \.self) { method in
              Text(method.rawValue).tag(method)
            }
          }
        })
        
        
        Button(action: {
          print("Executing request")
        }) {
          Text("Execute Request")
            .frame(maxWidth: .infinity)
            .padding()
        }
        .buttonStyle(.bordered)
        .controlSize(.regular)
        .foregroundColor(Color.white)
        .background(
          RoundedRectangle(cornerRadius: 14.0, style: .continuous)
            .fill(Color.primary)
        )
      }
      .listStyle(.automatic)
      
      
    }
    .navigationTitle(Text("New Request"))
  }
}

struct AddRequestView_Previews: PreviewProvider {
  static var previews: some View {
    AddRequestView()
  }
}
