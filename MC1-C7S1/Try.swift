import SwiftUI

struct Try: View {
    @State private var isActive = false

    var body: some View {
        NavigationView {
            VStack {
                Text("Tap to navigate")
                    .onTapGesture {
                        self.isActive = true
                    }
                    .foregroundColor(.blue)
            }
            .navigationBarTitle("First Page")
            .background(
                NavigationLink(
                    destination: SecondView(),
                    isActive: $isActive
                ) {
                    EmptyView()
                }
                .hidden()
            )
        }
    }
}

struct SecondView: View {
    var body: some View {
        Text("This is the second page")
            .navigationBarTitle("Second Page")
    }
}

#Preview{
    Try()
}
