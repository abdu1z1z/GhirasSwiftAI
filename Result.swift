import SwiftUI

struct Result: View {
    var prediction: String
    
    var body: some View {
        ScrollView {
            VStack(alignment: .leading) {
                Text("\(prediction)")
                    .font(.title)
                    .fontWeight(.bold)
                    .padding(.bottom, 5)
            }
            .padding()
            .navigationBarTitle("Prediction Result", displayMode: .inline)
        }
    }
    
    // Return the plant name based on the prediction
    func predictionName(_ prediction: String) -> String {
        switch prediction {
        case "0" : return "Plant Name اكاسيا"
        case "1": return "Plant Name اقحوان"
        case "2": return "Plant Name البشام"
        case "3": return "Plant Name الحميض"
        case "4": return "Plant Name الشث"
        case "5": return "Plant Name اراك"
        case "6": return "Plant Name عرعر"
        case "7": return "Plant Name حناء"
        case "8": return "Plant Name بقدونس"
        case "9": return "Plant Name برتقال"
        case "10": return "Plant Name جاكرندا"
        case "11": return "Plant Name جهنميه"
        case "12": return "Plant Name حنظل"
        case "13": return "Plant Name كف مريم"
        case "14": return "Plant Name خزامى"
        case "15": return "Plant Name خروع"
        case "16": return "Plant Name كمون"
        case "17": return "Plant Name كراث"
        case "18": return "Plant Name مراميه"
        case "19": return "Plant Name مورينقا"
        case "20": return "Plant Name نخل"
        case "21": return "Plant Name نعناع"
        case "22": return "Plant Name ريحان"
        case "23": return "Plant Name رمان"
        case "24": return "Plant Name سدر"
        case "25": return "Plant Name صبار"
        case "26": return "Plant Name ست الحسن"
        case "27": return "Plant Name تين"
        case "28": return "Plant Name توت"
        case "29": return "Plant Name زعفران"
        default: return "Unknown Plant"
        }
    }
    
    // Return detailed information based on the plant prediction
   
}

struct ResultView_Previews: PreviewProvider {
    static var previews: some View {
        Result(prediction: "Plant1")
    }
}
