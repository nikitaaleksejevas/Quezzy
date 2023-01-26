//
//  OnboardingViewController.swift
//  Quezzy
//
//  Created by Nikita Aleksejevas on 2023-01-26.
//

import UIKit

class OnboardingViewController: UIViewController {
    
    //MARK: -Outlets
    @IBOutlet private weak var mainView: UIView!
    @IBOutlet private weak var collectionView: UICollectionView!
    @IBOutlet private weak var pageControl: UIPageControl!
    
    

    //MARK: - Lifecycle
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mainView.layer.cornerRadius = 20

        // Do any additional setup after loading the view.
    }

    //MARK: -Actions
    
    @IBAction private func signUpTapped(_ sender: Any) {
    }
    
    
    @IBAction private func loginTapped(_ sender: Any) {
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
