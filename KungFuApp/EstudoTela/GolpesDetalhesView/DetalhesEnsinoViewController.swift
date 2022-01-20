//
//  DetalhesEnsinoViewController.swift
//  KungFuApp
//
//  Created by João Victor Ferreira Pimenta on 27/07/21.
//

import UIKit

class DetalhesEnsinoViewController: UIViewController {
    @IBOutlet weak var tituloLabel: UILabel!
    
    @IBOutlet weak var ilustracaoEstudoDetalheImageView: UIImageView!
    
    
    @IBOutlet weak var textoDetalheEstudoLabel: UITextView!
    
    var idGolpe: Int! = 0
    var tipoGolpe: String!
    override func viewDidLoad() {
        super.viewDidLoad()
        if tipoGolpe == "socos"{
            tituloLabel.text = socos[idGolpe].titulos
            ilustracaoEstudoDetalheImageView.image = socos[idGolpe].imagens
            textoDetalheEstudoLabel.text = socos[idGolpe].descricao
        }
        else if tipoGolpe == "chutes" {
            tituloLabel.text = chutes[idGolpe].titulos
            ilustracaoEstudoDetalheImageView.image = chutes[idGolpe].imagens
            textoDetalheEstudoLabel.text = chutes[idGolpe].descricao
        }
    }
}
