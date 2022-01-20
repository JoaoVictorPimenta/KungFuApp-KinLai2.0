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

let chutes: [GolpeEstrutura] = [GolpeEstrutura(titulos: "Chute frontal", imagens: #imageLiteral(resourceName: "ChuteFrontal"), descricao: "Em posição de guarda, eleve e flexione a perna que está atrás, movimentando-a para frente. Em seguida, estenda a perna e realize o chute com os dedos levantados, atingindo o adversário frontalmente. "), GolpeEstrutura(titulos: "Chute Peito do Pé", imagens: #imageLiteral(resourceName: "ChutePeitoDoPe"), descricao: "Em posição de guarda, direcione levemente o pé da frente para fora da guarda, para que haja sustentação do corpo. Em seguida, eleve e flexione a perna que está atrás, movimentando-a para frente. Para finalizar, estenda a perna e realize o chute com a parte superior dos pés, atingindo o adversário lateralmente.")]

let socos: [GolpeEstrutura] = [
    GolpeEstrutura(titulos: "Soco Jab", imagens: #imageLiteral(resourceName: "SocoJab"), descricao: "Em posição de guarda, realize um soco com o braço que está na frente, mantendo a mão fechada. Após o soco, retorne a posição de guarda. Não movimente os pés."),
    GolpeEstrutura(titulos: "Soco Direto", imagens: #imageLiteral(resourceName: "SocoDireto"), descricao: "Em posição de guarda, realize um soco com a mão fechada com o braço que está atrás. Durante a movimentação, é importante realizar o alinhamento do pé de trás em direção do soco. Para finalizar, retorne a posição de guarda."),
    GolpeEstrutura(titulos: "Soco Jab Pantera", imagens: #imageLiteral(resourceName: "JabPantera"), descricao: "Em posição de guarda, realize um soco com o braço que está na frente, mantendo a mão com o 'punho da pantera'. Em seguida, retorne a posição de guarda. Não movimente os pés."),
    GolpeEstrutura(titulos: "Soco Direto Pantera", imagens: #imageLiteral(resourceName: "SocoDiretoPantera"), descricao:  "Em posição de guarda, realize um soco com a mão atráves do 'punho da pantera', com o braço que está atrás. Durante a movimentação, é importante realizar o alinhamento do pé de trás em direção do soco. Para finalizar, retorne a posição de guarda.")
]
