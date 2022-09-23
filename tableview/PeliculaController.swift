//
//  ViewController.swift
//  tableview
//
//  Created by Alumno on 23/09/22.
//  Copyright © 2022 Sebastian Encinas. All rights reserved.
//

import UIKit

class PeliculaController: UIViewController,
    UITableViewDelegate, UITableViewDataSource{

    var peliculas: [Pelicula] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        peliculas.append(Pelicula(titulo: "Titanic", año: "1990", director: "James Camero", genero: "Drama"))
        peliculas.append(Pelicula(titulo: "Moana", año: "2016", director: "Henrick Claso", genero: "Accion"))
        peliculas.append(Pelicula(titulo: "One Day", año: "2011", director: "Federick Lasso", genero: "Suspenso"))
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
            let celda =
        tableView.dequeueReusableCell(withIdentifier: "celdaPelicula")
        return celda!
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }

}

