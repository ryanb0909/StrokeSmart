import Foundation
import SwiftUI

struct NextView: View {
    let brain = Image("brain")
    @State private var showMenuPopup = false

    var body: some View {
        ZStack {
            VStack {
                Text("Stroke Smart's")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                    .padding(.top, 90)
                
                Text("Stroke Risk")
                    .font(.title)
                    .foregroundColor(.white)
                
                Text("Assessment Tool")
                    .font(.title)
                    .foregroundColor(.white)
                
                Button(action: {
                    print("Brain image button tapped")
                }) {
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
                            
                                                    Button(action: {
                                                        print("Med Bottle button tapped")
                                                    }) {
                                                        med_bottle
                                                            .resizable()
                                                            .frame(width: 100, height: 100)
                                                            .aspectRatio(contentMode: .fit)
                                                    }

                                                    Button(action: {
                                                        print("Calendar button tapped")
                                                    }) {
                                                        calendar
                                                            .resizable()
                                                            .frame(width: 100, height: 100)
                                                            .aspectRatio(contentMode: .fit)
                                                    }

                                                    Button(action: {
                                                        print("Book button tapped")
                                                    }) {
                                                        book
                                                            .resizable()
                                                            .frame(width: 75, height: 75)
                                                            .aspectRatio(contentMode: .fit)
                                                    }

                                                    Button(action: {
                                                        print("Global button tapped")
                                                    }) {
                                                        global
                                                            .resizable()
                                                            .frame(width: 75, height: 75)
                                                            .aspectRatio(contentMode: .fit)
                                                            .foregroundColor(.black)
                                                    }
                                                }
                        Button(action: {
                            withAnimation {
                                showMenuPopup.toggle()
                            }
                        }) {
                            Text("Close")
                                .font(.title)
                                .fontWeight(.bold)
                                .foregroundColor(.white)
                                .frame(maxWidth: .infinity)
                                .padding()
                                .background(Color.red)
                                .cornerRadius(10)
                        }
                        .frame(maxWidth: 300)
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

