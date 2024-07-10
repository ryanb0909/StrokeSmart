import SwiftUI
import SwiftData

struct ContentView: View {
    @State private var showNextView = false
    @State private var fadeOut = false
    
    var body: some View {
        ZStack {
            if showNextView {
                MenuView()
                    .transition(.opacity)
            } else {
                let logo = Image("logo")
                logo
                    .resizable()
                    .frame(width: 350, height: 300)
                    .aspectRatio(contentMode: .fit)
                    .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
                    .opacity(fadeOut ? 0 : 1)
                    .onAppear {
                        withAnimation(.easeInOut(duration: 2)) {
                            fadeOut = true
                        }
                        DispatchQueue.main.asyncAfter(deadline: .now() + 2) {
                            showNextView = true
                        }
                    }
            }
        }
        .animation(.easeInOut, value: showNextView)
    }
}

#Preview {
    ContentView()
        .modelContainer(for: Item.self, inMemory: true)
}
