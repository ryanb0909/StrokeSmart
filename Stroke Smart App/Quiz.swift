import SwiftUI

struct QuizView: View {
    @State private var currentStep = 0

    var body: some View {
        VStack {
            TabView(selection: $currentStep) {
                StepView(step: 0, currentStep: $currentStep, content: {
                    VStack {
                        Text("Is Your Blood")
                            .font(.system(size: 36, weight: .bold))
                            .padding(.top, 40)
                            .foregroundColor(.red)
                        Text("Pressure")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.red)
                        Text("Higher Than")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.red)
                        Text("140/90?")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.red)
                    }
                }, backgroundImage: Image("blood_pressure"))
                .tag(0)

                StepView(step: 1, currentStep: $currentStep, content: {
                    VStack {
                        Text("Do You")
                            .font(.system(size: 36, weight: .bold))
                            .padding(.top, 40)
                            .foregroundColor(.white)
                        Text("Have a Heart")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.white)
                        Text("Disease?")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.white)
                    }
                }, backgroundImage: Image("heart"))
                .tag(1)

                StepView(step: 2, currentStep: $currentStep, content: {
                    VStack {
                        Text("Do You")
                            .font(.system(size: 36, weight: .bold))
                            .padding(.top, 100)
                            .foregroundColor(.white)
                        Text("Smoke?")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.white)
                    }
                }, backgroundImage: Image("cigarette"))
                .tag(2)

                StepView(step: 3, currentStep: $currentStep, content: {
                    VStack {
                        Text("Have You Been")
                            .font(.system(size: 36, weight: .bold))
                            .padding(.top, 40)
                            .foregroundColor(.red)
                        Text("Diagnosed")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.red)
                        Text("With Diabetes")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.red)
                        Text("Mellitus?")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.red)
                    }
                }, backgroundImage: Image("monitor"))
                .tag(3)

                StepView(step: 4, currentStep: $currentStep, content: {
                    VStack {
                        Text("Do You Or")
                            .font(.system(size: 36, weight: .bold))
                            .padding(.top, 25)
                            .foregroundColor(.white)
                        Text("Your Family")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.white)
                        Text("Have A History")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.white)
                        Text("Of Transient")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.white)
                        Text("Ischemic")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.white)
                        Text("Attacks (TIA)")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.white)
                        Text("Or Stroke?")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.white)
                    }
                }, backgroundImage: Image("xray"))
                .tag(4)

                StepView(step: 5, currentStep: $currentStep, content: {
                    VStack {
                        Text("Is Your Body")
                            .font(.system(size: 36, weight: .bold))
                            .padding(.top, 40)
                            .foregroundColor(.red)
                        Text("Mass Index")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.red)
                        Text("Greater Than")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.red)
                        Text("25kg/M2?")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.red)
                    }
                }, backgroundImage: Image("measure"))
                .tag(5)

                StepView(step: 6, currentStep: $currentStep, content: {
                    VStack {
                        Text("Are You")
                            .font(.system(size: 36, weight: .bold))
                            .padding(.top, 100)
                            .foregroundColor(.red)
                        Text("65 Or Older?")
                            .font(.system(size: 36, weight: .bold))
                            .foregroundColor(.red)
                    }
                }, backgroundImage: Image("clock"))
                .tag(6)

                StepView(step: 7, currentStep: $currentStep, content: {
                    VStack {
                        Text("If you answered")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                        Text("yes to any of")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                        Text("these, your risk for")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                        Text("stroke is higher")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                        Text("than normal. It is")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                        Text("important to note")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                        Text("that some of these")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                        Text("cannot be")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                        Text("changed, such as")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                        Text("family history, age,")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                        Text("and diabetes")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                        Text("mellitus. However,")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                        Text("it is crucial to take")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                        Text("into account that")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                        Text("stroke is")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                        Text("preventable!")
                            .font(.system(size: 32, weight: .bold))
                            .foregroundColor(.white)
                    }
                })
                .tag(7)
            }
            .tabViewStyle(PageTabViewStyle())
            .background(Color.red)
        }
        .edgesIgnoringSafeArea(.all)
    }
}

struct StepView<Content: View>: View {
    var step: Int
    @Binding var currentStep: Int
    let content: Content
    var backgroundImage: Image?

    init(step: Int, currentStep: Binding<Int>, @ViewBuilder content: () -> Content, backgroundImage: Image? = nil) {
        self.step = step
        self._currentStep = currentStep
        self.content = content()
        self.backgroundImage = backgroundImage
    }

    var body: some View {
        ZStack {
            if let backgroundImage = backgroundImage {
                backgroundImage
                    .resizable()
                    .scaledToFill()
                    .blur(radius: 10) // Apply blur effect
                    .edgesIgnoringSafeArea(.all)
            }

            VStack {
                content

                Spacer()

                if step < 7 { // Only show buttons if not on the last step
                    HStack(spacing: 20) {
                        CircleButton(action: {
                            withAnimation {
                                if currentStep < 7 {
                                    currentStep += 1
                                }
                            }
                        }, label: "Yes", backgroundColor: .red, textColor: .white)

                        CircleButton(action: {
                            withAnimation {
                                if currentStep < 7 {
                                    currentStep += 1
                                }
                            }
                        }, label: "No", backgroundColor: .white, textColor: .red)
                    }
                    .padding(.bottom, 200) // Move the buttons up to center them vertically
                    .frame(maxWidth: .infinity, alignment: .center) // Center the HStack
                }
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            .cornerRadius(10)
            .padding()
        }
    }
}

struct CircleButton: View {
    var action: () -> Void
    var label: String
    var backgroundColor: Color
    var textColor: Color

    var body: some View {
        Button(action: action) {
            Text(label)
                .font(.system(size: 36, weight: .bold)) // Set the font size and weight to bold
                .foregroundColor(textColor)
                .padding()
                .frame(width: 150, height: 150)
                .background(backgroundColor)
                .clipShape(Circle())
        }
    }
}
