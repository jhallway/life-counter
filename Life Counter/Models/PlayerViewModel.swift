//
//  PlayerViewModel.swift
//  Life Counter
//
//  Created by John Hall on 9/1/22.
//

import Foundation
import SwiftUI

extension PlayerView {
    @MainActor class ViewModel: ObservableObject {
        @Published var life: Int = 40
        var position = Position.top
        @Published var rotation = getRotation
        @Published var color = Color.gray
        
        private func getRotation() -> Angle {
            switch position {
            case .top:
                return Angle(degrees: 0)
            case .left:
                return Angle(degrees: 90)
            case .right:
                return Angle(degrees: -90)
            case .bottom:
                return Angle(degrees: 180)
            }
        }
        
        func addLife() {
            
        }

        func removeLife() {
            
        }


    }
}

enum Position {
    case top
    case left
    case right
    case bottom
}
