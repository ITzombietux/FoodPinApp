//
//  AboutTableViewController.swift
//  FoodPinApp
//
//  Created by zombietux on 18/03/2019.
//  Copyright © 2019 zombietux. All rights reserved.
//

import UIKit

class AboutTableViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    let sectionTitles = ["Feedback", "Follow Us"]
    let sectionContent = [[(image: "store", text: "Rate us on App Store", link: "https://www.apple.com/itunes/charts/paid-apps/"), (image: "chat", text: "Tell us your feedback", link: "http://www.appcoda.com/contact")], [(image: "twitter", text: "Twitter", link: "https://twitter.com/appcodamobile"), (image: "facebook", text: "Facebook", link: "https://facebook.com/appcodamobile"), (image: "instagram", text: "Instagram", link: "https://www.instagram.com/appcodadotcom")]]
    
    override func viewDidLoad() {
        super.viewDidLoad()

        tableView.dataSource = self
        tableView.delegate = self
        
        // Configure navigation bar appearance
        navigationController?.navigationBar.setBackgroundImage(UIImage(), for: .default)
        navigationController?.navigationBar.shadowImage = UIImage()
        if let customFont = UIFont(name: "Rubik-Medium", size: 40.0) {
            navigationController?.navigationBar.largeTitleTextAttributes = [ NSAttributedString.Key.foregroundColor: UIColor(red: 231, green: 76, blue: 60), NSAttributedString.Key.font: customFont ]
        }

    }
    

}

extension AboutTableViewController: UITableViewDataSource, UITableViewDelegate {
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "AboutCell", for: indexPath)
        
        // Configure the cell...
        let cellData = sectionContent[indexPath.section][indexPath.row]
        
        cell.textLabel?.text = cellData.text
        cell.imageView?.image = UIImage(named: cellData.image)
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        return sectionContent[section].count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        
        return sectionTitles.count
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        return sectionTitles[section]
    }
    
    func tableView(_ tableView: UITableView, willDisplayHeaderView view: UIView, forSection section: Int) {
        if let header = view as? UITableViewHeaderFooterView {
            header.backgroundView?.backgroundColor = UIColor(red: 255.0 / 255.0, green: 205.0 / 255.0, blue: 0.0, alpha: 1.0)
            header.textLabel?.textColor = UIColor(red: 231, green: 76, blue: 60)
        }
    }

}


