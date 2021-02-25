//
//  ViewController.swift
//  Variadic+InOut+Default Parameter
//
//  Created by Ashok on 23/02/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad()
    {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        //MARK: Call Variadic Parameter Function
        print("AdditionOfNumber : \(VariadicFunc(Num: 1,2,3,4,6,9,10))")
        print("Addition Of 2 Number : \(VariadicFunc(Num: 2,5))")
        
        //MARK: Call InOut Parameter Function
        var num1 = 0
        print("InOut Parameter Calculation : \(InOutParameterFunc(Num1: &num1, Num2: 50))")
        
        //MARK: call Default Parameter Function
        print("Default Calculation : \(DefaultParameterFunc(num1: 100))")
    }


    //MARK: Variadic Parameter
    func VariadicFunc(Num: Int...) -> Int
    {
        var total:Int = 0
        
        for val in Num
        {
            total += val
        }
        return total
    }
    
    //MARK: InOut Parameter Fuction
    func InOutParameterFunc(Num1:inout Int,Num2:Int) -> Int
    {
        Num1 = 100
        return Num1 + Num2
    }
    
    
    //MARK: Default Parameter function
    func DefaultParameterFunc(num1:Int, num2:Int = 12) -> Int
    {
        return num1*num2
    }
    
}

