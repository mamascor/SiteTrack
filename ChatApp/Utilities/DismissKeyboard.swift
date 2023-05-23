//
//  DismissKeyboard.swift
//  ChatApp
//
//  Created by Marco Mascorro on 5/22/23.
//

import Foundation
import SwiftUI


struct DismissKeyboard: UIViewRepresentable {
    func makeUIView(context: UIViewRepresentableContext<DismissKeyboard>) -> UIView {
        let view = UIView()
        let tapGesture = UITapGestureRecognizer(target: view, action: #selector(UIView.endEditing(_:)))
        view.addGestureRecognizer(tapGesture)
        return view
    }

    func updateUIView(_ uiView: UIView, context: UIViewRepresentableContext<DismissKeyboard>) {
        // No update necessary
    }
}
