//
//  RoundButton.swift
//  Car Parking
//
//  Created by SCL IT on 09/08/18.
//  Copyright © 2018 Nikhil. All rights reserved.
//

import UIKit

class RoundButton: UIButton {

    override func awakeFromNib() {
        self.layer.cornerRadius = self.frame.height / 2
        self.layer.shadowRadius = 20
        self.layer.shadowOpacity = 0.5
        self.layer.shadowColor = UIColor.black.cgColor
    }

}
