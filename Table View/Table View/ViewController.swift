//
//  ViewController.swift
//  Table View
//
//  Created by macOS User on 12/11/20.
//

import UIKit

class ViewController: UIViewController {
    
    var provinsi = ["Aceh", "Jakarta", "Bangka Belitung", "Bali", "Jawa Barat", "Jawa Tengah", "Jawa Timur", "Banten", "Gorontalo", "Kalimantan Barat"]
    
    @IBOutlet weak var provinsiTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        provinsiTableView.delegate = self
        provinsiTableView.dataSource = self
 

    }


}

extension ViewController: UITableViewDelegate,UITableViewDataSource {
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return provinsi.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = provinsiTableView.dequeueReusableCell(withIdentifier: "cellProvinsi") as! ProvinsiTableViewCell
        
        let prov = provinsi[indexPath.row]
        cell.provinsiLbl.text = prov
        cell.provinsiImg.image = UIImage(named: prov)

        cell.provinsiView.layer.cornerRadius =            cell.provinsiView.frame.height / 2
        cell.provinsiImg.layer.cornerRadius = cell.provinsiImg.frame.height / 2
        
        return cell
    }
}

