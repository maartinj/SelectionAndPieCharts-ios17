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

struct DonutChartView: View {
    var wineTypes = WineType.all
    @State private var selectedCount: Int?
    @State private var selectedWineType: WineType?
    var body: some View {
        NavigationStack {
            VStack {
                Chart(wineTypes) { wineType in
                    SectorMark(angle: .value("In Stock", wineType.inStock),
                               innerRadius: .ratio(0.65),
                               angularInset: 1
                    )
//                        .foregroundStyle(by: .value("Wine Type", wineType.name))
                        .foregroundStyle(wineType.color)
                        .cornerRadius(10)
                }
                .frame(height: 350)
                Spacer()
            }
            .padding()
            .navigationTitle("Donut Chart")
        }
    }
}

#Preview {
    DonutChartView()
}
