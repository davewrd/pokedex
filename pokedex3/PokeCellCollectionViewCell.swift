//
//  PokeCellCollectionViewCell.swift
//  pokedex3
//
//  Created by David on 20/01/2017.
//  Copyright © 2017 David Ward. All rights reserved.
//

import UIKit

class PokeCellCollectionViewCell: UICollectionViewCell {
  
  @IBOutlet weak var thumbImage: UIImageView!
  @IBOutlet weak var nameLbl: UILabel!
  
  var pokemon: Pokemon!
  
  required init?(coder aDecoder: NSCoder) {
    super.init(coder: aDecoder)
    
    layer.cornerRadius = 5.0
    
  }
  
  func configureCell(_ pokemon: Pokemon) {
    
    self.pokemon = pokemon
    
    nameLbl.text = self.pokemon.name.capitalized
    thumbImage.image = UIImage(named: "\(self.pokemon.pokedexId)")
  }
  
    
}
