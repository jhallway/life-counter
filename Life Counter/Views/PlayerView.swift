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
        .frame(maxWidth: .infinity, maxHeight: .infinity, alignment: .center)
        
        .background(Color.gray)
        
    }
}



struct PlayerView_Previews: PreviewProvider {
    static var previews: some View {
        PlayerView()
            .previewInterfaceOrientation(.portrait)
    }
}
