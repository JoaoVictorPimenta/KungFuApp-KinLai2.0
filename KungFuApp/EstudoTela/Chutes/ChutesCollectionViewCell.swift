//
//  ChutesCollectionViewCell.swift
//  KungFuApp
//
//  Created by João Victor Ferreira Pimenta on 27/07/21.
//

import UIKit

class ChutesCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var ilustracoesChutesImageView: UIImageView!
    //@IBOutlet weak var ilustracoesChutesImageView: UIImageView!
    @IBOutlet weak var nomesChutesLabel: UILabel!

    func setup (with chutes: GolpeEstrutura){
        nomesChutesLabel.text = chutes.titulos
        ilustracoesChutesImageView.image = chutes.imagens
        ilustracoesChutesImageView.makeRoundCorners(byRadius: chutes.arredondamento)
    }
    
}

