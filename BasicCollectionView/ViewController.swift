//
//  ViewController.swift
//  BasicCollectionView
//
//  Created by Hüseyin Kaya on 12.12.2023.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet var collectionView: UICollectionView!
    
    var countries:[String] = [String]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        countries = ["Türkiye", "Germany", "France", "Korea", "Sweden","Japan", "Albenia", "Montenegro"]
        
        collectionView.delegate = self
        collectionView.dataSource = self
        
    }


}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource {
    
    func numberOfSections(in collectionView: UICollectionView) -> Int {
        return 1 // Sutun sayisi
    }
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return countries.count // Item sayisi
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell { // Kac item varsa sirayla gosterilecek
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell //downcasting
        
        cell.countryLabel.text = countries[indexPath.item]
        
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) { // Item tiklandiginda calisir
        print("Secilen Ulke: \(countries[indexPath.item])")
    }
    
}

