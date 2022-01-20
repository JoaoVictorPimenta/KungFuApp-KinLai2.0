//
//  arredondamento de imagem.swift
//  KungFuApp
//
//  Created by João Victor Ferreira Pimenta on 03/08/21.
//

import Foundation
import UIKit

extension UIImageView {
    func makeRoundCorners(byRadius rad: CGFloat) {
        self.layer.cornerRadius = rad
        self.clipsToBounds = true
        self.layer.shouldRasterize = true
    }
}
