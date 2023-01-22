//
//  Player.swift
//  Lab_1
//
//  Created by Chetan Patel on 2023-01-22.
//

import GameplayKit
import SpriteKit

class Player : GameObject
{
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder){
        fatalError("init(coder:)has not been impelented")
    }
    
    override func Start() {
        zPosition = 2
        Reset()
    }
    
    override func Update() {
        CheckBounds()
    }
    
    override func CheckBounds() {
        if(position.x <= -310){
            position.x = -310
        }
        if(position.x >= 310){
            position.x = 310
        }
    }
    
    override func Reset() {
        position.y = -498
    }
    
    func TouchMove(newPos: CGPoint){
        position = newPos
    }
}
