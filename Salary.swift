// Salary.swift
//
//  Created by Remy Skelton
//  Created on 2025-March-6
//  Version 1.0
//  Copyright (c) Remy Skelton. All rights reserved.
//
// This program will check if the user years worked is more than 5
// And display the salary with a 5% increase if it is.

// Import Foundation library
import Foundation

// Constants BONUS double, BONUS_YEAR int, and MAX_YEAR int
let BONUS: Double = 0.05
let BONUS_YEARS: Int = 5
let MAX_YEARS: Int = 90

func salary() {
    // Welcome message and instructions
    print("This program will ask for the number of years"
            , " you have worked as well as your salary and if you have"
            , " worked more than 5 years you will get a 5% increase.")

    // Declare userYearsInt and userSalaryDouble
    var userYearsInt: Int = 0
    var userSalaryDouble: Double = 0

    // Do-while loop for valid salary input
    repeat {
        // Message to ask user for salary
        print("Please enter your annual salary: ")

        // Read user salary as a string and use guard to make sure input is valid
        guard let userSalaryString = readLine() else {
            // Error message
            print("Invalid input: . Please enter a salary greater than 0.")
            // Must use continue to go back to the start of the loop with guard
            continue
        }

        // Safely convert user salary as a string to double and use guard to make sure input is valid
        guard let userSalaryDoubleLoop = Double(userSalaryString) else {
            // Error message when salary is not a number
            print("Invalid input: \(userSalaryString). Please enter a salary greater than 0.")
            // Must use continue to go back to the start of the loop with guard
            continue
        }

        // Set userSalaryDouble to userSalaryDoubleLoop
        userSalaryDouble = userSalaryDoubleLoop

        // Check if salary is less than or equal to 0
        if userSalaryDouble <= 0 {
            // Display error message when salary is
            // Less than or equal to 0
            print("Invalid input: \(userSalaryString). Please enter a salary greater than 0.")
        }

    // Runs until user salary is greater than 0
    } while userSalaryDouble <= 0

    // While loop for valid number of years worked is entered
    while userYearsInt <= 0 || userYearsInt > MAX_YEARS {
        // Message for user to enter years worked
        print("Please enter the number "
                + "of years you have worked: ")

        // Read user years as a string and use guard to make sure input is valid
        guard let userYearsString = readLine() else {
            // Error message
            print("Invalid input: . Please enter number of years greater than"
            , " 0 and less than or equal to 90.")
            // Must use continue to go back to the start of the loop with guard
            continue
        }

        // Safely convert user width as a string to double and use guard to make sure input is valid
        guard let userYearsIntLoop = Int(userYearsString) else {
            // Error message when years is not a number or is a decimal
            print("Invalid input: \(userYearsString)."
                , "Please enter number of years greater than 0 and less than or equal to 90.")
            // Must use continue to go back to the start of the loop with guard
            continue
        }

        // Set userYearsInt to userYearsIntLoop
        userYearsInt = userYearsIntLoop

        // If to see if height and width are greater than 0
        if userYearsInt <= 0 || userYearsInt > MAX_YEARS {
            // Error message
            print("Invalid input: \(userYearsInt)."
                , "Please enter number of years greater than 0 and less than or equal to 90.")
        }
    }
    // Calculate salary and bonus by calling calculateSalary function
    // Store results in results array as it contains more than one value
    // Learnt functions in swift from class
    // Learnt how to use arrays in swift
    // From https://www.programiz.com/swift-programming/arrays
    let resultsDoubleArray: [Double] =
    calculateSalary(userYearsInt: userYearsInt, userSalaryDouble: userSalaryDouble)
    // Get bonusTotal and salaryTotal from results array
    let bonusTotal: Double = resultsDoubleArray[0]
    let salaryTotal: Double = resultsDoubleArray[1]

    // Display results based on number of years worked
    if userYearsInt > BONUS_YEARS {
        // Display bonus and salary
        print("The bonus amount after \(userYearsInt) years is", String(format: "%.2f", bonusTotal) + "$.")
        print("Your total income before taxes is", String(format: "%.2f", salaryTotal) + "$.")
    } else {
        // Display salary without qualifying for bonus
        print("\(userYearsInt) years does not qualify for a bonus, your total income before taxes is" 
        , String(format: "%.2f", salaryTotal) + "$.")
    }

}

// Call function
salary()

// Function to calculate Bonus and Salary
// Takes in userYearsInt and userSalaryDouble
// Returns an array with bonusTotal and salaryTotal
func calculateSalary(userYearsInt: Int, userSalaryDouble: Double) -> [Double] {
    // Declare bonusTotal and salaryTotal
    var bonusTotal: Double = 0
    var salaryTotal: Double = 0

    // Switch statement to determine bonus percentage
    // Learnt switch statements in swift from https://www.programiz.com/swift-programming/switch-statement
    switch userYearsInt {
    case 1:
        // No bonus for less than 6 years
        bonusTotal = 0
        salaryTotal = userSalaryDouble
    case 2:
        // No bonus for less than 6 years
        bonusTotal = 0
        salaryTotal = userSalaryDouble
    case 3:
        // No bonus for less than 6 years
        bonusTotal = 0
        salaryTotal = userSalaryDouble
    case 4:
        // No bonus for less than 6 years
        bonusTotal = 0
        salaryTotal = userSalaryDouble
    case 5:
        // No bonus for less than 6 years
        bonusTotal = 0
        salaryTotal = userSalaryDouble
    default:
        // 5% bonus for more than 5 years
        bonusTotal = userSalaryDouble * BONUS
        salaryTotal = bonusTotal + userSalaryDouble
    }
    // Array to store bonusTotal and salaryTotal
    let bonusSalaryArray: [Double] = [bonusTotal, salaryTotal]
    // Return bonusTotal and salaryTotal in an array
    return bonusSalaryArray
}
