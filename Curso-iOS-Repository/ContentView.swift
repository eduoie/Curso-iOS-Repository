//
//  ContentView.swift
//  Curso-iOS-Repository
//
//  Created by Equipo 2 on 20/2/26.
//

import SwiftUI
import SwiftData

// Usamos este struct para leer datos de la API REST
struct UsuarioDTO: Codable {
    let id: Int
    let name: String
    let username: String
    let email: String
}

@Model
class Usuario {
    
    /* Nos da un par de ventajas usar Attribute:
     - Evitamos duplicados si hacemos dos veces `context.insert(nuevoUsuario)`
     - Activa el upsert (update + insert): nos sirve el mismo comando para actualizar que para insertar
     - Y por supuesto garantiza la unicidad
    */
    @Attribute(.unique) var id: Int
    var nombre: String
    var nombreUsuario: String
    var email: String
    
    init(id: Int, nombre: String, nombreUsuario: String, email: String) {
        self.id = id
        self.nombre = nombre
        self.nombreUsuario = nombreUsuario
        self.email = email
    }
    
    convenience init(from dto: UsuarioDTO) {
        self.init(id: dto.id, nombre: dto.name, nombreUsuario: dto.username, email: dto.email)
    }
}







struct ContentView: View {
    var body: some View {
        VStack {
            Image(systemName: "globe")
                .imageScale(.large)
                .foregroundStyle(.tint)
            Text("Hello, world!")
        }
        .padding()
    }
}

#Preview {
    ContentView()
}
