//
//  ViewController.swift
//  ios-workshop
//
//  Created by Jenny Chong on 1/25/19.
//  Copyright © 2019 chongjenny. All rights reserved.
//

import UIKit
import QuartzCore

class ViewController: UIViewController {
    var count = 0
    
    @IBOutlet weak var countLabel: UILabel!
    @IBOutlet weak var buttonStart: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        countLabel.text = "Do you need inspiration?"
        countLabel.numberOfLines = 0
        countLabel.layer.masksToBounds = true
        countLabel.layer.cornerRadius = 20
        buttonStart.backgroundColor = randomColor()
        buttonStart.layer.cornerRadius = 20
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: ("bg.jpeg"))!)
    }
    
    @IBAction func buttonTUI(_ sender: Any) {
        let quotes = ["I raise up my voice—not so I can shout, but so that those without a voice can be heard...we cannot succeed when half of us are held back.\n\n-Margaret Thatcher", "Feminism isn't about making women strong. Women are already strong. It's about changing the way the world perceives that strength.\n\n-G.D. Anderson", "Women belong in all places where decisions are being made... It shouldn't be that women are the exception.\n\n-Ruth Bader Ginsburg", "A woman with a voice is, by definition, a strong woman.\n\n-Melinda Gates", "We need to reshape our own perception of how we view ourselves. We have to step up as women and take the lead.\n\n-Beyoncé", "Allow yourself to enjoy each happy moment in your life.\n\n-Steve Maraboli", "Lighten up on yourself. No one is perfect. Gently accept your humanness.\n\n–Deborah Day", "Acknowledge, accept, and honor that you deserve your own deepest compassion and love.\n\n-Nanette Mathews", "Whatever you are doing, love yourself for doing it. Whatever you are feeling, love yourself for feeling it.\n\n-Thaddeus Golas", "You are a VIP, a very important person so take care with self care. If not you, who? If not now, when?\n\n-Toni Hawkins", "Be patient with yourself. Self-growth is tender; it’s holy ground. There’s no greater investment. \n\n-Stephen Covey", "Move out of your comfort zone. You can only grow if you are willing to feel awkward and uncomfortable when you try something new. \n\n-Brian Tracy", "Accept the challenges so that you can feel the exhilaration of victory. \n\n-George S. Patton", "The secret of getting ahead is getting started. \n\n-Mark Twain", "If your dreams don't scare you, they aren't big enough. \n\n-Unknown", "When you feel like quitting, think about why you started. \n\n-Unknown", "Our greatest glory is not in never falling, but in rising every time we fall. \n\n-Confucius", "All our dreams can come true, if we have the courage to pursue them. \n\n-Walt Disney", "Believe in yourself. You are braver than you think, more talented than you know, and capable of more than you imagine. \n\n-Roy T. Bennett", "Believe in yourself, take on your challenges, dig deep within yourself to conquer fears. Never let anyone bring you down. You got to keep going. \n\n-Chantal Sutherland","All you need is the plan, the road map, and the courage to press on to your destination. \n\n-Earl Nightingale", "Once we believe in ourselves, we can risk curiosity, wonder, spontaneous delight, or any experience that reveals the human spirit. \n\n-E. E. Cummings", "Happiness is not something you postpone for the future; it is something you design for the present. \n\n-Jim Rohn", "If you are always trying to be normal, you will never know how amazing you can be. \n\n-Maya Angelou", "The only way to do great work is to love what you do. If you haven't found it yet, keep looking. \n\n-Steve Jobs", "It's an incredible feeling to know you've helped change the world for the better, even in a small way. \n\n-James Fullerton", "Character cannot be developed in ease and quiet. Only through experience of trial and suffering can the soul be strengthened, ambition inspired, and success achieved. \n\n-Helen Keller", "Diversity is not about how we differ. Diversity is about embracing one another's uniqueness. \n\n-Ola Joseph", "There is little difference in people, but that little difference makes a big difference. The little difference is attitude. The big difference is whether it is positive or negative. \n\n-W. Clement Stone", "As we look ahead into the next century, leaders will be those who empower others. \n\n-Bill Gates"]
        let random = quotes[Int(arc4random_uniform(UInt32(quotes.count)))]
        countLabel.text = "\(random)"
        buttonStart.backgroundColor = randomColor()
        let tempImage = randomImage()
        //print("\(tempImage)")
        self.view.backgroundColor = UIColor(patternImage: UIImage(named: (tempImage) + ".jpeg")!)
    }
    
    func randomColor() -> UIColor {
        var red = CGFloat.random(in: 0...1)
        var green = CGFloat.random(in: 0...1)
        var blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 0.6)
        //return UIColor.black
    }
    
    func randomImage() -> String {
        let images = [
            "Image1",
            "Image2",
            //"Image3",
            "Image4",
            //"Image5",
           // "Image6",
            "Image7",
            "Image8",
            "Image9",
            "Image10",
            "Image11",
            "Image12",
            "Image13",
            "Image14",
            "Image15"
        ]
        let idx = Int(arc4random_uniform(UInt32(images.count)))
        let image = images[idx]
        
        return image
    }
    
    
    
    
}

