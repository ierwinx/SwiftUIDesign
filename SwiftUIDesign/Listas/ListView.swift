import SwiftUI

final class UsersModelData: ObservableObject {
    
    @Published var arrUsuarios = [
        Usuario(id: 0, nombre: "Erwin", edad: 31, carro: true, avatar: Image(systemName: "person.fill")),
        Usuario(id: 1, nombre: "Diana", edad: 24, carro: false, avatar: Image(systemName: "person.fill")),
        Usuario(id: 2, nombre: "Pepe", edad: 29, carro: true, avatar: Image(systemName: "person.fill")),
        Usuario(id: 3, nombre: "Ramon", edad: 24, carro: true, avatar: Image(systemName: "person.fill")),
        Usuario(id: 4, nombre: "Rober", edad: 27, carro: false, avatar: Image(systemName: "person.fill")),
        Usuario(id: 5, nombre: "Carlos", edad: 36, carro: true, avatar: Image(systemName: "person.fill")),
        Usuario(id: 6, nombre: "Juan", edad: 39, carro: true, avatar: Image(systemName: "person.fill")),
        Usuario(id: 7, nombre: "Jorge", edad: 20, carro: false, avatar: Image(systemName: "person.fill")),
        Usuario(id: 8, nombre: "Andrea", edad: 21, carro: true, avatar: Image(systemName: "person.fill"))
    ]
    
}

struct ListView: View {
    
    @EnvironmentObject var usersModelData: UsersModelData
    @State private var showUsers = false
    
    private var filtroUsuarios: [Usuario] {
        return usersModelData.arrUsuarios.filter { user in
            return !showUsers || user.carro
        }
    }
    
    var body: some View {
        
        NavigationView {
            
            VStack {
                Toggle(isOn: $showUsers) {
                    Text("Mostrar solo usuarios con carro")
                }.padding()
                List(filtroUsuarios, id: \.id) { user in
                    NavigationLink(destination: DetalleLista(bCarro: $usersModelData.arrUsuarios[user.id].carro, usuario: user)) {
                        Celda(usuario: user)
                    }
                }
                
            }
            .navigationTitle("Personas")
            
        }
        
    }
}

struct ListView_Previews: PreviewProvider {
    static var previews: some View {
        ListView().environmentObject(UsersModelData())
    }
}
