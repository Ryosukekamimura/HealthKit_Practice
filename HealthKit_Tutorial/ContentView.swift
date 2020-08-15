//
//  ContentView.swift
//  HealthKit_Tutorial
//
//  Created by 神村亮佑 on 2020/08/15.
//  Copyright © 2020 神村亮佑. All rights reserved.
//

import SwiftUI
import HealthKit

struct ContentView: View {
    
    private var healthStore: HealthStore?
    
    
    init() {
        healthStore = HealthStore()
    }
    
    
    private func updateUIFromStatistics(_ staticsCollection: HKStatisticsCollection){
        
    }
    
    var body: some View {
        Text("Hello, World!").padding()
            .onAppear{
                if let healthStore = self.healthStore {
                    healthStore.requestAuthorization{ success in
                        if success {
                            healthStore.calculateSteps { statisticsCollection in
                                if let statisticsCollection = statisticsCollection {
                                    //Updata UI
                                    print(statisticsCollection)
                                }
                            }
                        }
                    }
                }
            }
    }
    
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
