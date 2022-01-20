//
//  TreinoTela.swift
//  KungFuApp
//
//  Created by João Victor Ferreira Pimenta on 26/07/21.
//
import UIKit

class TreinoViewController: UIViewController {
    @IBOutlet weak var exerciciosCollectionView: UICollectionView!
    var selectedIndex: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        exerciciosCollectionView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UICollectionViewCell, let indexPath = self.exerciciosCollectionView.indexPath(for: cell) {
            let vc = segue.destination as? DetalhesTreinosViewController
            vc?.idTreino = indexPath.row
        }
    }

}

extension TreinoViewController: UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return exercicios.count
        
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = exerciciosCollectionView.dequeueReusableCell(withReuseIdentifier: "ExerciciosCollectionViewCell", for: indexPath) as! ExerciciosCollectionViewCell
        cell.setup(with: exercicios[indexPath.row])
        return cell
    }
}
