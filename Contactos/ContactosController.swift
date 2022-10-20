//
//  ContactosController.swift
//  Contactos
//
//  Created by Alumno on 20/10/22.
//  Copyright © 2022 ULSA. All rights reserved.
//

import UIKit

class ContactoController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    
    
    var contactos : [Contacto] = []
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return contactos.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let celda = tableView.dequeueReusableCell(withIdentifier: "celdaContacto") as? CeldaContactoController
        celda?.lblNombre.text = contactos[indexPath.row].nombre
        celda?.lblTelefono.text = contactos[indexPath.row].telefono

        return celda!
    }
    
    
    s
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
        contactos.append(Contacto(nombre: "qwfwgfwe", telefono: "15647"))
        contactos.append(Contacto(nombre: "efweg", telefono: "46334737"))
        contactos.append(Contacto(nombre: "qesdgwg", telefono: "8769679"))
        
        
    }
}
