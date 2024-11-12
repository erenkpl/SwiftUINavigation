import SwiftUI

struct SecondView: View{
    
    @State var path : [Dog] = []
    
    var body: some View{
        
        NavigationStack(path: $path){
            List(dogs){ dog in
                NavigationLink(dog.name, value: dog)
            }
            .navigationTitle("Pets")
            .navigationDestination(for: Dog.self) { dog in
                VStack{
                    Text(dog.name)
                    Button(action: {
                        self.path = []
                        // popToRootViewController (UIKit)
                    }, label: {
                        Text("Go Back")
                    })
                    Button(action: {
                        path = [dogs[0], dogs[1]]
                    }, label: {
                        Text("Add to Path")
                    })
                }
                // Path ekleyerek, gidilecek view'ı değiştirebliriz.
            }
        }
    }
}

struct SecondView_Previews: PreviewProvider{
    static var previews: some View{
        SecondView()
    }
}
