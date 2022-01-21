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
    //criar um timer para o cronometro
    var timer: Timer = Timer()
    
    //variavel de tempo restante
    var tempoRestante: Int = 30
    
    //variavel para verificar se o botao está acionado
    var estaTocando: Bool = false
    
    @IBOutlet weak var IlustracaoExercicioImageView: UIImageView!
    @IBOutlet weak var nomeExercicioLabel: UILabel!
    var contador: Int!
    override func viewDidLoad() {
        super.viewDidLoad()

        
        
        nomeExercicioLabel.text = exercicios[contador].tituloExericios
        
        IlustracaoExercicioImageView.image = exercicios[contador].imagemExercicio

    }
    
    //botão iniciar/resumir acionado
    @IBAction func botaoIniciarResumirAcionado(_ sender: Any) {

        if (estaTocando) {
            estaTocando = false
            timer.invalidate()
        }
        else {
            estaTocando = true
            timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(timerCounter), userInfo: nil, repeats: true)
        }

    }
    
    //botão reiniciar acionado
    @IBAction func botaoReiniciarAcionado(_ sender: Any) {
        timer.invalidate()
        tempoRestante = 30
        tempoNaTelaLabel.text = "\(tempoRestante)s"
        estaTocando = false
    }
    
    //criando a função Objective C timerCounter, mostrada no .scheduledTimer
    @objc func timerCounter() -> Void{
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
