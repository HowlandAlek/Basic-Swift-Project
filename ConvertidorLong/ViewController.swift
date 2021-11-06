//
//  ViewController.swift
//  ConvertidorLong
//
//  Created by Alek Howland on 25/10/21.
//

import UIKit

class ViewController: UIViewController
{
    // Configurar Outlets
    @IBOutlet weak var tfPulgadas: UITextField!
    @IBOutlet weak var tfCentimetros: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        // Cerrar el teclado al dar click en pantalla principal, independiente de quien lo solicita
        view.endEditing(true)
    }

    @IBAction func convertir(_ sender: UIButton) {
        let strPulgadas = tfPulgadas.text
        let pulgadas = Double(strPulgadas!)
        
        if pulgadas != nil {
            let cm = pulgadas! * 2.54
            tfCentimetros.text = "\(cm) cm"
        } else {
            // Cuadro de dialogo
            let alerta = UIAlertController(title: "Aviso", message: "Error, entrada incorrecta", preferredStyle: .alert)
            // Boton
            let aceptar = UIAlertAction(title: "Aceptar", style: .default, handler: nil)
            alerta.addAction(aceptar)
            // Mostrar la alerta
            present(alerta, animated: true)
        }
        // Ocultar el teclado despues de ingresar las pulgadas
        tfPulgadas.resignFirstResponder()
    }
    
}

