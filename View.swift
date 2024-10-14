import SwiftUI

struct SomeParentView: View {
    @State private var prediction: String = ""

    var body: some View {
        NavigationView {
            VStack {
                Button("Get Prediction") {
                    // هنا الكود للحصول على التنبؤ
                    prediction = "PlantName2"
                }

                NavigationLink("Show Prediction Result", destination: Result(prediction: prediction))
            }
        }
    }
}
