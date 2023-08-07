//
//  GenericButton.swift
//  MountUI
//
//  Created by Yohanne Moreira on 01/08/23.
//

import SwiftUI

enum Size: CGFloat {
    case large = 343
    case small = 158
    case minimal = 48
}

enum ButtonType {
    case primary
    case secundary
}
struct GenericButton: View {
    var buttonSize: Size
    var buttonType: ButtonType
    var action: () -> Void
    var label: String
    var icon: String
    
    var activated: Bool = false
    @Environment(\.colorScheme) var colorScheme
    
    var body: some View {
        Button(action: {
            action()
        }, label: {
            switch buttonType {
            case .primary:
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: buttonSize.rawValue, height: 48)
                        .foregroundColor(colorScheme == .light ? Color.IosiColors.iosiPrimary10 : Color.IosiColors.iosiPrimary70)
                    
                    HStack(spacing: 0) {
                        Text(label)
                            .iosiFont(size: .body, weight: .bold)
                            .foregroundColor(colorScheme == .light ? Color.IosiColors.iosiNeutral100 : Color.IosiColors.iosiNeutralZero)
                        
                        Image(systemName: icon)
                            .foregroundColor(colorScheme == .light ? Color.IosiColors.iosiNeutral100 : Color.IosiColors.iosiNeutralZero)
                            .padding(.horizontal, 8)
                    }
                }
                
                
            case .secundary:
                ZStack{
                    
                    RoundedRectangle(cornerRadius: 10)
                        .frame(width: buttonSize.rawValue, height: 48)
                        .foregroundColor(colorScheme == .light ? Color.IosiColors.iosiPrimary10 : Color.IosiColors.iosiPrimary70)
                    
                    HStack(spacing: 0) { 
                        Text(label)
                            .iosiFont(size: .body, weight: .bold)
                            .foregroundColor(colorScheme == .light ? Color.IosiColors.iosiNeutral100 : Color.IosiColors.iosiNeutralZero)
                        
                        Image(systemName: icon)
                            .foregroundColor(colorScheme == .light ? Color.IosiColors.iosiNeutral100 : Color.IosiColors.iosiNeutralZero)
                            .padding(.horizontal, 8)
                    }
                }
            }
        })
    }
}

struct ButtonGeneric_Previews: PreviewProvider {
    static var previews: some View {
        GenericButton( buttonSize: .large, buttonType: .secundary, action: { print("oi")}, label: "Label", icon: "paperclip")
    }
}
