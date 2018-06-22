//
//  HealthData.swift
//  HealthKitTest
//
//  Created by Anthony Beard on 2018/06/22.
//  Copyright © 2018 Anthony Beard. All rights reserved.
//

import HealthKit

struct HealthData {
    static let shared = HealthData()
    
    let store = HKHealthStore()
    
    private init() {}
    
    var isHealthDataAvailable: Bool {
        return HKHealthStore.isHealthDataAvailable
    }
    
    func stuff() {
        guard let stepCountType = HKQuantityType.quantityType(forIdentifier: .stepCount) else {
            return
        }
        HKStatisticsQuery(
            quantityType: stepCountType,
            quantitySamplePredicate: <#T##NSPredicate?#>,
            options: <#T##HKStatisticsOptions#>,
            completionHandler: <#T##(HKStatisticsQuery, HKStatistics?, Error?) -> Void#>
        )
        
        self.store.execute(<#T##query: HKQuery##HKQuery#>)
    }
}
