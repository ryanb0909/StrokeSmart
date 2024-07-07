import Foundation
import SwiftUI

struct NextView: View {
    let brain = Image("brain")
    var body: some View {
        VStack {
            Text("Stroke Smart's")
                .font(.system(size: 40)) // Set the desired font size here
                .fontWeight(.bold) // Make the text bold
                .foregroundColor(.white) // Change the text color to stand out against the red background
                .padding(.top, 60) // Add some padding to the top
            
            Text("Stroke Risk")
                .font(.title) // Set the desired font size here
                .fontWeight(.bold)
                .foregroundColor(.white) // Change the text color if needed
            
            Text("Assesment Tool")
                .font(.title) // Set the desired font size here
                .fontWeight(.bold)
                .foregroundColor(.white) // Change the text color if needed
            
            Button(action: {
                            print("Brain image button tapped")
                        }) {
                            brain
                                .resizable()
                                .frame(width: 350, height: 400)
                                .aspectRatio(contentMode: .fit)
                                .padding(.bottom, 15) // Adjust the padding if needed
                        }
                
            Spacer() // Pushes the content to the top
            
            Button(action: {
                            print("Menu button tapped")
                        }) {
                            Text("Menu")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.red)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.white)
                                .cornerRadius(10)
                        }
                        .padding(.bottom, 40)
                        .frame(maxWidth: 300)
        }
        .frame(maxWidth: .infinity, maxHeight: .infinity)
        .background(Color.red)
        .edgesIgnoringSafeArea(.all)
    }
}
