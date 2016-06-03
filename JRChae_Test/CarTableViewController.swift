//
//  CarTableViewController.swift
//  JRChae_Test
//
//  Created by MF839-008 on 2016. 6. 3..
//  Copyright © 2016년 JRChae. All rights reserved.
//

import UIKit

class CarTableViewController: UITableViewController {
    
    var cars = [Cars] ()
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let car1 = Cars()
        car1.image = "car1.jpeg"
        car1.name = "제네시스 EQ900"
        car1.maker = "현대자동차"
        car1.url = "http://auto.naver.com/car/main.nhn?yearsId=61325"
        
        let car2 = Cars()
        car2.image = "car2.jpeg"
        car2.name = "마세라티 기블리"
        car2.maker = "마세라티"
        car2.url = "http://auto.naver.com/car/main.nhn?yearsId=61227"
        
        let car3 = Cars()
        car3.image = "car3.jpeg"
        car3.name = "BMW X6"
        car3.maker = "BMW"
        car3.url = "http://auto.naver.com/car/main.nhn?yearsId=55645"
        
        cars.append(car1)
        cars.append(car2)
        cars.append(car3)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return cars.count
    }
    // MARK: - Navigation

     override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
     
     // Configure the cell...
        let cell = tableView.dequeueReusableCellWithIdentifier("carcell", forIndexPath: indexPath) as! CarTableViewCell
        
        // Configure the cell...
        
        let row = cars[indexPath.row]
        cell.carImage.image = UIImage(named: row.image!)
        cell.carName.text = row.name
        cell.carMaker.text = row.maker
        
        return cell
        
     }
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
        if segue.identifier == "car_detail" {  // cell을 선택했을 때만 처리되도록... 다른 버튼으로 이루어져 타 View를 부르는 경우 구분할 수 있다.
            let detailVC = segue.destinationViewController as? CarDetailWebViewController
            let bookIndex = self.tableView.indexPathForCell(sender as! UITableViewCell) // 선택된 cell의 IndexPath를 반환

        
            detailVC?.carURL = cars[bookIndex!.row].url
        }

    }
    


    /*
    // Override to support conditional editing of the table view.
    override func tableView(tableView: UITableView, canEditRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        if editingStyle == .Delete {
            // Delete the row from the data source
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
        } else if editingStyle == .Insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(tableView: UITableView, moveRowAtIndexPath fromIndexPath: NSIndexPath, toIndexPath: NSIndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(tableView: UITableView, canMoveRowAtIndexPath indexPath: NSIndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */





}
