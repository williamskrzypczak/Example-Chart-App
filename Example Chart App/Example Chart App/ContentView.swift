//
//  ContentView.swift
//  Example Chart App
//
//  Created by Bill Skrzypczak on 4/4/24.
//

import SwiftUI
import Charts

struct ContentView: View {
    
    
    // Load an array with the data you want to display
    var data = [
        SleepDataPoint(
            day: "Mon",
            hours: 6),
        
        SleepDataPoint(
            day: "Mon",
            hours: 2,
            type: "Nap"),
                
        SleepDataPoint(
            day: "Tue",
            hours: 6),
                
        SleepDataPoint(
            day: "Wed",
            hours: 10),
                
        SleepDataPoint(
            day: "Thu",
            hours: 6),
                
        SleepDataPoint(
            day: "Fri",
            hours: 1),
        
        SleepDataPoint(
            day: "Fri",
            hours: 1,
            type: "Nap"),
        
        SleepDataPoint(
            day: "Fri",
            hours: 2,
            type: "Accidental"),
                
        SleepDataPoint(
            day: "Sat",
            hours: 7),
                
        SleepDataPoint(
            day: "Sun",
            hours: 7)]
    
    var body: some View {

        // Loop thru the data to display it
        Chart {
            
            ForEach (data) { d in
                
                BarMark(x: .value("Day", d.day),
                        y: .value("Hours", d.hours))
                .annotation (position: .overlay) {
                    Text(String(d.hours))
                        .foregroundColor(.white)
                }
                .foregroundStyle(by: .value("Type", d.type))
            }
            
        }
        .chartYScale(range: .plotDimension(padding: 60))
        .padding()
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
