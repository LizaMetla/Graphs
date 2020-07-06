//
//  ViewController.swift
//  MyGraphs
//
//  Created by Елизавета Метла on 7/1/20.
//  Copyright © 2020 Елизавета Метла. All rights reserved.
//

import UIKit
//library for graphs
import Charts

class ViewController: UIViewController, ChartViewDelegate {

    var barChart = BarChartView()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        barChart.delegate = self
        
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        //position on view controller
        barChart.frame = CGRect(x: 0, y: 0,
                                width: self.view.frame.size.width,
                                height: self.view.frame.size.width)
        
        barChart.center = view.center
        
        view.addSubview(barChart)
        
        //data entries (ввод данных)
        var entries = [BarChartDataEntry]()
        
        for x in 0..<15 {

            entries.append(BarChartDataEntry(x: Double(x),
                                             y: Double(x)))
        }
        
        //data holder
        let set = BarChartDataSet(entries: entries)
        
        
        set.colors = ChartColorTemplates.joyful()
        
        let data = BarChartData(dataSet: set)
        
        barChart.data = data
    }


}

