//
//  WeatherButton.swift
//  front end weather app sample
//
//  Created by Billi Umar Daeli on 30/08/22.
//

import SwiftUI

struct WeatherButton: View {
    
    var title: String
    var textColor: Color
    var backgroundColor: Color
    
    var body: some View {
        Text("Change Day Time")
            .frame(width: 200, height: 50)
            .background(backgroundColor)
            .foregroundColor(textColor)
            .font(.system(size: 20, weight: .bold, design: .default))
            .cornerRadius(10)
    }
}
