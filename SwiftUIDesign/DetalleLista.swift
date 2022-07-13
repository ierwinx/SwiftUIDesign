import SwiftUI

struct DetalleLista: View {
    
    @Binding var bCarro: Bool
    var usuario: Usuario?
    
    var body: some View {
        VStack {
            usuario?.avatar.resizable().frame(width: 100, height: 100, alignment: .center).padding().clipShape(Circle()).overlay(Circle().stroke(.black, lineWidth: 2))
            
            HStack {
                Text("Nombre: ").font(.title).padding(.leading)
                Text(usuario?.nombre ?? "").font(.body)
                Spacer()
            }
            
            HStack {
                Text("Edad: ").font(.title).padding(.leading)
                Text("\(usuario?.edad ?? 0)").font(.body)
                Spacer()
            }
            
            HStack {
                Text("Carro").font(.title).padding(.leading)
                Toggle("", isOn: $bCarro)
                Spacer()
            }
            
            Spacer()
        }
    }
}

struct DetalleLista_Previews: PreviewProvider {
    static var previews: some View {
        DetalleLista(bCarro: .constant(true))
    }
}
