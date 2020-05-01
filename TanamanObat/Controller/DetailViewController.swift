//
//  DetailViewController.swift
//  TanamanObat
//
//  Created by mac on 01/05/20.
//  Copyright © 2020 zidniryi. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    @IBOutlet weak var imagePlant: UIImageView!
    @IBOutlet weak var labelBenefit: UILabel!
    @IBOutlet weak var labelDescription: UILabel!
    @IBOutlet weak var labelDivision: UILabel!
    @IBOutlet weak var labelKindom: UILabel!
    @IBOutlet weak var labelName: UILabel!
    var plant: Plant?
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let result = plant {
            labelName.text = result.name
            labelKindom.text = result.kingdom
            labelDivision.text = result.division
            labelDescription.text = result.description
            labelBenefit.text = result.benefit
            imagePlant.image = result.image
        }
        
        
    }
    
    
    /*
     // MARK: - Navigation
     
     // In a storyboard-based application, you will often want to do a little preparation before navigation
     override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
     // Get the new view controller using segue.destination.
     // Pass the selected object to the new view controller.
     }
     */
    
}


extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detail = DetailViewController(nibName: "DetailViewController", bundle: nil)
        
        // Mengirim data hero
        detail.plant = plant[indexPath.row]
        
        // Push/mendorong view controller lain
        self.navigationController?.pushViewController(detail, animated: true)
    }
}
