//
//  ViewController.swift
//  FlashCard
//
//  Created by Brian Song on 11/15/20.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var firstWords = [String()]
    var secondWords = [String()]
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBAction func Add(_ sender: Any) {
        firstWords.append("")
        secondWords.append("")
        tableView.beginUpdates()
        tableView.insertRows(at: [IndexPath(row: firstWords.count - 1, section: 0)], with: .automatic)
        tableView.endUpdates()        
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let cell = tableView.cellForRow(at: indexPath)
        tableView.deselectRow(at: indexPath, animated: true)
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return firstWords.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as? TableViewCell
//        firstWords[indexPath.row] = (cell?.word1.text)!
//        secondWords[indexPath.row] = (cell?.word2.text)!
        return cell!
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == UITableViewCell.EditingStyle.delete {
            firstWords.remove(at: indexPath.row)
            secondWords.remove(at: indexPath.row)
            tableView.deleteRows(at: [indexPath], with: UITableView.RowAnimation.automatic)
        }
    }
}
 
