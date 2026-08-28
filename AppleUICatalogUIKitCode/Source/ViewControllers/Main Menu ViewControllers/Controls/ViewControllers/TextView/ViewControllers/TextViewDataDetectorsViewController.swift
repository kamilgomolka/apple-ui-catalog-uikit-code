//
//  TextViewDataDetectorsViewController.swift
//  AppleUICatalogUIKitCode
//
//  Created by Kamil Gomółka on 10/04/2022.
//

import UIKit

class TextViewDataDetectorsViewController: BaseViewController {

    // MARK: Properties

    var textView: UITextView = {
        let textView = UITextView()
        textView.keyboardDismissMode = .interactive
        textView.font = UIFont.preferredFont(forTextStyle: .body)
        textView.text = MockDataLoader.shared.dataDetectorsText()
        textView.isEditable = false
        textView.dataDetectorTypes = .all
        textView.translatesAutoresizingMaskIntoConstraints = false
        return textView
    }()

    // MARK: Lifecycle

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .systemBackground

        addSubviews()
        createConstraints()
    }

    // MARK: Initialization

    func addSubviews() {
        view.addSubview(textView)
    }

    func createConstraints() {
        textView.leadingAnchor.constraint(equalTo: view.leadingAnchor).isActive = true
        textView.trailingAnchor.constraint(equalTo: view.trailingAnchor).isActive = true
        textView.topAnchor.constraint(equalTo: view.topAnchor).isActive = true
        textView.bottomAnchor.constraint(equalTo: view.bottomAnchor).isActive = true
    }
}
