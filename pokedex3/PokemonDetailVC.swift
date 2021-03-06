//
//  PokemonDetailVC.swift
//  pokedex3
//
//  Created by David on 21/01/2017.
//  Copyright © 2017 David Ward. All rights reserved.
//

import UIKit

class PokemonDetailVC: UIViewController {
  
  @IBOutlet weak var nameLbl: UILabel!
  @IBOutlet weak var mainImg: UIImageView!
  @IBOutlet weak var descriptionLbl: UILabel!
  @IBOutlet weak var typeLbl: UILabel!
  @IBOutlet weak var defenseLbl: UILabel!
  @IBOutlet weak var heightLbl: UILabel!
  @IBOutlet weak var pokedexLbl: UILabel!
  @IBOutlet weak var weightLbl: UILabel!
  @IBOutlet weak var baseAttackLbl: UILabel!
  @IBOutlet weak var currentEvoImg: UIImageView!
  @IBOutlet weak var nextEvoImg: UIImageView!
  @IBOutlet weak var evoLbl: UILabel!
  
  
  var pokemon: Pokemon!

    override func viewDidLoad() {
        super.viewDidLoad()

      nameLbl.text = pokemon.name
      
      pokemon.downloadPokemonDetail {
        
        // Whatever we write will only be called after the network call is complete
        
      }
        
    }

  @IBAction func backBtnpressed(_ sender: Any) {
    
    dismiss(animated: true, completion: nil)
  }
  
}
