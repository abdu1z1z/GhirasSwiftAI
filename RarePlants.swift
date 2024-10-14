import SwiftUI

struct RarePlants: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("Rare Plants of Saudi Arabia")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 10)

                Text("Discover the unique and rare plants found in the diverse ecosystems of Saudi Arabia.")
                    .font(.subheadline)
                    .padding(.bottom, 20)

                Image("rarePlantsImage")
                    .resizable()
                    .scaledToFit()
                    .frame(width: UIScreen.main.bounds.width * 0.9)
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .padding()

                // Additional content can be added here
            }
            .padding()
        }
        .navigationTitle("Rare Plants")
        .navigationBarTitleDisplayMode(.inline)
    }
}

struct RarePlantsView_Previews: PreviewProvider {
    static var previews: some View {
        RarePlants()
    }
}
