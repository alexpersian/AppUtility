//
//  AUDate.swift
//  AppUtilityExample
//
//  Created by Sunil Sharma on 27/09/16.
//  Copyright © 2016 Sunil Sharma. All rights reserved.
//

import UIKit

extension NSDate {
    
    func yearsFrom(fromDate:NSDate = NSDate(), toDate date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.Year, fromDate: fromDate, toDate: date, options: []).year
    }
    
    func monthsFrom(fromDate:NSDate = NSDate(), toDate date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.Month, fromDate: fromDate, toDate: date, options: []).month
    }
    
    func weeksFrom(fromDate:NSDate = NSDate(), toDate date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.WeekOfYear, fromDate: fromDate, toDate: date, options: []).weekOfYear
    }
    
    func daysFrom(fromDate:NSDate = NSDate(), toDate date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.Day, fromDate: fromDate, toDate: date, options: []).day
    }
    func hoursFrom(fromDate:NSDate = NSDate(), toDate date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.Hour, fromDate: fromDate, toDate: date, options: []).hour
    }
    func minutesFrom(fromDate:NSDate = NSDate(), toDate date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.Minute, fromDate: fromDate, toDate: date, options: []).minute
    }
    func secondsFrom(fromDate:NSDate = NSDate(), toDate date: NSDate) -> Int {
        return NSCalendar.currentCalendar().components(.Second, fromDate: fromDate, toDate: date, options: []).second
    }
    
    func offsetFrom(fromdate: NSDate = NSDate(), toDate date:NSDate) -> String {
        
        if yearsFrom(fromdate, toDate: date)   > 0 { return "\(yearsFrom(fromdate, toDate: date))y"   }
        else if yearsFrom(fromdate, toDate: date)   < 0 { return "\(abs(yearsFrom(fromdate, toDate: date)))y ago"   }
        if monthsFrom(fromdate, toDate: date)  > 0 { return "\(monthsFrom(fromdate, toDate: date))M"  }
        else if monthsFrom(fromdate, toDate: date)  < 0 { return "\(abs(monthsFrom(fromdate, toDate: date)))M ago"  }
        if weeksFrom(fromdate, toDate: date)   > 0 { return "\(weeksFrom(fromdate, toDate: date))w"   }
        else if weeksFrom(fromdate, toDate: date)   < 0 { return "\(abs(weeksFrom(fromdate, toDate: date)))w ago"   }
        if daysFrom(fromdate, toDate: date)    > 0 { return "\(daysFrom(fromdate, toDate: date))d"    }
        else if daysFrom(fromdate, toDate: date)    < 0 { return "\(abs(daysFrom(fromdate, toDate: date)))d ago"    }
        if hoursFrom(fromdate, toDate: date)   > 0 { return "\(hoursFrom(fromdate, toDate: date))h"   }
        else if hoursFrom(fromdate, toDate: date)   < 0 { return "\(abs(hoursFrom(fromdate, toDate: date)))h ago"   }
        if minutesFrom(fromdate, toDate: date) > 0 { return "\(minutesFrom(fromdate, toDate: date))m" }
        else if minutesFrom(fromdate, toDate: date) < 0 { return "\(abs(minutesFrom(fromdate, toDate: date)))m ago" }
        if secondsFrom(fromdate, toDate: date) > 0 { return "\(secondsFrom(fromdate, toDate: date))s" }
        else if secondsFrom(fromdate, toDate: date) < 0 { return "\(abs(secondsFrom(fromdate, toDate: date)))s ago" }
        return ""
    }
}

public class AUDate: NSDate {
    

}
