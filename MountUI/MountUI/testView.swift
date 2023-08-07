//
//  testView.swift
//  MountUI
//
//  Created by Ian Pacini on 02/08/23.
//

import SwiftUI

struct testView: View {
   var iconezinho: IosiIcon
    var body: some View {

       Image(systemName: iconezinho.rawValue).foregroundColor(.black)


        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
            .iosiFont(size: .largeTitle, weight: .bold)
            .foregroundColor(Color.IosiColors.iosiSuccess70)
    }
}

struct testView_Previews: PreviewProvider {
    static var previews: some View {
        testView( iconezinho: .docPlaintFill)
    }
}
