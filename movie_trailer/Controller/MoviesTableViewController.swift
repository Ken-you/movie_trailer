//
//  MoviesTableViewController.swift
//  
//
//  Created by yousun on 2021/5/16.
//

import UIKit


class MoviesTableViewController: UITableViewController {
    
    // Cell Id 定義成常數
    struct PropertyKeys {
        static let movieCell = "movieCell"
    }

    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    // 抓 moives 有幾個 section
    override func numberOfSections(in tableView: UITableView) -> Int {
         movies.count
    }
    
    // 抓 section 裡的數量
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        movies[section].count
    }

    
    // as! 轉型成 TableViewCell 抓取 cell 裡的 outlet 元件
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: PropertyKeys.movieCell, for: indexPath) as! MoviesTableViewCell
        
        let movie = movies[indexPath.section][indexPath.row]
        
        cell.movieImageView.image = UIImage(named: movie.imageName)
        cell.NameLabel.text = movie.name
        cell.dateLabel.text = movie.time
        cell.introLabel.text = movie.intro

        return cell
    }
    
    
    // section 的名稱 用 enum 定義好的分類
    override func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        let header :String
        
        switch section {
        case 0:
            header = "\(genre.Action)"
        case 1:
            header = "\(genre.Comedy)"
        case 2:
            header = "\(genre.Romance)"
        case 3:
            header = "\(genre.Horror)"
        case 4:
            header = "\(genre.Fantasy)"
        default:
            header = ""
        }
        return header
    }

    
    // guard let 確認是否有值並讀取資料，傳到下一頁
    @IBSegueAction func showDetail(_ coder: NSCoder) -> MovieTrailerViewController? {
        
        guard let section = tableView.indexPathForSelectedRow?.section else{return nil}
        guard let row = tableView.indexPathForSelectedRow?.row else {return nil}
        
        return MovieTrailerViewController(coder: coder, movies:movies[section][row])
    }
    
    
    
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
