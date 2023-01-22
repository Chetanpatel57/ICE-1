//
//  GameScene.swift
//  Lab_1
//
//  Created by Chetan Patel on 2023-01-22.
//

import SpriteKit
import GameplayKit

class GameScene: SKScene {
    
    var ocean1: Ocean1?
    var ocean2: Ocean1?
    var player: Player?
    
    override func sceneDidLoad() {
        name = "GAME"
        
        ocean1 = Ocean1()
        ocean1?.Reset()
        addChild(ocean1!)
        
        ocean2 = Ocean1()
        ocean2?.position.y = -773
        addChild(ocean2!)
        
        player = Player()
        player?.Reset()
        addChild(player!)
    }
    
    func touchDown(atPoint pos : CGPoint) {
        player?.TouchMove(newPos: CGPoint(x: pos.x, y: -495))
    }
    
    func touchMoved(toPoint pos : CGPoint) {
        player?.TouchMove(newPos: CGPoint(x: pos.x, y: -495))
        
    }
    
    func touchUp(atPoint pos : CGPoint) {
        player?.TouchMove(newPos: CGPoint(x: pos.x, y: -495))
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        
        for t in touches { self.touchDown(atPoint: t.location(in: self)) }
    }
    
    override func touchesMoved(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchMoved(toPoint: t.location(in: self)) }
    }
    
    override func touchesEnded(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    override func touchesCancelled(_ touches: Set<UITouch>, with event: UIEvent?) {
        for t in touches { self.touchUp(atPoint: t.location(in: self)) }
    }
    
    
    override func update(_ currentTime: TimeInterval) {
        ocean1?.Update()
        ocean2?.Update()
        player?.Update()
    }
}
