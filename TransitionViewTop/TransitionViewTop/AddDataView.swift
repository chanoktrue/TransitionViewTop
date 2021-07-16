//
//  AddDataView.swift
//  TransitionViewTop
//
//  Created by Thongchai Subsaidee on 15/7/2564 BE.
//

import SwiftUI

struct AddDataView: View {
    
    @Binding var isPresent: Bool
    
    var body: some View {
        
        VStack {
            RoundedRectangle(cornerRadius: 25.0)
                .fill(Color.blue)
                .frame(width: 100, height: 100, alignment: .center)
            
            
            Button(action: {
                isPresent.toggle()
            }, label: {
                Text("Close")
            })
        }
    }
}

struct AddDataView_Previews: PreviewProvider {
    static var previews: some View {
        AddDataView(isPresent: .constant(false))
    }
}
