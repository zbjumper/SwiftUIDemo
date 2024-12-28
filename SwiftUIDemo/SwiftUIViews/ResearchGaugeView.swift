//
//  ResearchGaugeView.swift
//  SwiftUIDemo
//
//  Created by 张博 on 2024/12/22.
//
import SwiftUI

struct ResearchGaugeView: View {
    @State private var batteryLevel = 0.4
    
    var body: some View {
        Gauge(value: batteryLevel) {
            Text("Battery Level")
        }
        .gaugeStyle(.accessoryCircularCapacity)
        
    }
}

struct StyledGauge: View {
    @State private var current = 67.0
    @State private var minValue = 50.0
    @State private var maxValue = 170.0
    let gradient = Gradient(colors: [.green, .yellow, .orange, .red])
    
    var body: some View {
        Gauge(value: current, in: minValue...maxValue) {
            Image(systemName: "heart.fill")
                .foregroundColor(.red)
        } currentValueLabel: {
            Text("\(Int(current))")
                .foregroundColor(Color.green)
        } minimumValueLabel: {
            Text("\(Int(minValue))")
                .foregroundColor(Color.green)
        } maximumValueLabel: {
            Text("\(Int(maxValue))")
                .foregroundColor(Color.red)
        }
//        .gaugeStyle(CircularGaugeStyle(tint: gradient))
        .gaugeStyle(AccessoryCircularGaugeStyle())
    }
}
