//
//  Chutes.swift
//  KungFuApp
//
//  Created by João Victor Ferreira Pimenta on 27/07/21.
//



//Aqui é criado a composição de um Golpe, que apresenta o Nome, uma Imagem e a Descrição do Golpe, tanto para chutes como socos.
import UIKit

struct GolpeEstrutura{
    let titulos: String
    let imagens: UIImage
    let descricao: String
    let arredondamento: CGFloat = 10
}

let chutes: [GolpeEstrutura] = [GolpeEstrutura(titulos: "Chute frontal", imagens: #imageLiteral(resourceName: "ChuteFrontal"), descricao: "Em posição de guarda, eleve e flexione a perna que está atrás;\n\nMovimente-a para frente;\n\nEstenda a perna e realize o chute com os dedos levantados;\n\nAtinja o adversário frontalmente."), GolpeEstrutura(titulos: "Chute Peito do Pé", imagens: #imageLiteral(resourceName: "ChutePeitoDoPe"), descricao: "Em posição de guarda, direcione levemente o pé da frente para fora da guarda;\n\nEleve e flexione a perna que está atrás;\n\nMovimente-a para frente;\n\nEstenda a perna e realize o chute com a parte superior dos pés;\n\nAtinja o adversário lateralmente.")]

let socos: [GolpeEstrutura] = [
    GolpeEstrutura(titulos: "Soco Jab", imagens: #imageLiteral(resourceName: "SocoJab"), descricao: "Em posição de guarda, realize um soco com o braço que está na frente;\n\nMantenha a mão fechada;\n\nNão movimente os pés;\n\nApós o soco, retorne a posição de guarda."),
    GolpeEstrutura(titulos: "Soco Direto", imagens: #imageLiteral(resourceName: "SocoDireto"), descricao: "Em posição de guarda, realize um soco com o braço de trás e mão fechada;\n\nAlinhe do pé de trás na direção do soco;\n\nRetorne a posição de guarda."),
    GolpeEstrutura(titulos: "Soco Jab Pantera", imagens: #imageLiteral(resourceName: "JabPantera"), descricao: "Em posição de guarda, realize um soco com o braço que está na frente;\n\nMantenha a mão com o 'punho da pantera';\n\nNão movimente os pés;\n\nRetorne a posição de guarda."),
    GolpeEstrutura(titulos: "Soco Direto Pantera", imagens: #imageLiteral(resourceName: "SocoDiretoPantera"), descricao:  "Em posição de guarda, realize o soco 'punho da pantera' com o braço de trás;\n\nRealize o alinhamento do pé de trás na direção do soco;\n\nRetorne a posição de guarda.")
]
