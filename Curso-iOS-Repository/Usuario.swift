//
//  Usuario.swift
//  Curso-iOS-Repository
//
//  Created by Equipo 2 on 20/2/26.
//

import SwiftData

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
