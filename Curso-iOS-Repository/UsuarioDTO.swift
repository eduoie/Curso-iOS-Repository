//
//  para.swift
//  Curso-iOS-Repository
//
//  Created by Equipo 2 on 20/2/26.
//

// Usamos este struct para leer datos de la API REST
struct UsuarioDTO: Codable {
    let id: Int
    let name: String
    let username: String
    let email: String
}
