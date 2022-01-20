//
//  ViewController.swift
//  KungFuApp
//
//  Created by João Victor Ferreira Pimenta on 26/07/21.
//

import UIKit

class HojeViewController: UIViewController {

    
    @IBOutlet weak var sugestaoEstudoImageView: UIImageView!
    
    @IBOutlet weak var sugestaoTreinoImageView: UIImageView!
    
    
    
    let golpeSugestao: [GolpeEstrutura] = chutes + socos
    var idGolpe: Int!
    let idTreino: Int! = Int.random(in: 0..<exercicios.count)
    var tipoGolpe: String!
    
    

    
    override func viewDidLoad() {
       super.viewDidLoad()
        
        //arredondamento
        sugestaoEstudoImageView.layer.cornerRadius = 10
        sugestaoEstudoImageView.layer.masksToBounds = true
        
        sugestaoTreinoImageView.layer.cornerRadius = 10
        sugestaoTreinoImageView.layer.masksToBounds = true
        
        
        //
        idGolpe = Int.random(in: 0..<golpeSugestao.count)
        sugestaoEstudoImageView.image = golpeSugestao[idGolpe].imagens
        
        sugestaoTreinoImageView.image = exercicios[idTreino].imagemExercicio
        if idGolpe > chutes.count{
            tipoGolpe = "socos"
            idGolpe = idGolpe - chutes.count
        }
        else{
         tipoGolpe = "chutes"
        }
        
        //Procedimento de acionamento da imagem
        //Passo 1: Habilitar a interação com o usuário
        sugestaoEstudoImageView.isUserInteractionEnabled = true
        sugestaoTreinoImageView.isUserInteractionEnabled = true
        
        //passo 2: Criar o gesto para IlustraçãoEstudo
        let tapRecognizer = UITapGestureRecognizer (target: self, action: #selector(tapEstudo))
        sugestaoEstudoImageView.addGestureRecognizer(tapRecognizer)
        
        //Passo 2.1: Criar o gesto para IlustraçãoTreino
        let tapRecognizerTreino = UITapGestureRecognizer(target: self, action: #selector(tapExercicio))
        sugestaoTreinoImageView.addGestureRecognizer(tapRecognizerTreino)
    }

    @objc func tapEstudo() {
        performSegue(withIdentifier: "segueEstudo", sender: self)
    }
    
    @objc func tapExercicio(){
        performSegue(withIdentifier: "SugestaoTreinoSegue", sender: self)
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "segueEstudo" {
            let vc = segue.destination as? DetalhesEnsinoViewController
            vc?.idGolpe = idGolpe
            vc?.tipoGolpe = tipoGolpe
        }
        else{
            let vc = segue.destination as? DetalhesTreinosViewController
            vc?.idTreino = idTreino
        }
    }

}

