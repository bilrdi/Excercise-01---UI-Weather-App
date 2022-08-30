//
//  ContentView.swift
//  front end weather app sample
//
//  Created by Billi Umar Daeli on 30/08/22.
//

import SwiftUI

struct ContentView: View {
    
    @State private var isNight = false
    
    var body: some View {
        ZStack {
            BackgroundView(isNight : $isNight)
            
            VStack {
                CityTextView(cityName: "Jakarta, Indonesia")
                
                MainWeatherStatusView(imageName: isNight ? "moon.stars.fill" : "cloud.sun.fill", temperature: 29)
                
                HStack(spacing: 20) {
                    WeatherDayView(dayOfWeek: "TUE",
                                   imageName: "cloud.sun.fill",
                                   temperature: 28)
                    
                    WeatherDayView(dayOfWeek: "WED",
                                   imageName: "cloud.heavyrain.fill",
                                   temperature: 27)
                    
                    WeatherDayView(dayOfWeek: "THU",
                                   imageName: "cloud.sun.bolt.fill",
                                   temperature: 29)
                    
                    WeatherDayView(dayOfWeek: "FRI",
                                   imageName: "cloud.bolt.rain.fill",
                                   temperature: 32)
                    
                    WeatherDayView(dayOfWeek: "SAT",
                                   imageName: "cloud.sun.rain.fill",
                                   temperature: 30)
                    
                 
                }
                Spacer()
                
                Button {
                    isNight.toggle()
                } label: {
                    WeatherButton(title: "Change Day Time", textColor: .blue, backgroundColor: .white)
                }
                
                Spacer()
                
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

struct WeatherDayView: View {
    
    var dayOfWeek: String
    var imageName: String
    var temperature: Int
    
    var body: some View {
        VStack {
            Text(dayOfWeek)
                .font(.system(size: 16, weight: .medium, design: .default))
                .foregroundColor(.white)
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 40, height: 40)
                  
            Text("\(temperature)°")
                .font(.system(size: 26, weight: .medium))
                .foregroundColor(.white)
            
        }
    }
}

struct BackgroundView: View {
    
    @Binding var isNight: Bool
    
    var body: some View {
        LinearGradient(gradient: Gradient(colors: [isNight ? .black : .blue, isNight ? .gray : Color("lightBlue")]), startPoint: .topLeading, endPoint: .bottomTrailing)
            .edgesIgnoringSafeArea(.all)
    }
}

struct CityTextView: View {
    var cityName: String
    var body: some View {
        Text(cityName)
            .font(.system(size: 32, weight: .medium, design: .default))
            .foregroundColor(.white)
            .padding()
        
    }
}


struct MainWeatherStatusView: View {
    var imageName: String
    var temperature: Int
    
    var body: some View {
        
        VStack(spacing: 10) {
            Image(systemName: imageName)
                .renderingMode(.original)
                .resizable()
                .aspectRatio(contentMode: .fit)
                .frame(width: 180, height: 180)
            
            Text("\(temperature)°")
                .font(.system(size: 70, weight: .medium))
                .foregroundColor(.white)
        }
        .padding(.bottom, 40)
        
    }
}

