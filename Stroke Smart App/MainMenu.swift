import SwiftUI

struct MenuView: View {
    let brain = Image("brain")
    @State private var showMenuPopup = false

    var body: some View {
        NavigationView {
            ZStack {
                VStack {
                    Text("Stroke Smart's")
                        .font(.custom("Montserrat-Bold", size: 40))
                        .foregroundColor(.white)
                        .padding(.top, 60)
                    
                    Text("Stroke Risk")
                        .font(.custom("Montserrat-Regular", size: 28))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                        .padding(.top, 5)
                    
                    Text("Assessment Tool")
                        .font(.custom("Montserrat-Regular", size: 28))
                        .fontWeight(.bold)
                        .foregroundColor(.white)
                    
                    NavigationLink(destination: QuizView()) {
                        brain
                            .resizable()
                            .frame(width: 350, height: 400)
                            .aspectRatio(contentMode: .fit)
                            .padding(.bottom, 15)
                    }
                    
                    Spacer()
                    
                    Button(action: {
                        withAnimation {
                            showMenuPopup.toggle()
                        }
                    }) {
                        Text("Menu")
                            .font(.title)
                            .fontWeight(.bold)
                            .foregroundColor(.red)
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
                
                if showMenuPopup {
                    let med_bottle = Image("med_bottle")
                    let calendar = Image("calendar")
                    let book = Image("book")
                    let global = Image("global")
                    VStack {
                        Spacer()
                        VStack(spacing: 20) {
                            Text("Menu")
                                .font(.title)
                                .padding()
                                .foregroundColor(.red)
                            
                            LazyVGrid(columns: [GridItem(), GridItem()], spacing: 20) {
                                
                                NavigationLink(destination: MedTrackerView()) {
                                    med_bottle
                                        .resizable()
                                        .frame(width: 85, height: 85)
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.black)
                                }
                                Button(action: {
                                    print("Calendar button tapped")
                                }) {
                                    calendar
                                        .resizable()
                                        .frame(width: 85, height: 85)
                                        .aspectRatio(contentMode: .fit)
                                        .foregroundColor(.black)
                                }

                                Link(destination: URL(string: "https://www.strokesmartorg.com/")!) {
                                            book
                                                .resizable()
                                                .frame(width: 75, height: 75)
                                                .aspectRatio(contentMode: .fit)
                                                .foregroundColor(.black)
                                        }

                                Link(destination: URL(string: "https://www.strokesmartorg.com/")!) {
                                            global
                                                .resizable()
                                                .frame(width: 75, height: 75)
                                                .aspectRatio(contentMode: .fit)
                                                .foregroundColor(.black)
                                        }
                            }
                            .padding(.horizontal)
                            
                            Button(action: {
                                withAnimation {
                                    showMenuPopup.toggle()
                                }
                            }) {
                                Text("Close")
                                    .font(.title)
                                    .foregroundColor(.white)
                                    .padding()
                                    .frame(maxWidth: .infinity) // Make the button take the full width
                                    .background(Color.red)
                                    .cornerRadius(10)
                            }
                            .frame(maxWidth: 300) // Set a fixed width for the button
                        }
                        .frame(maxWidth: .infinity)
                        .padding(.bottom, 40)
                        .background(Color.white)
                        .cornerRadius(20)
                    }
                    .frame(maxWidth: .infinity, maxHeight: .infinity)
                    .background(Color.black.opacity(0.5))
                    .edgesIgnoringSafeArea(.all)
                }
            }
        }
    }
}
