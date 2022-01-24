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
    ExerciciosEstrutura(tituloExericios: "Flexão de Palma", imagemExercicio: #imageLiteral(resourceName: "Flexão de palma"), descricaoExercicio: "Deite-se em uma superfície com o abdome para baixo;\n\nMantenha o corpo em linha reta durante todo o exercício;\n\nMantenha os pés unidos;\n\nPosicione as mãos na superfície, alinhadas aos ombros;\n\nInicie o ciclo entre estender e flexionar os braços;\n\nNão encoste o corpo na superfície, apenas pés e mãos."),
    ExerciciosEstrutura(tituloExericios: "Prancha", imagemExercicio: #imageLiteral(resourceName: "Prancha"), descricaoExercicio: "Deite-se em uma superfície com o abdome para baixo;\n\nMantenha o corpo em linha reta durante todo o exercício;\n\nMantenha os pés unidos;\n\nApoie os antebraços na superfície;\n\nAlinhe as mãos com a cabeça e os cotovelos um pouco antes dos ombros;\n\nNão encoste o corpo na superfície, apenas pés e braços."),
    ExerciciosEstrutura(tituloExericios: "Crucifixo", imagemExercicio: #imageLiteral(resourceName: "Crucifixo"),descricaoExercicio: "Realize o exercício em pé;\n\nMantenha os pés unidos;\n\nFlexione os joelhos;\n\nEstenda os braços para as laterais, formando uma linha reta;\n\nMantenha as mãos no 'punho da pantera'."),
    ExerciciosEstrutura(tituloExericios: "Cavalo", imagemExercicio: #imageLiteral(resourceName: "Cavalo"), descricaoExercicio: "Fique com os pés voltados para frente;\n\nFlexione os joelhos;\n\nMantenha a coluna alinhada;\n\nMantenha os braços estendidos para frente.")
]
