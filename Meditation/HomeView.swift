//
//  HomeView.swift
//  Meditation
//
//  Created by Abhilekh Borah on 04/11/23.
//

import SwiftUI
import RiveRuntime
struct HomeView: View {
    @State var isSelected: isButtonSelected = .listen
    @State var showScreen: Bool = false
    var body: some View {
        ZStack {
            Image("greenmm").resizable().aspectRatio(contentMode: .fill).edgesIgnoringSafeArea(.all)
            VStack {
                Image("mindmitra").resizable().aspectRatio(contentMode: .fit)
                    .frame(height: 200)
                    .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 10)
                Spacer().frame(height: 50)
                Text("Embrace everlasting happiness to nurture your mental well-being and set your mind free.")
                    .font(.caption)
                    .multilineTextAlignment(.center)
                    .foregroundStyle(LinearGradient(colors: [.primary.opacity(0.8), .primary.opacity(0.6)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    .frame(width: 298, alignment: .top)
                    .padding(.horizontal, 0)
                    .padding(.top, 20)
                    .padding(.bottom, 24)
                    .frame(width: 358, alignment: .center)
                    .background(
                        LinearGradient(
                            stops: [
                                Gradient.Stop(color: .white.opacity(0.7), location: 0.00),
                                Gradient.Stop(color: .white.opacity(0.4), location: 0.51),
                                Gradient.Stop(color: .white.opacity(0.7), location: 1.00),
                            ],
                            startPoint: UnitPoint(x: 0, y: 0),
                            endPoint: UnitPoint(x: 1, y: 1)
                        )
                    )
                    .cornerRadius(20)
                    .overlay(
                        RoundedRectangle(cornerRadius: 20)
                            .inset(by: 0.6)
                            .stroke(.linearGradient(colors: [.white.opacity(0.2), .white
                                .opacity(0.4),.white.opacity(0.3), .white.opacity(0.2)], startPoint: .topLeading, endPoint: .bottomTrailing))
                    )
                    .shadow(color: .black.opacity(0.3), radius: 20, x: 0, y: 10)
                Spacer().frame(height: 200)
                HStack(spacing: 60){
                    Button {
                        isSelected = .listen
                        showScreen.toggle()
                    } label: {
                        Label("Listen", systemImage: "music.note")
                            .font(.headline)
                            .foregroundStyle(LinearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .padding()
                            .frame(height: 50)
                            .background(.ultraThinMaterial)
                            .cornerRadius(16)
                    }
                    Button {
                        isSelected = .chat
                        showScreen.toggle()
                    } label: {
                        Label("Chat", systemImage: "bubble")
                            .font(.headline)
                            .foregroundStyle(LinearGradient(colors: [.primary, .primary.opacity(0.5)], startPoint: .topLeading, endPoint: .bottomTrailing))
                            .padding()
                            .frame(height: 50)
                            .background(.ultraThinMaterial)
                            .cornerRadius(16)
                    }
                    
                }
                .padding()
                .shadow(color: .white.opacity(0.2), radius: 10, x: 0, y: 5)
                .sheet(isPresented: $showScreen, content: {
                    if isSelected == .listen {
                        MeditationView(meditationVM: MeditationViewModel(meditation: Meditation.data))
                    }
                    else if isSelected == .chat {
                        ChatbotViewmindmitra()
                    }
                })
                
                

            }
            
        }
    }
}
enum isButtonSelected {
    case listen
    case chat
}
#Preview {
    HomeView().environmentObject(AudioManager())
}
