//
//  PlayerView.swift
//  Life Counter
//
//  Created by John Hall on 9/1/22.
//

import SwiftUI

struct PlayerView: View {
    @StateObject private var viewModel = ViewModel()
    
    var body: some View {
        ZStack {
            switch viewModel.position {
            case .top:
                VStack {
                    Button {
                        viewModel.addLife()
                    } label: {
                        Text("")
                    }
                    Button {
                        viewModel.removeLife()
                    } label: {
                        Text("")
                    }
                }
            case .bottom:
                VStack {
                    Button {
                        viewModel.removeLife()
                    } label: {
                        Text("")
                    }
                    Button {
                        viewModel.addLife()
                    } label: {
                        Text("")
                    }
                }
            case .left:
                VStack {
                    Button {
                        viewModel.addLife()
                    } label: {
                        Text("")
                    }
                    Button {
                        viewModel.removeLife()
                    } label: {
                        Text("")
                    }
                }
            case .right:
                VStack {
                    Button {
                        viewModel.removeLife()
                    } label: {
                        Text("")
                    }
                    Button {
                        viewModel.addLife()
                    } label: {
                        Text("")
                    }
                }
            }
            Text(String(viewModel.life))
        }
        .frame(maxWidth: calculateWidth(), minHeight: calculateMinHeight(), maxHeight: calculateMaxHeight(), alignment: .center)
        .background(viewModel.color)
        
    }
    
    private func calculateWidth() -> CGFloat{
        switch viewModel.position {
        case .top, .bottom:
            return UIScreen.main.bounds.size.width
        case .right, .left:
            return UIScreen.main.bounds.size.width / 2
        }
    }
    
    private func calculateMinHeight() -> CGFloat{
        switch viewModel.position {
        case .top, .bottom:
            return UIScreen.main.bounds.size.width / 2
        case .right, .left:
            return UIScreen.main.bounds.size.width
        }
    }
    
    private func calculateMaxHeight() -> CGFloat{
        switch viewModel.position {
        case .top, .bottom:
            return UIScreen.main.bounds.size.width / 2
        case .right, .left:
            return .infinity
        }
    }
}



struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
            .previewInterfaceOrientation(.portrait)
    }
}
