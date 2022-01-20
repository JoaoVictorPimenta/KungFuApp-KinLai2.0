//
//  CollectionViewCell.swift
//  KungFuApp
//
//  Created by João Victor Ferreira Pimenta on 28/07/21.
//

import UIKit

class ExerciciosCollectionViewCell: UICollectionViewCell {
    @IBOutlet weak var ilustracoesExerciciosImageView: UIImageView!
    @IBOutlet weak var nomesExerciciosLabel: UILabel!
    
    func setup(with exercicios: ExerciciosEstrutura) {
        ilustracoesExerciciosImageView.image = exercicios.imagemExercicio
        nomesExerciciosLabel.text = exercicios.tituloExericios
        ilustracoesExerciciosImageView.makeRoundCorners(byRadius: exercicios.arredondamento)
    }
}

