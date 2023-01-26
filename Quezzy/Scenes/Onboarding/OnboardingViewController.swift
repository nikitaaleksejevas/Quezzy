//
//  OnboardingViewController.swift
//  Quezzy
//
//  Created by Nikita Aleksejevas on 2023-01-26.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    //MARK: -Properties
    private var currentPage = 0
    private var slides: [OnboardingSlide] = [
        OnboardingSlide(description: "Create gamified quizzes becomes simple", image: UIImage(named: "onboardOne")!),
        OnboardingSlide(description: "Find quizzes to test out your knowledge", image: UIImage(named: "onboardTwo")!),
        OnboardingSlide(description: "Take part in challenges with friends", image: UIImage(named: "onboardThree")!)
    ]
    
    //MARK: -Outlets
    @IBOutlet private weak var mainView: UIView!
    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var pageControl: UIPageControl!
    @IBOutlet private weak var descriptionLabel: UILabel!
    
    
    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let onboardCellNib = UINib(nibName: "OnboardingCollectionViewCell", bundle: nil)
        collectionView.register(onboardCellNib, forCellWithReuseIdentifier: "collectionCell")
        mainView.layer.cornerRadius = 20
        collectionView.dataSource = self
        collectionView.delegate = self
        setupDescriptionLabel()
        
        // Do any additional setup after loading the view.
    }
    
    //MARK: -Actions
    
    @IBAction private func signUpTapped(_ sender: Any) {
    }
    
    @IBAction private func loginTapped(_ sender: Any) {
    }
    
    //MARK: -Functions
    private func setupDescriptionLabel() {
        
        if currentPage == 0 {
            descriptionLabel.text = slides[0].description
        } else if currentPage == 1 {
            descriptionLabel.text = slides[1].description
        } else if currentPage == 2 {
            descriptionLabel.text = slides[2].description
        }
    }
    
}

//MARK: - Extensions
extension OnboardingViewController: UICollectionViewDataSource, UICollectionViewDelegate, UICollectionViewDelegateFlowLayout {
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        slides.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "collectionCell", for: indexPath) as! OnboardingCollectionViewCell
        
        cell.setup(slides[indexPath.row])
        return cell
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        CGSize(width: collectionView.frame.width, height: collectionView.frame.height)
    }
    
    func scrollViewDidEndDecelerating(_ scrollView: UIScrollView) {
        let width = scrollView.frame.width
        currentPage = Int(scrollView.contentOffset.x / width)
        pageControl.currentPage = currentPage
        setupDescriptionLabel()
    }
}
