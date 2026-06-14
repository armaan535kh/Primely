import SwiftUI
import Combine

class PrimeViewsModel: ObservableObject {
    
    @Published var resultMessage: String = ""
    
    private var primeChecker = PrimeChecker()
    
    func checkPrime(number: Int) {
        let isPrime = primeChecker.isPrime(number: number)
        resultMessage = message(isprime: isPrime)
    }
    
    func message(isprime: Bool) -> String {
        if isprime {
            return "It is  a prime number"
        } else {
            return "It is not a prime number"
        }
    }
}
