//
//  Etudiant.swift
//  TP6_swift
//
//  Created by ADLYON2\akozlova ADLYON2\akozlova on 09/11/2021.
//  Copyright © 2021 ADLYON2\akozlova. All rights reserved.
//

import Foundation

class Etudiant {
    let nom: String
    let prenom: String
    let formation: String
    let groupTP: String
    let nomPhoto: String = "photoEtudiant.png"
    let numAbsence: Int = 0
    init(nom: String, prenom: String, formation: String, groupTP: String) {
        self.nom = nom
        self.prenom = prenom
        self.formation = formation
        self.groupTP = groupTP
    }
}
