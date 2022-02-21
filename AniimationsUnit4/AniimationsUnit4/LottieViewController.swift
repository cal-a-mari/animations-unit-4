//
//  LottieViewController.swift
//  AniimationsUnit4
//
//  Created by Mari Batilando on 2/21/22.
//

import UIKit
import Lottie

class LottieViewController: UIViewController {
  
  private var animationView: AnimationView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    
    animationView = .init(name: "Extra/4762-food-carousel")
    animationView.frame = view.bounds
    animationView.contentMode = .scaleAspectFit
    animationView.loopMode = .loop
    animationView.animationSpeed = 5
    view.addSubview(animationView)
  }
  
  override func viewDidAppear(_ animated: Bool) {
    animationView.play()
  }
}
