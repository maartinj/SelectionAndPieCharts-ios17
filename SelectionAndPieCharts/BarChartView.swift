//
// Created for SelectionAndPieCharts
// by  Stewart Lynch on 2023-08-05
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import Charts
import SwiftUI

struct BarChartView: View {
    var wineTypes = WineType.all
    var body: some View {
        NavigationStack {
            VStack {
                Chart(wineTypes) { wineType in
                    BarMark(
                        x: .value(
                            "Type",
                            wineType.name
                        ),
                        y: .value(
                            "In Stock",
                            wineType.inStock
                        )
                    )
                    .foregroundStyle(wineType.color.gradient)
                    .annotation {
                        Text("\(wineType.inStock)")
                    }
                }
                .frame(height: 400)
                Spacer()
            }
            .padding()
            .navigationTitle("Bar Chart")
        }
    }
}

#Preview {
    BarChartView()
}
