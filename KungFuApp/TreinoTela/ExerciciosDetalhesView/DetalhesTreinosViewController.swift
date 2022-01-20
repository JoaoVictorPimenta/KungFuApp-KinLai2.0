//
//  DetalhesTreinosViewController.swift
//  KungFuApp
//
//  Created by João Victor Ferreira Pimenta on 28/07/21.
//

import UIKit

class DetalhesTreinosViewController: UIViewController {
    @IBOutlet weak var tituloTreinoDetalheLabel: UILabel!
    
    @IBOutlet weak var ilustracaoDetalheImageView: UIImageView!
    
    @IBOutlet weak var textoDetalheTreinolabel: UITextView!
    
    var idTreino: Int = 0
    override func viewDidLoad() {
        super.viewDidLoad()
        tituloTreinoDetalheLabel.text = exercicios[idTreino].tituloExericios
        ilustracaoDetalheImageView.image = exercicios[idTreino].imagemExercicio
        textoDetalheTreinolabel.text = exercicios[idTreino].descricaoExercicio
        // Do any additional setup after loading the view.
    }
    

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as? CronometroViewController
        vc?.contador = idTreino
    }
}
