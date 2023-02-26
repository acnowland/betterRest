//
//  ContentView.swift
//  betterRest
//
//  Created by Adam Nowland on 2/26/23.
//

import SwiftUI

struct ContentView: View {
    @State private var wakeUp = Date.now
    @State private var sleepAmount = 8.0
    @State private var coffeeAmount = 1
    
    func calculateBedtime () {
        return
    }
    
    var body: some View {
        NavigationStack {
            VStack {
                Text("When do you want to wake up?")
                    .font(.headline)
                DatePicker("Please enter a time",
                           selection: $wakeUp,
                           displayedComponents: .hourAndMinute
                )
                .labelsHidden()
                Text("Desired Sleep Amount")
                    .font(.headline)
                Stepper("\(sleepAmount.formatted()) hours", value: $sleepAmount, in: 4...12, step: 0.25)
                Text("Daily Coffee Intake")
                    .font(.headline)
                Stepper(coffeeAmount == 1 ? "1 cup" : "\(coffeeAmount) cups", value: $coffeeAmount, in: 1...15)
            }
            
            .navigationTitle("Better Rest")
            .toolbar {
                Button("Calculate", action: calculateBedtime)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
