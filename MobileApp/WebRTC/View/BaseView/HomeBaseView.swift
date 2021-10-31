//
//  HomeBaseView.swift
//  WebRTC
//
//  Created by Shusuke Ota on 2021/9/17.
//

import UIKit
import MediaPlayer

class HomeBaseView: UIView {
    
    private var volumeView: MPVolumeView = {
        let volumeView = MPVolumeView(frame: .zero)
        volumeView.translatesAutoresizingMaskIntoConstraints = false
        return volumeView
    }()
    
    override func awakeFromNib() {
        initUI()
    }
}

// MARK: - Initialized
extension HomeBaseView {
    private func initUI() {
        addSubview(volumeView)
        
        NSLayoutConstraint.activate([
            // Volume view
            volumeView.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            volumeView.bottomAnchor.constraint(equalTo: safeAreaLayoutGuide.bottomAnchor, constant: -30),
            volumeView.leadingAnchor.constraint(equalTo: self.leadingAnchor, constant: 15),
            volumeView.trailingAnchor.constraint(equalTo: self.trailingAnchor, constant: 15)
        ])
    }
}
