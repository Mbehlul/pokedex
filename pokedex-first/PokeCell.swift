//
//  PokeCell.swift
//  pokedex-first
//
//  Created by Behlül Kuşaslan on 05/02/16.
//  Copyright © 2016 Behlül Kuşaslan. All rights reserved.
//

import UIKit

class PokeCell: UICollectionViewCell {
    @IBOutlet weak var pokeImg: UIImageView!
    @IBOutlet weak var nameLbl: UILabel!
    
    var pokemon: Pokemon!
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        layer.cornerRadius = 5.0
    }
    
    func configureCell(pokemon: Pokemon) {
        self.pokemon = pokemon
        
        nameLbl.text = self.pokemon.name.capitalizedString
        pokeImg.image = UIImage(named: "\(self.pokemon.pokedexId)") // image names equal to pokedeId
    }
}
