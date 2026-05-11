//
//  ContentView.swift
//  HIGHER Game
//
//  Created by Norah 2026-5-11
//

import SwiftUI

struct ContentView: View {
    @State private var playerCard: Int = 0
    @State private var cpuCard: Int = 0
    @State private var playerScore: Int = 0
    @State private var cpuScore: Int = 0
    
    var body: some View {
        
        ZStack {
            Color(red: 1.0, green: 0.84, blue: 0.91)
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                // Logo
                Image("logo")
                    .resizable()
                    .scaledToFit()
                    .frame(width: 180, height: 180)
                Spacer()
                // Cards
                HStack(spacing: 12) {
                    Spacer()
                    Image("\(playerCard)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 140, height: 180)
                    Image("\(cpuCard)")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 140, height: 180)
                    Spacer()
                }
                
                Spacer()
                Button(action: {
                    
                    playerCard = Int.random(in: 0...10)
                    cpuCard = Int.random(in: 0...10)

                
                    if playerCard > cpuCard {
                        playerScore += 1
                    } else if cpuCard > playerCard {
                        cpuScore += 1
                    }
                }) {
                    Image("reveal")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 200, height: 60)
                }
                .buttonStyle(.plain)
                Spacer()
                // Scores
                HStack {
                    Spacer()
                    VStack {
                        Text("Player")
                            .font(.headline)
                            .padding(.bottom)
                        Text("\(playerScore)")
                            .font(.largeTitle)
                    }
                    Spacer()
                    VStack {
                        Text("CPU")
                            .font(.headline)
                            .padding(.bottom)
                        Text("\(cpuScore)")
                            .font(.largeTitle)
                    }
                    Spacer()
                }
                .foregroundStyle(.white)
                Spacer()
            }
            .padding()
        }
        
        
    }
}

#Preview {
    ContentView()
}
