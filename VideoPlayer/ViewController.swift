
import UIKit
import AVFoundation
import AVKit

class ViewController: UIViewController {
    
     var localURL1: URL = {
        let path = Bundle.main.path(forResource: "sea", ofType: "mp4")!
        return URL(fileURLWithPath: path)
    }()
      var localURL2: URL = {
        let path = Bundle.main.path(forResource: "boat", ofType: "mp4")!
        return URL(fileURLWithPath: path)
    }()
    override func viewDidLoad() {
        super.viewDidLoad()
        //view.backgroundColor = .black
    }
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        let player = AVPlayer(url: localURL2)
        let layer = AVPlayerLayer(player: player)
        layer.frame = view.bounds
        layer.videoGravity = .resizeAspectFill
        player.volume = 0.5
        view.layer.addSublayer(layer)
        player.play()
    }
//    func loadPlaylist() {
//
//        videoLinks.append(URL(fileURLWithPath: "boat"))
//        videoLinks.append(URL(fileURLWithPath: "sky"))
//        videoLinks.append(URL(fileURLWithPath: "river"))
//        videoLinks.append(URL(fileURLWithPath: "sea"))
//    }
}

