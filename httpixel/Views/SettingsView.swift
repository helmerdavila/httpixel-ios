import SwiftUI

struct SettingsView: View {
  var body: some View {
    Text("Hello from settings view")
      .navigationTitle(Text("Settings"))
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
  }
}
