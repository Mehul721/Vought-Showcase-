//
//  CarouselView.swift
//  Vought Showcase
//
//  Created by Mehul Jain on 27/08/24.
//

import SwiftUI

struct CarouselView: View {
    var imagesNames: [String]
    @Binding var isPresented: Bool
    @StateObject private var storyController: StoryController

    init(imagesNames: [String], isPresented: Binding<Bool>) {
        _storyController = StateObject(wrappedValue: StoryController(items: imagesNames.count, interval: 3.0))
        self.imagesNames = imagesNames
        self._isPresented = isPresented
    }

    var body: some View {
        VStack {
            StoryProgressView(imagesNames: imagesNames, progress: $storyController.progress)
                .gesture(
                    DragGesture()
                        .onEnded { gesture in
                            if gesture.translation.height > 100 {
                                isPresented = false
                            }
                        }
                )
        }
        .onAppear {
            storyController.storyTimer.start()
        }
        .onTapGesture { location in
            handleTap(location: location)
        }
    }

    private func handleTap(location: CGPoint) {
            let screenWidth = UIScreen.main.bounds.width
            let midX = screenWidth / 2
            
            if location.x > midX {
                
                if Int(storyController.progress) < imagesNames.count - 1 {
                    storyController.handleRightTap(imagesCount: imagesNames.count)
                } else if Int(storyController.progress) == imagesNames.count - 1 {
                    
                    isPresented = false
                }
            } else {
                
                storyController.handleLeftTap()
            }
        }
    }
