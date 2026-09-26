//
//  ContentView.swift
//  MultiLineChart
//
//  Created by Christian Schwind on 26.09.2026.
//

import Charts
import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Chart(data) {
                    LineMark(
                        x: .value("Month", $0.date),
                        y: .value("Hours of Sunshine", $0.hoursOfSunshine)
                    )
                    .foregroundStyle(by: .value("City", $0.city))
                    .symbol(by: .value("City", $0.city))
                }
        }
        .padding()
    }
}

#Preview {
    ContentView()
}

struct MonthlyHoursOfSunshine: Identifiable {
    var city: String
    var date: Date
    var hoursOfSunshine: Double


    init(city: String, month: Int, hoursOfSunshine: Double) {
        let calendar = Calendar.autoupdatingCurrent
        self.city = city
        self.date = calendar.date(from: DateComponents(year: 2020, month: month))!
        self.hoursOfSunshine = hoursOfSunshine
    }
    
    var id: Date {
        date
    }
}

var data: [MonthlyHoursOfSunshine] = [
    MonthlyHoursOfSunshine(city: "Cupertino", month: 1, hoursOfSunshine: 196),
    MonthlyHoursOfSunshine(city: "Seattle", month: 1, hoursOfSunshine: 74),
    MonthlyHoursOfSunshine(city: "Seattle", month: 12, hoursOfSunshine: 62),
    
    MonthlyHoursOfSunshine(city: "Cupertino", month: 12, hoursOfSunshine: 199),
    // ...
    
]
