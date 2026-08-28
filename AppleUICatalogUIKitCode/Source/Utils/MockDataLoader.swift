//
//  MockDataLoader.swift
//  UIKit-Swift
//
//  Created by Kamil Gomółka on 10/04/2022.
//

import Foundation

class MockDataLoader {

    // MARK: Singleton

    static let shared = MockDataLoader()

    // MARK: Getting mock data

    func longText() -> String? {
        text(fileName: "mockLongText")
    }

    func dataDetectorsText() -> String? {
        text(fileName: "mockDataDetectorsText")
    }

    func sequentialNumbersMultilineText(firstNumber: Int = 1, lastNumber: Int = 100) -> String {
        let ints = firstNumber...lastNumber
        let strings = ints.map { "\($0)" }
        return strings.joined(separator: "\n")
    }

    func persons() async -> [Person] {
        guard let url = Bundle.main.url(forResource: "personData", withExtension: "json") else {
            return []
        }

        return await Task.detached(priority: .background) {
            guard let data = try? Data(contentsOf: url),
                let array = try? JSONDecoder().decode([Person].self, from: data)
            else {
                return []
            }
            return array
        }.value
    }

    // MARK: Private functions

    func text(fileName: String) -> String? {
        guard let url = Bundle.main.url(forResource: fileName, withExtension: "txt") else {
            return nil
        }

        do {
            return try String(contentsOf: url)
        } catch {
            print("Error while getting mock data. fileName=\(fileName).txt. ", error)
            return nil
        }
    }
}
