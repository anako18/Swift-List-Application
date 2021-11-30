//
//  ViewController.swift
//  TP6_swift
//
//  Created by ADLYON2\akozlova ADLYON2\akozlova on 09/11/2021.
//  Copyright © 2021 ADLYON2\akozlova. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return self.monTableauEtudiant.count
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            self.monTableauEtudiant.remove(at: indexPath.row)
           
            self.monTableView.deleteRows(at: [indexPath], with: .fade)

            //print(monTableauEtudiant.count)
            //print(monTableView.numberOfRows(inSection: 0))

            self.monTableView.reloadData()
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell =  monTableView.dequeueReusableCell(withIdentifier: "idCelluleEtu") as! CelluleEtudiant
        cell.nom?.text = self.monTableauEtudiant[indexPath.row].nom
        cell.prenom?.text = self.monTableauEtudiant[indexPath.row].prenom
        cell.numAbs?.text = String(self.monTableauEtudiant[indexPath.row].numAbsence)
        cell.numTp?.text = self.monTableauEtudiant[indexPath.row].groupTP
        if indexPath.row % 2 == 0 {
            cell.contentView.backgroundColor = UIColor.lightGray
        } else {
            cell.contentView.backgroundColor = UIColor(red: 220/255, green: 244/255, blue: 255/255, alpha: 1.0)
        }
        return cell
    }
    
    @IBOutlet weak var monTableView: UITableView!
    
    var monTableauEtudiant: [Etudiant] = []
    
    func creationTableauEtudiant() {
        monTableauEtudiant.append(Etudiant(nom: "Dupont", prenom: "John", formation: "CIM", groupTP: "DT"))
        monTableauEtudiant.append(Etudiant(nom: "Fillipi", prenom: "Maxime", formation: "CIM", groupTP: "DT"))
        monTableauEtudiant.append(Etudiant(nom: "Kozlova", prenom: "Anastasiia", formation: "CIM", groupTP: "DT"))
        monTableauEtudiant.append(Etudiant(nom: "Potter", prenom: "Harry", formation: "Hogvarts", groupTP: "Griffindor"))
         monTableauEtudiant.append(Etudiant(nom: "Boufala", prenom: "Meryem", formation: "Info", groupTP: "T1"))
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        creationTableauEtudiant()
    }


}

