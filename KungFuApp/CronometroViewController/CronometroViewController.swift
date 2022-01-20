//
//  CronometroViewController.swift
//  KungFuApp
//
//  Created by João Victor Ferreira Pimenta on 28/07/21.
//

import UIKit

class CronometroViewController: UIViewController {
    
    //label que mostra o tempo
    @IBOutlet weak var tempoNaTelaLabel: UILabel!
    //variavel de tempo restante
    var tempoRestante: Int = 30
    //criar um timer para o cronometro
    var timer: Timer!
    //variavel para verificar se o botao está acionado
    var estaTocando: Bool = false
    
    
    
    
    @IBOutlet weak var IlustracaoExercicioImageView: UIImageView!
    @IBOutlet weak var nomeExercicioLabel: UILabel!
    var contador: Int!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //arredondamento
        tempoNaTelaLabel.layer.cornerRadius = 10
        tempoNaTelaLabel.layer.masksToBounds = true

        
        
        nomeExercicioLabel.text = exercicios[contador].tituloExericios
        
        IlustracaoExercicioImageView.image = exercicios[contador].imagemExercicio

    }
    
    
    
    
    
    
    //botão iniciar/resumir acionado
    @IBAction func botaoIniciarResumirAcionado(_ sender: Any) {
        //aplicar objetivos pra o timer
        if !estaTocando{
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(step), userInfo: nil, repeats: true)
            estaTocando = true
        }

    }
    
    //botão pausar acionado
    @IBAction func botaoPausarAcionado(_ sender: Any) {
        timer.invalidate()
        estaTocando = false
    }
    
    //botão reiniciar acionado
    @IBAction func botaoReiniciarAcionado(_ sender: Any) {
        timer.invalidate()
        tempoRestante = 30
        tempoNaTelaLabel.text = "\(tempoRestante)s"
        estaTocando = false
    }
    
    //criando a função Objective C step, mostrada no .scheduledTimer
    @objc func step(){
        if tempoRestante > 0{
            tempoRestante -= 1
        }
        else{
            timer.invalidate()
            tempoRestante = 30
        }
        tempoNaTelaLabel.text = "\(tempoRestante)s"
    }
}
