//
//  ViewController.swift
//  picture on ARCard
//
//  Created by 吉冨優太 on 2019/08/27.
//  Copyright © 2019 吉冨優太. All rights reserved.
//

import UIKit
import SceneKit
import ARKit

class ViewController: UIViewController {
    @IBOutlet weak var sceneView: ARSCNView!
    @IBOutlet weak var button_layer1: UIButton!
    @IBOutlet weak var grandfront_layer1: UIButton!
    @IBOutlet weak var bone_layer2: UIButton!
    @IBOutlet weak var one_layer2: UIButton!
    @IBOutlet weak var two_layer2: UIButton!
    @IBOutlet weak var three_layer2: UIButton!
    @IBOutlet weak var four_layer2: UIButton!
    @IBOutlet weak var five_layer2: UIButton!
    @IBOutlet weak var six_layer2: UIButton!
    @IBOutlet weak var seven_layer2: UIButton!
    @IBOutlet weak var eight_layer2: UIButton!
    @IBOutlet weak var nine_layer2: UIButton!
    
    
    let defaultConfiguration: ARWorldTrackingConfiguration = {
        let configuration = ARWorldTrackingConfiguration()
        
        let images = ARReferenceImage.referenceImages(inGroupNamed: "AR Resources", bundle: nil)
        
        configuration.detectionImages = images
        configuration.planeDetection = .horizontal
        configuration.environmentTexturing = .automatic
        return configuration
    }()
    
    let image = UIImage(named:"art.scnassets/button_layer1.png")!
    let image2 = UIImage(named: "art.scnassets/grandfront_layer1.png")!
    
    let bonefloor_image = UIImage(named: "art.scnassets/B1F_layer2.png")!
    let onefloor_image = UIImage(named: "art.scnassets/1F_layer2.png")!
    let secondfloor_image = UIImage(named: "art.scnassets/2F_layer2.png")!
    let threefloor_image = UIImage(named: "art.scnassets/3F_layer2.png")!
    let fourfloor_image = UIImage(named: "art.scnassets/4F_layer2.png")!
    let fivefloor_image = UIImage(named: "art.scnassets/5F_layer2.png")!
    let sixfloor_image = UIImage(named: "art.scnassets/6F_layer2.png")!
    let sevenfloor_image = UIImage(named: "art.scnassets/7F_layer2.png")!
    let eightfloor_image = UIImage(named: "art.scnassets/8F_layer2.png")!
    let ninefloor_image = UIImage(named: "art.scnassets/9F_layer2.png")!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        sceneView.delegate = self
        sceneView.debugOptions = [ARSCNDebugOptions.showFeaturePoints]
        button_layer1.setImage(image, for: .normal)
        button_layer1.isHidden = true
        
        grandfront_layer1.setImage(image2, for: .normal)
        grandfront_layer1.isHidden = true
        
        bone_layer2.setImage(bonefloor_image, for: .normal)
        bone_layer2.isHidden = true

        
        one_layer2.setImage(onefloor_image, for: .normal)
        one_layer2.isHidden = true
        
        two_layer2.setImage(secondfloor_image, for: .normal)
        two_layer2.isHidden = true
        
        three_layer2.setImage(threefloor_image, for: .normal)
        three_layer2.isHidden = true
        
        four_layer2.setImage(fourfloor_image, for: .normal)
        four_layer2.isHidden = true
        
        five_layer2.setImage(fivefloor_image, for: .normal)
        five_layer2.isHidden = true
        
        six_layer2.setImage(sixfloor_image, for: .normal)
        six_layer2.isHidden = true
        
        seven_layer2.setImage(sevenfloor_image, for: .normal)
        seven_layer2.isHidden = true
        
        eight_layer2.setImage(eightfloor_image, for: .normal)
        eight_layer2.isHidden = true
        
        nine_layer2.setImage(ninefloor_image, for: .normal)
        nine_layer2.isHidden = true
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        
        sceneView.session.run(defaultConfiguration)
        sceneView.reloadInputViews()
    }
    
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        
        sceneView.session.pause()
    }
    
    @IBAction func button_layer1Tapped(_ sender: UIButton) {
        self.button_layer1.isHidden = true
        self.grandfront_layer1.isHidden = false
    }
    
    @IBAction func grandfront_layer1Tapped(_ sender: UIButton) {
        self.grandfront_layer1.isHidden = true
        self.one_layer2.isHidden = false
        self.two_layer2.isHidden = false
        self.three_layer2.isHidden = false
        self.four_layer2.isHidden = false
        self.five_layer2.isHidden = false
        self.six_layer2.isHidden = false
        self.seven_layer2.isHidden = false
        self.eight_layer2.isHidden = false
        self.nine_layer2.isHidden = false
        self.bone_layer2.isHidden = false
    }
    
    
    
    @IBAction func one_layer2Tapped(_ sender: UIButton) {
        
    }
    
    @IBAction func two_layer2Tapped(_ sender: UIButton) {
        
    }
    
    @IBAction func three_layer2Tapped(_ sender: UIButton) {
        
    }
    
    @IBAction func four_layer2Tapped(_ sender: UIButton) {
        
    }
    
    @IBAction func five_layer2Tapped(_ sender: UIButton) {
    }
    
    @IBAction func six_layer2Tapped(_ sender: UIButton) {
    }
    
    @IBAction func seven_layer2Tapped(_ sender: UIButton) {
    }
    
    @IBAction func eight_layer2Tapped(_ sender: UIButton) {
    }
    
    @IBAction func nine_layer2Tapped(_ sender: UIButton) {
    }
}

extension ViewController: ARSCNViewDelegate {
    
    private func setImageToScene(image: UIImage, scale: CGFloat, position: SCNVector3) {
        if let camera = sceneView.pointOfView {
            //let position = SCNVector3(x: 0, y: 0, z: -0.5) // 偏差のベクトルを生成する
            let convertPosition = camera.convertPosition(position, to: nil)
            let node = createPhotoNode(image, position: convertPosition, scale: scale)
            node.eulerAngles = camera.eulerAngles
            self.sceneView.scene.rootNode.addChildNode(node)
        }
    }
    
    private func createPhotoNode(_ image: UIImage, position: SCNVector3, scale: CGFloat) -> SCNNode {
        let node = SCNNode()
        let geometry = SCNBox(width: image.size.width * scale / image.size.height,
                              height: scale,
                              length: 0.00000001,
                              chamferRadius: 0.0)
        geometry.firstMaterial?.diffuse.contents = image
        node.geometry = geometry
        node.position = position
        return node
    }
    
    
    
    func renderer(_ renderer: SCNSceneRenderer, didAdd node: SCNNode, for anchor: ARAnchor) {
        guard let imageAnchor = anchor as? ARImageAnchor else {
            return
        }
        DispatchQueue.main.async {
            self.button_layer1.isHidden = false
        }
    }
}
