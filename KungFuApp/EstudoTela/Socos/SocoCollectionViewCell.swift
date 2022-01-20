//
//  SocoCollectionViewCell.swift
//  KungFuApp
//
//  Created by João Victor Ferreira Pimenta on 27/07/21.
//


//Aqui temos o arquivo responsável pela CollectionView dos Socos.
import UIKit

class SocoCollectionViewCell: UICollectionViewCell {
    
    @IBOutlet weak var socoImageView: UIImageView!
    @IBOutlet weak var socoLabel: UILabel!
    
    
    func setup (with socos: GolpeEstrutura){
        socoImageView.image = socos.imagens
        socoLabel.text = socos.titulos
        socoImageView.makeRoundCorners(byRadius: socos.arredondamento)
        
        
    }
}
