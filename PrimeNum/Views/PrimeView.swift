import SwiftUI

struct PrimeView: View {
    @StateObject private var primeViewModel = PrimeViewsModel()
    @State private var primes: String = ""
    
    var body: some View {
        NavigationStack {
            Form {
                Section(header: Text("Prime Number Checker")) {
                    TextField("Enter the prime number", text: $primes)
                        .keyboardType(.numberPad)
                }
                
                Section {
                    Button {
                        if let number = Int(primes) {
                            primeViewModel.checkPrime(number: number)
                        }
                    } label: {
                        Text("Submit")
                            .font(.headline)
                            .frame(maxWidth: .infinity, alignment: .center)
                    }
                }
                
                Section(header: Text("Result")) {
                    Text("\(primeViewModel.resultMessage)")
                }
            }
            .navigationTitle("PrimeNum")
        }
    }
}

#Preview {
    PrimeView()
}
