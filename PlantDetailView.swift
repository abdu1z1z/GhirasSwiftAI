import SwiftUI

struct PlantDetailView: View {
    var plantName: String
    var plantDescription: String
    var assetPlantImageName1: String?
    var assetPlantImageName2: String?

    var body: some View {
        ScrollView {
            VStack(alignment: .center, spacing: 20) {
                Text(plantName)
                    .font(.largeTitle)
                    .fontWeight(.bold)
                    .padding(.top, 20)
                    .foregroundColor(Color.black)

                Text("Locations of the plant")
                    .font(.headline)
                    .fontWeight(.semibold)
                    .padding(.top, 10)
                    .foregroundColor(Color.black)

                if let assetImageName1 = assetPlantImageName1, let assetImage1 = UIImage(named: assetImageName1) {
                    Image(uiImage: assetImage1)
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .shadow(radius: 10)
                        .overlay(RoundedRectangle(cornerRadius: 20).stroke(Color("DarkGreen"), lineWidth: 4))
                        .padding(.top, 10)
                } else {
                    Image(systemName: "leaf.circle.fill")
                        .resizable()
                        .scaledToFit()
                        .frame(width: 300, height: 300)
                        .foregroundColor(Color("DarkGreen"))
                        .shadow(radius: 10)
                        .padding(.top, 10)
                }

                Text(plantName)
                    .font(.title)
                    .fontWeight(.semibold)
                    .padding(.top, 20)
                    .foregroundColor(Color("DarkGreen"))

                Text(plantDescription)
                    .font(.body)
                    .padding()
                    .foregroundColor(.black)
                    .multilineTextAlignment(.leading)
                    .background(Color("LightGreen").opacity(0.3))
                    .cornerRadius(10)
                    .shadow(radius: 5)
                    .padding(.horizontal)

                Spacer()
            }
            .background(Color.white)
            .cornerRadius(15)
            .shadow(radius: 10)
            .padding()
        }
        .background(Color.white.edgesIgnoringSafeArea(.all))
        .navigationBarTitle(Text("Plant Details"), displayMode: .inline)
    }
}

struct PlantDetailView_Previews: PreviewProvider {
    static var previews: some View {
        PlantDetailView(plantName: "Example Plant", plantDescription: "This is a description of the example plant.", assetPlantImageName1: "example-asset-plant1", assetPlantImageName2: "example-asset-plant2")
    }
}
