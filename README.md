# Prime Number Checker

A simple iOS application built with **SwiftUI** and the **MVVM (Model-View-ViewModel)** architecture that allows users to check whether a number is prime.

## Features

* Enter a number using a text field.
* Check whether the number is prime.
* Display a clear result message.
* Built using SwiftUI.
* Follows the MVVM design pattern.

## Project Structure

### Model

`PrimeChecker.swift`

Contains the business logic for determining whether a number is prime.

```swift
class PrimeChecker {
    func isPrime(number: Int) -> Bool
}
```

### ViewModel

`PrimeViewsModel.swift`

Acts as a bridge between the View and the Model.

Responsibilities:

* Receives user input from the View.
* Calls the Model to perform prime number validation.
* Updates the UI with the result.

### View

`PrimeView.swift`

Provides the user interface using SwiftUI.

Components:

* TextField for number input.
* Button to trigger the prime number check.
* Text view to display the result.

## How It Works

1. The user enters a number.
2. The user taps the **Submit** button.
3. The View passes the number to the ViewModel.
4. The ViewModel calls the Model's `isPrime()` function.
5. The result is converted into a user-friendly message.
6. The View automatically updates and displays the result.

## Technologies Used

* Swift
* SwiftUI
* MVVM Architecture
* Combine

## Learning Objectives

This project was created to practice:

* SwiftUI fundamentals
* MVVM architecture
* ObservableObject and @Published
* User input handling
* Separation of concerns
* Basic algorithm implementation

## Future Improvements

* Input validation for empty values.
* Better handling of large numbers.
* Unit tests for the prime number logic.
* Improved UI design with custom styling.
* Support for dark mode enhancements.



Built while learning iOS Development with SwiftUI.
