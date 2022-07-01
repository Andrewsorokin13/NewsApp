//
//  PopularTableViewController.swift
//  NewsApp
//
//  Created by Андрей Сорокин on 30/06/2022.
//

import UIKit


class TableCell: UITableViewCell {
    @IBOutlet weak var newsImageView: UIImageView!
    
    @IBOutlet weak var nameNewsLable: UILabel!
    
    @IBOutlet weak var dateNewsLable: UILabel!
}



class PopularTableViewController: UITableViewController {
    private  let data: [PopularModel] = [
      PopularModel(nameNews: "Песков ответил на оскорбления министра обороны Британии в адрес Путина", imageNews: "Image", dateNews: "today"),
      PopularModel(nameNews: "Big technology stocks like Tesla, Amazon and Microsoft just finished their worst quarter in year", imageNews: "Image", dateNews: "last week"),
      PopularModel(nameNews: "Second News", imageNews: "Image", dateNews: "last week"),
      PopularModel(nameNews: "Second News", imageNews: "Image", dateNews: "last week"),
      PopularModel(nameNews: "Second News", imageNews: "Image", dateNews: "last week"),
      PopularModel(nameNews: "Second News", imageNews: "Image", dateNews: "last week"),
      PopularModel(nameNews: "Second News", imageNews: "Image", dateNews: "last week")
  ]
 
    override func viewDidLoad() {
        super.viewDidLoad()
        tableView.register(UINib(nibName: "TableViewCell", bundle: nil), forCellReuseIdentifier: "custom")
        self.tableView.rowHeight =  140
    }
    
    

    // MARK: - Table view data source

//    override func numberOfSections(in tableView: UITableView) -> Int {
//        // #warning Incomplete implementation, return the number of sections
//        return 0
//    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return data.count
    }

    // Добавить проверку на отсутвия данных и ячек
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "custom", for: indexPath) as! TableViewCell
        let data = data[indexPath.row]
        cell.nameNewsLable.text = data.nameNews
        cell.dateNewsLable.text = data.dateNews
        cell.imageNews.image = UIImage(named: data.imageNews)
        return cell
    }
    
//    override func tableView(_ tableView: UITableView, heightForHeaderInSection section: Int) -> CGFloat {
//        return 120
//    }

    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
