//
// Created by LRamirezVargas on 8/19/18.
// Copyright (c) 2018 luismdev. All rights reserved.
//

import Foundation

class DoCalculations {
    func doCalc() {
        var x = 100
        var y = x * x
        _ = y / x
    }

    func performCalculation(iterations: Int, tag: String) {
        let start = CFAbsoluteTimeGetCurrent()
        for _ in 0..<iterations {
            self.doCalc()
        }
        let end = CFAbsoluteTimeGetCurrent()
        print("time for \(tag):\(end - start)")
    }
}
