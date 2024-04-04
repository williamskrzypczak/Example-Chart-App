//
//  DataPoint.swift
//  Example Chart App
//
//  Created by Bill Skrzypczak on 4/4/24.
//

import Foundation


// Define a basic data model for your data
struct SleepDataPoint: Identifiable {
    
    var id = UUID().uuidString
    var day: String
    var hours: Int
    var type: String = "Night"
}
