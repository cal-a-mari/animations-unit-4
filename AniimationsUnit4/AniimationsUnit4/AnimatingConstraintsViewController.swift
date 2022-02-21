//
//  AnimatingConstraintsViewController.swift
//  AniimationsUnit4
//
//  Created by Mari Batilando on 2/21/22.
//

import UIKit

class AnimatingConstraintsViewController: UIViewController {
  
  @IBOutlet weak var blueViewCenterYConstraint: NSLayoutConstraint!
  @IBOutlet weak var redViewTopConstraint: NSLayoutConstraint!
  @IBOutlet weak var redView: UIView!
  @IBOutlet weak var blueView: UIView!
  
  override func viewDidAppear(_ animated: Bool) {
    animateBlueView()
  }
  
  private func animateBlueView() {
    blueViewCenterYConstraint.constant = 0
    UIView.animate(withDuration: 3.0,
                   delay: 0.0,
                   options: .curveEaseInOut) { [weak self] in
      self?.view.layoutIfNeeded()
    } completion: { [weak self] isCancelled in
      self?.animateRedView()
    }
  }
  
  private func animateRedView() {
    redViewTopConstraint.isActive = false
    let newBottomConstraint = [redView.bottomAnchor.constraint(equalTo: blueView.topAnchor, constant: -30)]
    NSLayoutConstraint.activate(newBottomConstraint)
    UIView.animate(withDuration: 3.0,
                   delay: 0.0,
                   options: .curveEaseInOut) { [weak self] in
      self?.view.layoutIfNeeded()
    }
  }
}
