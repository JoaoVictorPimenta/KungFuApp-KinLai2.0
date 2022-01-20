//
//  EstudoTela.swift
//  KungFuApp
//
//  Created by João Victor Ferreira Pimenta on 26/07/21.
//


//Este .swift é responsável pela tela inteira quando selecionamos "Estudo" na Tab Bar.
import UIKit

class EstudoViewController: UIViewController {
   
    @IBOutlet weak var socosCollectionView: UICollectionView!
    @IBOutlet weak var chutesCollectionView: UICollectionView!
    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        socosCollectionView.dataSource = self
        chutesCollectionView.dataSource = self
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let cell = sender as? UICollectionViewCell, let indexPath = self.chutesCollectionView.indexPath(for: cell) {
            let vc = segue.destination as? DetalhesEnsinoViewController
            vc?.tipoGolpe = "chutes"
            vc?.idGolpe = indexPath.row
        }
        if let cell = sender as? UICollectionViewCell, let indexPath = self.socosCollectionView.indexPath(for: cell) {
            let vc = segue.destination as? DetalhesEnsinoViewController
            vc?.tipoGolpe = "socos"
            vc?.idGolpe = indexPath.row
        }
    }
}

extension EstudoViewController: UICollectionViewDataSource{
    
    //para a CollectionView de Socos
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int
    {
        if collectionView == self.socosCollectionView{
            return socos.count
        }
        
        else{
            return chutes.count
        }
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        if collectionView == self.socosCollectionView{
            let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "SocoCollectionViewCell", for: indexPath) as! SocoCollectionViewCell
            cell.setup(with: socos[indexPath.row])
            return cell
        }
        else{
            
            let cells = collectionView.dequeueReusableCell(withReuseIdentifier: "ChutesCollectionViewCell", for: indexPath) as! ChutesCollectionViewCell
            cells.setup(with: chutes[indexPath.row])
            return cells
        
        }
    }
}

