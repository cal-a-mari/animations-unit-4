//
//  KeyframeAnimationsViewController.swift
//  AniimationsUnit4
//
//  Created by Mari Batilando on 2/21/22.
//

import UIKit

class KeyframeAnimationsViewController: UIViewController {
    
    private var blueView: UIView!
    private var blueViewStartingPosition: CGPoint!

    override func viewDidLoad() {
        super.viewDidLoad()
        
        blueView = UIView()
        blueView.backgroundColor = .blue
        blueView.frame.size = CGSize(width: 100, height: 100)
        blueViewStartingPosition = CGPoint(x: view.center.x * 0.25, y: view.center.y * 0.66)
        blueView.center = blueViewStartingPosition
        view.addSubview(blueView)
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        
        UIView.animateKeyframes(withDuration: 4.0,
                                delay: 0.0,
                                options: .calculationModeLinear) {
            UIView.addKeyframe(withRelativeStartTime: 0.0, relativeDuration: 0.25) { [weak self] in
                guard let strongSelf = self else { return }
                strongSelf.blueView.center = CGPoint(x: strongSelf.blueView.center.x + 300, y: strongSelf.blueView.center.y)
            }
            
            UIView.addKeyframe(withRelativeStartTime: 0.25, relativeDuration: 0.25) { [weak self] in
                guard let strongSelf = self else { return }
                strongSelf.blueView.center = CGPoint(x: strongSelf.blueView.center.x, y: strongSelf.blueView.center.y + 300)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.50, relativeDuration: 0.25) { [weak self] in
                guard let strongSelf = self else { return }
                strongSelf.blueView.center = CGPoint(x: strongSelf.blueViewStartingPosition.x, y: strongSelf.blueView.center.y)
            }

            UIView.addKeyframe(withRelativeStartTime: 0.75, relativeDuration: 0.25) { [weak self] in
                guard let strongSelf = self else { return }
                strongSelf.blueView.center = strongSelf.blueViewStartingPosition
            }
        }
    }
}
