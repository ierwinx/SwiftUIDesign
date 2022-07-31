import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack(alignment: .center, spacing: 10) {
            
            Text("Pruebas Swift UI shduhsdsd")
            
            Spacer()
            
            HStack {
                Text("Swift UI").padding().font(.title).foregroundColor(.red)
                Image(systemName: "pencil.circle.fill")

            }
            
            
            Image("Cheems")
                .resizable()
                .scaledToFill()
                .aspectRatio(contentMode: .fill)
                .frame(width: 150, height: 150, alignment: .center)
                .clipShape(Circle())
                .overlay(Circle().stroke(Color.green, lineWidth: 2))
                .shadow(color: .black, radius: 20, x: 10, y: 10)
                .overlay(Text("Chems")
                        .foregroundColor(.white)
                        .font(.title), alignment: .top)
            
            HStack {
                Text("Swiwt UI").padding().font(.title).foregroundColor(.white).background(.green)
                Image(systemName: "pencil.circle.fill")
            }
            
            Spacer()
            
            HStack {
                Text("Salir").padding().font(.caption).foregroundColor(.white).background(.red)
                Spacer()
                Text("Aceptar").padding().font(.caption).foregroundColor(.white).background(.blue)
            }
            
        }.background(.white)
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
