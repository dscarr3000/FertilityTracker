//
//  CalendarView.swift
//  FertilityTracker
//
//  Created by Daniel Carr on 5/17/22.
//

import SwiftUI

struct CalendarView: View {
    let days = ["S", "M", "T", "W", "T", "F", "S"]
    
    var body: some View {
        VStack(spacing: 20) {
            // Title Bar
            HStack {
                Button {
                    
                } label: {
                    Image(systemName: "person.crop.circle")
                        .font(.title)
                        .foregroundColor(.black)
                }
                Spacer()
                Text("May")
                    .font(.title)
                    .bold()
                Spacer()
                Button {
                    
                } label: {
                    Image(systemName: "gearshape.circle")
                        .font(.title)
                        .foregroundColor(.black)
                }
            }
            .padding(.horizontal)
            
            // Days
            HStack(spacing: 0) {
                ForEach(days, id: \.self) {day in
                    Text(day)
                        .font(.callout)
                        .fontWeight(.semibold)
                        .frame(maxWidth: .infinity)
                }
            }
            Divider()
            
            // Dates
            
            
            Spacer()
        }
    }
}

struct CalendarView_Previews: PreviewProvider {
    static var previews: some View {
        CalendarView()
    }
}
