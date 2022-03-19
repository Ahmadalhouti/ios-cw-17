//
//  ContentView.swift
//  corona
//
//  Created by Shaimaa on 07/02/2022.
//

import SwiftUI


// يجب عمل هيكل وكائنات من الهيكل
struct userCovidInfo : Identifiable{
    var fullName :String
    var area :String
    var numberOfDoses:Int
    var id = UUID()
}
var people = [
    
    userCovidInfo(fullName:"ahmad alhouti", area:"shamiya",numberOfDoses:2),
    
    userCovidInfo(fullName:"abdullah alnoumas",area:"alzahra",numberOfDoses:2),
    
    userCovidInfo(fullName:"abdulaziz alhouti", area:"shamiya",numberOfDoses:2)
        
        ]



struct ContentView: View {
    var body: some View {
        ZStack{
            Color.gray
                .opacity(0.3)
                .ignoresSafeArea()
            VStack{
                Image("corona")
                    .resizable()
                    .scaledToFit()
                Text("حالات كورونا الجديدة")
                    .font(.system(size: 30, weight: .bold, design: .default))
                    .padding()
                // name of new cases
                
                List(people, id: \.id){ i in
                
                VStack{
        // الحالة الأولى
                // الاسم
                    Text("fullName:\(people[0].fullName)")
// المنطقة
                    Text("area:\(people[0].area)")
                    // عدد الجرعات
                    Text("number of doses:\(people[0].numberOfDoses)")

                Divider()
                }
                }
                Spacer()
                HStack{
                    Text("آخر تحديث ١٥-٣-٢٠٢٢")
                        .font(.system(size: 20, weight: .bold, design: .default))
                    Image(systemName: "repeat.circle.fill")
                        .foregroundColor(Color(#colorLiteral(red: 0, green: 0.5882, blue: 0.1961, alpha: 1)))
                        .font(.system(size: 30))
                }
                .padding()
                .border(Color.white, width: 5)
                .cornerRadius(10)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}






