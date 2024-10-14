import SwiftUI

struct SaudiNature: View {
    let columns: [GridItem] = Array(repeating: .init(.flexible()), count: 2)
    let options: [Option] = [
        Option(title: "Rare Plants", imageName: "rarePlants"),
        Option(title: "Extinct Plants", imageName: "extinctPlants"),
        Option(title: "Green Riyadh", imageName: "greenRiyadh"),
        Option(title: "Desertification Efforts", imageName: "desertification"),
        Option(title: "Famous Saudi Plants", imageName: "famousPlants"),
        Option(title: "Plants of My Region", imageName: "localPlants")
    ]

    var body: some View {
        NavigationView {
            ScrollView {
                LazyVGrid(columns: columns, spacing: 20) {
                    ForEach(options, id: \.title) { option in
                        NavigationLink(destination: DetailedView(option: option)) {
                            OptionView(option: option)
                        }
                    }
                }
                .padding()
            }
            .navigationBarTitle(Text("Explore Saudi Nature"), displayMode: .inline)
            .background(Color.white.edgesIgnoringSafeArea(.all))
        }
    }
}

struct Option {
    var title: String
    var imageName: String
}

struct OptionView: View {
    var option: Option

    var body: some View {
        VStack(alignment: .center, spacing: 10) { // Adjust spacing between the image and the text
            Image(option.imageName)
                .resizable()
                .scaledToFill()
                .frame(height: 100)
                .clipped()
                .cornerRadius(10)
                .shadow(radius: 5)
            Text(option.title)
                .fontWeight(.medium)
                .foregroundColor(.black)
                .multilineTextAlignment(.center)
                .padding(.horizontal) // Added padding for better text wrapping
        }
        .frame(maxWidth: .infinity, maxHeight: 200) // Set max height for uniformity
        .background(Color.white)
        .cornerRadius(10)
        .shadow(radius: 5)
    }
}

struct DetailedView: View {
    var option: Option

    var body: some View {
        ScrollView {
            VStack {
                if option.title == "Rare Plants" {
                    RarePlantsDetails()
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

// Specific view for Rare Plants with multiple images and descriptions

struct RarePlantsDetails: View {
    var body: some View {
        ScrollView {
            VStack(alignment: .leading, spacing: 20) {
                ForEach(rarePlantsData, id: \.id) { plant in
                    VStack(alignment: .leading, spacing: 10) {
                        Image(plant.imageName)
                            .resizable()
                            .scaledToFit()
                            .frame(height: 200)
                            .cornerRadius(10)
                            .shadow(radius: 5) // Adding shadow to the image
                        Text(plant.name)
                            .font(.headline)
                            .foregroundColor(.black)
                            .padding(.bottom, 2)
                        Text(plant.description)
                            .font(.subheadline)
                            .foregroundColor(.black)
                            .padding(.bottom, 5)
                    }
                    .padding(.horizontal)
                    .background(Color.white) // Ensuring background is white
                    .cornerRadius(10)
                    .shadow(color: .gray, radius: 5, x: 0, y: 2) // Adding a subtle shadow for depth
                }
            }
            .padding()
        }
        .navigationTitle("Rare Plants")
        .background(Color.white.edgesIgnoringSafeArea(.all)) // Set the background color for the entire view
    }
}

// Example data for rare plants
struct Plant {
    var id: Int
    var name: String
    var description: String
    var imageName: String
}

let rarePlantsData = [
    Plant(id: 1, name: "Rose of Jericho - وردة اريحا", description: "The Anastatica hierochuntica, commonly known as the Rose of Jericho, is a remarkable plant known for its ability to survive desiccation. Native to western Asia, including parts of Saudi Arabia, it is the only species of the genus Anastatica in the mustard family (Brassicaceae). This small gray plant uniquely curls its branches and seedpods inward during the dry season, forming a ball that only opens when moistened. It's often associated with themes of rebirth and resilience due to this ability to seemingly 'come back to life ' when exposed to moisture .", imageName: "plant1"),
    Plant(id: 2, name: "Juniperus procera - العرعر", description: "The Juniper tree, known as Juniperus procera in Latin, is increasingly rare in Saudi Arabia due to overgrazing and unsustainable harvesting practices. These trees, which once thrived in the high-altitude areas of the Asir Mountains, are now under threat, leading to significant environmental concerns. Efforts are being made to conserve and rehabilitate juniper forests to prevent further decline and to preserve the biodiversity that depends on these ecosystems.", imageName: "plant2"),
    Plant(id: 3, name: "Al-Arfaj - العرفج", description: "Al-Arfaj is a resilient desert plant native to the Arabian Peninsula, particularly thriving in Saudi Arabia's arid environments. It is well-adapted to survive in harsh desert conditions with minimal water. The plant features small, hardy leaves that help reduce water loss, making it an excellent example of desert vegetation's adaptability. Al-Arfaj plays a crucial role in stabilizing sand dunes and providing habitat for various desert wildlife. Its presence is indicative of the unique biodiversity that has adapted to the extreme climate of the region.", imageName: "plant3")

]

struct SaudiNature_Previews: PreviewProvider {
    static var previews: some View {
        SaudiNature()
    }
}
