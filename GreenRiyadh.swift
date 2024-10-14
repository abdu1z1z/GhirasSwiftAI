import SwiftUI

// Define a new view for Green Riyadh details
struct GreenRiyadh: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                Text("Green Riyadh")
                    .font(.title)
                    .fontWeight(.bold)

                Image("greenRiyadh") // Placeholder for actual image name
                    .resizable()
                    .scaledToFit()
                    .frame(maxWidth: .infinity)
                    .cornerRadius(10)

                Text("Riyadh is undergoing a transformation to become greener with extensive planting projects aimed at enhancing urban green spaces. These efforts include creating parks, planting trees, and developing sustainable environments to improve quality of life for all residents.")
                    .padding()
                
                Text("Explore the various green projects and discover the beauty of Riyadh's flourishing green spaces.")
                    .padding(.bottom)

                Spacer()
            }
            .padding()
            .navigationBarTitle("Green Riyadh", displayMode: .inline)
        }
    }
}

// Modify DetailedView to include a navigation link to the GreenRiyadhView
struct DetailedsView: View {
    var option: Option

    var body: some View {
        ScrollView {
            VStack {
                if option.title == "Rare Plants" {
                    RarePlantsDetails()
                } else if option.title == "Green Riyadh" {
                    // Navigate to the Green Riyadh specific view
                    GreenRiyadh()
                } else {
                    Image(option.imageName)
                        .resizable()
                        .scaledToFit()
                        .navigationTitle(option.title)
                }
            }
        }
    }
}

// Update the previews
struct GreenRiyadhView_Previews: PreviewProvider {
    static var previews: some View {
        GreenRiyadh()
    }
}

// Ensure that the 'SaudiNature' structure properly initializes the DetailedView with the correct option
