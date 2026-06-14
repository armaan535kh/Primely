

import Foundation

class PrimeChecker {
    
    func isPrime(number: Int) -> Bool {
        if number <= 1 {
                return false
            }
        var count = 0
        
        for i in 2..<number {
                if number % i == 0 {
                    count += 1
                }
            }
        
        if count == 0 {
            return true
        } else {
            return false
        }
    }
}


