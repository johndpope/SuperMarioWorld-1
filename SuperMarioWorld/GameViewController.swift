import UIKit
import SpriteKit

class GameViewController: UIViewController {
    var scene: GameScene? {
        return (view as? SKView)?.scene as? GameScene
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Configure the view.
        let skView = view as! SKView
        skView.showsFPS = true
        skView.showsNodeCount = true
        skView.showsPhysics = true
        
        /* Sprite Kit applies additional optimizations to improve rendering performance */
        skView.ignoresSiblingOrder = true
        skView.presentScene(setUpScene())
    }
    
    override var prefersStatusBarHidden : Bool {
        return true
    }
    
    func setUpScene() -> GameScene {
        let scene = GameScene(fileNamed: String(describing: GameScene.self))!
        scene.scaleMode = .resizeFill
        
        return scene
    }
}
