import SwiftUI

struct SettingsView: View {
  @State private var isShowingConfirmation = false
  
  var body: some View {
    List {
      Button {
        isShowingConfirmation = true
      } label: {
        Text("Delete all history")
      }
      .confirmationDialog(
        Text("Do you really want to delete all your history?"),
        isPresented: $isShowingConfirmation
      ) {
        Button("Clear history", role: .destructive) {
          print("Deleting all")
        }
        Button("Cancel", role: .cancel) {
          isShowingConfirmation = false
        }
      }
    }
      .navigationTitle(Text("Settings"))
  }
}

struct SettingsView_Previews: PreviewProvider {
  static var previews: some View {
    SettingsView()
  }
}
