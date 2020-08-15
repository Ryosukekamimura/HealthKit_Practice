//
//  HealthStore.swift
//  HealthKit_Tutorial
//
//  Created by 神村亮佑 on 2020/08/15.
//  Copyright © 2020 神村亮佑. All rights reserved.
//

import Foundation
import HealthKit

class HealthStore {
    
    //HKHealthStoreはnilかもしれない
    var healthStore: HKHealthStore?
    
    
    init() {
        if HKHealthStore.isHealthDataAvailable() {
            healthStore = HKHealthStore()
        }
    }
    
}
