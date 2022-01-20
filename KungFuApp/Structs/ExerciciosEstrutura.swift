//
//  ExerciciosEstrutura.swift
//  KungFuApp
//
//  Created by João Victor Ferreira Pimenta on 28/07/21.
//


//Aqui é criado a composição de um Exercício da Parte Física, que apresenta o Nome, uma Imagem e a Descrição do Exercício.
import UIKit

struct ExerciciosEstrutura {
    let tituloExericios: String
    let imagemExercicio: UIImage
    let descricaoExercicio: String
    let arredondamento: CGFloat = 10
}

let exercicios: [ExerciciosEstrutura] = [
    ExerciciosEstrutura(tituloExericios: "Flexão de Palma", imagemExercicio: #imageLiteral(resourceName: "Flexão de palma"), descricaoExercicio: "Primeiramente, deite-se em uma superfície com o abdome para baixo. Lembre-se do corpo estar em linha reta durante todo o exercício, mantendo os pés unidos. Em seguida, posicione as mãos na superfície, alinhadas aos ombros. Inicie o ciclo entre estender e flexionar os braços, mas sem tocar o corpo inteiro na superfície, durante 30 segundos."),
    ExerciciosEstrutura(tituloExericios: "Prancha", imagemExercicio: #imageLiteral(resourceName: "Prancha"), descricaoExercicio: "Primeiramente, deite-se em uma superfície com o abdome para baixo. Lembre-se do corpo estar em linha reta durante todo o exercício, mantendo os pés unidos. Em seguida, apoie os antebraços na superfície, de forma que as mãos estejam alinhadas com a cabeça e os cotovelos um pouco antes dos ombros. Mantenha todo o restante do corpo fora da superfície, deixando apenas pés e braços. Realize este exercício por 30 segundos."),
    ExerciciosEstrutura(tituloExericios: "Crucifixo", imagemExercicio: #imageLiteral(resourceName: "Crucifixo"),descricaoExercicio: "Este exercício é realizado em pé. Mantenha os pés unidos e, em seguida, flexione os joelhos. Estenda os braços para as laterais, formando uma linha reta. Quanto as mãos, mantenha-as no 'punho da pantera'. Com a postura pronta, fique sem se movimentar durante 30 segundos."),
    ExerciciosEstrutura(tituloExericios: "Cavalo", imagemExercicio: #imageLiteral(resourceName: "Cavalo"), descricaoExercicio: "Neste exercício, fique com os pés para frente e flexione os joelhos. Durante todo exercício, a coluna deve estar alinhada. Mantenha-se na postura, com os braços estendidos para frente, durante 30 segundos.")
]
