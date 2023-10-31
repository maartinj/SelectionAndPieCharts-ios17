//
// Created for SelectionAndPieCharts
// by  Stewart Lynch on 2023-08-05
//
// Follow me on Mastodon: @StewartLynch@iosdev.space
// Follow me on Threads: @StewartLynch (https://www.threads.net)
// Follow me on X: https://x.com/StewartLynch
// Subscribe on YouTube: https://youTube.com/@StewartLynch
// Buy me a ko-fi:  https://ko-fi.com/StewartLynch


import SwiftUI

struct DonutChartView: View {
    var body: some View {
        NavigationStack {
            VStack {
                Text("Donut Chart")
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
