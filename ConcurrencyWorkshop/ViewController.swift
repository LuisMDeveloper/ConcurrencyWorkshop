//
//  ViewController.swift
//  ConcurrencyWorkshop
//
//  Created by LRamirezVargas on 8/19/18.
//  Copyright © 2018 luismdev. All rights reserved.
//

import UIKit


class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()

        //let concurrentQueue = DispatchQueue(label: "cqueue.hoffman.jon", attributes: .concurrent)
        //let serialQueue = DispatchQueue(label: "squeue.hoffman.jon")

        let cqueue = DispatchQueue(label: "cqueue.hoffman.jon", attributes: .concurrent)
        let calculation = DoCalculations()

        cqueue.async {
            calculation.performCalculation(iterations: 10000000, tag: "async1")
        }

        cqueue.async {
            calculation.performCalculation(iterations: 1000, tag: "async2")
        }

        cqueue.async {
            calculation.performCalculation(iterations: 100000, tag: "async3")
        }
    }

}
