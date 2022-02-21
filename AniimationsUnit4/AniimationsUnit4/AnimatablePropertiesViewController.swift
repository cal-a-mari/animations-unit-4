//
//  AnimatablePropertiesViewController.swift
//  AniimationsUnit4
//
//  Created by Mari Batilando on 2/21/22.
//

import UIKit

class AnimatablePropertiesViewController: UIViewController {
  
  private var blueView: UIView!
  private var redView: UIView!
  
  override func viewDidLoad() {
    super.viewDidLoad()
    createRedAndBlueViews()
  }
  
  override func viewDidAppear(_ animated: Bool) {
    animateBlueAndRedViews()
  }
  
  private func createRedAndBlueViews() {
    blueView = UIView()
    blueView.backgroundColor = .blue
    blueView.frame.size = CGSize(width: 100, height: 100)
    blueView.center = CGPoint(x: view.center.x, y: 100.0)
    view.addSubview(blueView)
    
    redView = UIView()
    redView.backgroundColor = .red
    redView.frame.size = CGSize(width: 100, height: 100)
    redView.center = CGPoint(x: view.center.x,
                             y: view.bounds.height - 100.0)
    view.addSubview(redView)
  }
  
  private func animateBlueAndRedViews() {
    UIView.animate(withDuration: 3.0,
                   delay: 0.0,
                   options: .curveEaseInOut,
                   animations: { [weak self] in
      guard let strongSelf = self else { return }
      strongSelf.blueView.center = strongSelf.view.center
      strongSelf.redView.center = strongSelf.view.center
    },
                   completion: { isCancelled in
      UIView.animate(withDuration: 3.0,
                     delay: 0.0,
                     options: .curveEaseInOut) { [weak self] in
        guard let strongSelf = self else { return }
        strongSelf.redView.frame.size = CGSize(width: strongSelf.redView.frame.size.width * 2.0,
                                               height: strongSelf.redView.frame.size.height * 2.0)
        strongSelf.redView.center = strongSelf.view.center
      }
    })
  }
}
