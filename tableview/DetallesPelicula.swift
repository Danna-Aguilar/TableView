//
//  DetallesPelicula.swift
//  tableview
//
//  Created by Alumno on 26/09/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

import UIKit
class DetallesPeliculaController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var pelicula : Pelicula?
    
    @IBOutlet weak var lblTvPersonajes: UITableView!
    @IBOutlet weak var lblDirector: UILabel!
    @IBOutlet weak var lblAño: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.title = "Detalles de película"
        
        if pelicula != nil {
            self.title = pelicula?.titulo
            lblDirector.text = pelicula?.año
            lblAño.text = pelicula?.director
            
        }
        
    }
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return pelicula!.Personaje.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPersonaje") as! PersonajeController
        
        celda.lblNombre.text = pelicula?.Personaje[indexPath.row].nombre
        celda.lblActriz.text = pelicula?.Personaje[indexPath.row].actriz
        
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 61
    }
    
}
