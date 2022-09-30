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

    @IBOutlet weak var tvPeliculas: UITableView!
    
    var peliculas: [Pelicula] = []
    override func viewDidLoad() {
        super.viewDidLoad()
        
        peliculas.append(Pelicula(titulo: "Titanic", año: "1990", director: "James Camero", genero: "Drama"))
        peliculas.append(Pelicula(titulo: "Moana", año: "2016", director: "Henrick Claso", genero: "Accion"))
        peliculas.append(Pelicula(titulo: "One Day", año: "2011", director: "Federick Lasso", genero: "Suspenso"))
        
        peliculas[0].Personaje.append(personaje(nombre: "Steven Jarres", actriz: "Leonardo DiCaprio"))
        peliculas[0].Personaje.append(personaje(nombre: "Titan Krawers", actriz: "Ana Larusso"))
        peliculas[1].Personaje.append(personaje(nombre: "Frank ocean", actriz: "Christopher Francis"))
        peliculas[1].Personaje.append(personaje(nombre: "Kendrik Lamar", actriz: "Kendrick Lamar Duckworth"))
        peliculas[2].Personaje.append(personaje(nombre: "Tyler the creator", actriz: "Hanna Montana"))
        peliculas[2].Personaje.append(personaje(nombre: "Snoop Dog", actriz: "Michael Jackson"))


        
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return peliculas.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaPelicula") as! CeldaPeliculasController
        celda.lblDirector.text = peliculas[indexPath.row].director
        celda.lblAño.text = peliculas[indexPath.row].año
        celda.lblTitulo.text = peliculas[indexPath.row].titulo
        return celda
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 65
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destino = segue.destination as! DetallesPeliculaController
        destino.pelicula = peliculas[tvPeliculas.indexPathForSelectedRow! .row]
    }

}

