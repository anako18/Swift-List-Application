//
//  CelluleEtudiant.swift
//  TP6_swift
//
//  Created by ADLYON2\akozlova ADLYON2\akozlova on 09/11/2021.
//  Copyright © 2021 ADLYON2\akozlova. All rights reserved.
//

import UIKit

class CelluleEtudiant: UITableViewCell {

    @IBOutlet weak var imageEtu: UIImageView!
    @IBOutlet weak var nom: UILabel!
    @IBOutlet weak var prenom: UILabel!
    @IBOutlet weak var numTp: UILabel!
    @IBOutlet weak var numAbs: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }

    func miseAjourCellule(e: Etudiant) {
        nom.text = e.nom
        prenom.text = e.prenom
        numTp.text = e.groupTP
        numAbs.text = String(e.numAbsence)
        imageEtu.image = UIImage(contentsOfFile: e.nomPhoto)
    }
}
