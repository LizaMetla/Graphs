//
//  ThirdViewController.swift
//  MyGraphs
//
//  Created by Елизавета Метла on 7/1/20.
//  Copyright © 2020 Елизавета Метла. All rights reserved.
//
import Charts
import UIKit

class ThirdViewController: UIViewController, ChartViewDelegate {

    var donutChart = PieChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()

        donutChart.delegate = self
        
        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
         //position on view controller
               donutChart.frame = CGRect(x: 0, y: 0,
                                       width: self.view.frame.size.width,
                                       height: self.view.frame.size.width)
               
               donutChart.center = view.center
               
               view.addSubview(donutChart)
               
               //data entries (ввод данных)
               var entries = [ChartDataEntry]()
               
               for x in 0..<15 {

                   entries.append(ChartDataEntry(x: Double(x),
                                                    y: Double(x)))
               }
               
               //data holder
               let set = PieChartDataSet(entries: entries)
               
               
               set.colors = ChartColorTemplates.colorful()
               
               let data = PieChartData(dataSet: set)
               
               donutChart.data = data
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
