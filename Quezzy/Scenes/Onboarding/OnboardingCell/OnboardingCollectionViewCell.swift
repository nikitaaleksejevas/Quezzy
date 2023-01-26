//
//  OnboardingCollectionViewCell.swift
//  Quezzy
//
//  Created by Nikita Aleksejevas on 2023-01-26.
//

import UIKit

class OnboardingCollectionViewCell: UICollectionViewCell {
    
    //MARK: -Outlets
    @IBOutlet private weak var onboardImageView: UIImageView!
    
    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    //MARK: -Functions
    func setup(_ slide: OnboardingSlide) {
        onboardImageView.image = slide.image
    }
    
}
