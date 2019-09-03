//
//  TrackingViewController.swift
//  CardioTracker
//
//  Created by Vaka Jóhannesdóttir on 23/08/2019.
//  Copyright © 2019 Vaka Johannesdottir. All rights reserved.
//

import UIKit
import Charts

class YAxisValueFormatter: IAxisValueFormatter {
    func stringForValue(_ value: Double, axis: AxisBase?) -> String {
        let strValue = String(format: "%.1f", value) + "%"
        return strValue
    }
}

class TrackingViewController: UIViewController {
    
    @IBOutlet weak var lineChartView: LineChartView!
    @IBOutlet weak var lblC: UILabel!
    @IBOutlet weak var lblCardio: UILabel!
    @IBOutlet weak var lblT: UILabel!
    @IBOutlet weak var lblTracker: UILabel!
    @IBOutlet weak var lblChange: UILabel!
    @IBOutlet weak var lblWarning: UILabel!
    @IBOutlet weak var viewContainer: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.title = "Overview"
        
        //MARK: Labels
        let lblArr = [lblC, lblCardio, lblT, lblTracker, lblChange]
        
        for lbl in lblArr {
            lbl?.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
        }
        
        lblCardio.attributedText = NSAttributedString(string: "ARDIO",attributes:[ NSAttributedString.Key.kern: 1.3])
        lblTracker.attributedText = NSAttributedString(string: "RACKER",attributes:[ NSAttributedString.Key.kern: 1.2])
        
        
        lblChange.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
        
        var first: Double = 0
        var last: Double = 0
        
        if RiskDataManager.shared.riskArr.count > 1 {
            first = RiskDataManager.shared.riskArr.first!
            last = RiskDataManager.shared.riskArr.last!
        }
        
        // View Container
        viewContainer.layer.borderColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1).cgColor
        viewContainer.layer.borderWidth = 0.5
        viewContainer.layer.cornerRadius = 5
        viewContainer.clipsToBounds = true
        
        if RiskDataManager.shared.riskArr.count < 2 {
            viewContainer.isHidden = true
            lblChange.isHidden = true
            lblWarning.isHidden = true
        } else if (last > first) {
            lblWarning.text = "WARNING!"
            lblWarning.textColor = UIColor(red: 100/255, green: 8/255, blue: 8/255, alpha: 1)
            lblChange.text = "Your cardiovascular risk has increased since CardioTracker was activated."
        } else if (first > last) {
            lblWarning.text = "GOOD NEWS!"
            lblWarning.textColor = UIColor(red: 50/255, green: 205/255, blue: 50/255, alpha: 1)
            lblChange.text = "Your cardiovascular risk has decreased since CardioTracker was activated."
        } else if last == first {
            lblWarning.text = "NO CHANGE!"
            lblWarning.textColor = UIColor(red: 140/255, green: 140/255, blue: 140/255, alpha: 1)
            lblChange.text = "Your cardiovascular risk is the same as when CardioTracker was activated."
        }
        
        
        //MARK: Call methods
        setChart()
    }
    
    func setChart() {
        
        lineChartView.notifyDataSetChanged()
        setValuesAndLayout()
        setXAxis()
        setYAxis()
        lineChartView.fitScreen()
    }
    
    func setValuesAndLayout(_ count: Int = RiskDataManager.shared.riskArr.count) {
        
        // Set Chart Values
        let values = (0..<count).map { (i) -> ChartDataEntry in
            let val = RiskDataManager.shared.riskArr
            return ChartDataEntry(x: Double(i), y: val[i])
        }
        
        let set1 = LineChartDataSet(entries: values, label: "Estimated 10-year risk of developing cardiovascular disease")
        
        let data = LineChartData(dataSet: set1)
    
        
        // Set Layout
        data.setDrawValues(false)
        set1.setColor(NSUIColor(red: 150/255, green: 8/255, blue: 8/255, alpha: 1))
        set1.circleRadius = CGFloat.init(2.0)
        set1.circleColors = [UIColor(red: 150/255, green: 8/255, blue: 8/255, alpha: 1)]
        
        self.lineChartView.data = data
    }
    
    func setXAxis() {
        
        // Set Date Labels to X Axis
        lineChartView.xAxis.valueFormatter = IndexAxisValueFormatter(values: RiskDataManager.shared.dateArr)
        
        lineChartView.xAxis.granularityEnabled = true
        lineChartView.xAxis.granularity = 2
        
        // Layout
        lineChartView.xAxis.labelPosition = .bottom
        
    }
    
    func setYAxis() {
        lineChartView.rightAxis.enabled = false
        lineChartView.leftAxis.valueFormatter = YAxisValueFormatter()
        lineChartView.leftAxis.axisMaximum = RiskDataManager.shared.riskArr.max()! + 1
        lineChartView.leftAxis.axisMinimum = 0
    }
    
}
