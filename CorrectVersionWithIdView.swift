//
//  CorrectVersionWithIdView.swift
//  MultiLineChart
//
//  Created by Christian Schwind on 19.10.2026.
//

import Charts
import SwiftUI

struct CorrectVersionWithIdView: View {
    struct MonthlyHoursOfSunshine {
        var city: String
        var date: Date
        var hoursOfSunshine: Double
        var monthlyId: UUID = UUID()
        
        init(city: String, month: Int, hoursOfSunshine: Double) {
            let calendar = Calendar.autoupdatingCurrent
            self.city = city
            self.date = calendar.date(from: DateComponents(year: 2020, month: month))!
            self.hoursOfSunshine = hoursOfSunshine
        }
    }
    
    var data: [MonthlyHoursOfSunshine] = [
        MonthlyHoursOfSunshine(city: "Seattle", month: 1, hoursOfSunshine: 74),
        MonthlyHoursOfSunshine(city: "Cupertino", month: 1, hoursOfSunshine: 170),
        // ...
        MonthlyHoursOfSunshine(city: "Seattle", month: 12, hoursOfSunshine: 62),
        MonthlyHoursOfSunshine(city: "Cupertino", month: 12, hoursOfSunshine: 199)
    ]
    
    var body: some View {
        Chart(data, id: \.monthlyId) {
            LineMark(
                x: .value("Month", $0.date),
                y: .value("Hours of Sunshine", $0.hoursOfSunshine)
            )
            .foregroundStyle(by: .value("City", $0.city))
        }
    }
}

#Preview {
    CorrectVersionWithIdView()
}
