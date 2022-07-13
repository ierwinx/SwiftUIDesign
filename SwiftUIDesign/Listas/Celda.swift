import SwiftUI

struct Celda: View {
    
    var usuario: Usuario?
    
    var body: some View {
        HStack {
            usuario?.avatar.resizable().frame(width: 50, height: 50, alignment: .center).padding()
            VStack(alignment: .leading) {
                Text(usuario?.nombre ?? "").font(.title)
                Text("Edad: \(usuario?.edad ?? 0)").font(.body)
                if let bCarro = usuario?.carro {
                    Toggle("Tiene carro?", isOn: .constant(bCarro))
                }
            }
            Spacer()
        }
    }
}

struct Celda_Previews: PreviewProvider {
    static var previews: some View {
        let usuario = Usuario(id: 1, nombre: "Erwin", edad: 31, carro: true, avatar: Image(systemName: "person.fill"))
        Celda(usuario: usuario).previewLayout(.fixed(width: 500, height: 90))
    }
}
