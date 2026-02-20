//
//  Curso_iOS_RepositoryApp.swift
//  Curso-iOS-Repository
//
//  Created by Equipo 2 on 20/2/26.
//

import SwiftUI
import SwiftData

@main
struct Curso_iOS_RepositoryApp: App {
    let container: ModelContainer
//    let apiService = MockApiService()
    let apiService = ApiService()

    init() {
        // Configura la base de datos antes de llamar a las vistas.
        container = try! ModelContainer(for: Usuario.self)
    }
    
    var body: some Scene {
        WindowGroup {
            let context = container.mainContext
            let repository = UsuarioRepository(apiService: apiService, context: context)
            VistaUsuarios(repository: repository)
        }
        .modelContainer(container)
    }
}
