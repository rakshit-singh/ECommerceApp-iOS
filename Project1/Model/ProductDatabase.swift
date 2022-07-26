//
//  ProductDatabase.swift
//  Project1
//
//  Created by Rakshit Singh on 24/07/22.
//

import Foundation
import UIKit

class ProductDatabase{
    
    var productArr: [Product] = [
        Product(image:UIImage(named: "iphone13-Blue")!, name:"IPhone 13 Pro Max 256 GB - Sierra Blue", description:"""
Model Name - IPhone.
Network Service Provider - Unlocked for All Carriers.
Brand - Apple
Form Factor - Smartphone
Memory Storage Capacity - 256 GB
17 cm (6.7-inch) Super Retina XDR display with ProMotion for a faster, more responsive feel
Pro camera system with new 12MP Telephoto, Wide and Ultra Wide cameras; LiDAR Scanner; 6x optical zoom range; macro photography; Photographic Styles, ProRes video, Smart HDR 4, Night mode, Apple ProRAW, 4K Dolby Vision HDR recording
"""),
        Product(image:UIImage(named: "MacBookProM2-13inch")!, name:"MacBook Pro 13 Inch Apple M2 Chip", description:"""
        ModelName - MacBook Pro 13 inch
        Specifications - Retina Display, Apple M2 Chip, 8-Core CPU, TouchBar and TouchID,
        The new M2 chip makes the 13‑inch MacBook Pro more capable than ever. The same compact design supports up to 20 hours of battery life1 and an active cooling system to sustain enhanced performance. Featuring a brilliant Retina display, a FaceTime HD camera, and studio‑quality mics, it’s our most portable pro laptop.
        """),
        Product(image:UIImage(named: "AirPodsPro")!, name:"Apple AirPods Pro", description:"""
Model Name - Apple AirPods Pro,
Active Noise Cancellation for immersive sound. Transparency mode for hearing what’s happening around you.
We refined the details of comfort, creating a new class of in-ear headphones with a customizable fit that forms an exceptional seal for Active Noise Cancellation. You’ll feel your music, not your headphones.
4.5hrs listening time with one charge. Around 1hr of listening time on only 5 minutes of charging.
"""),
        Product(image:UIImage(named: "AppleWatchSeries7")!, name:"AppleWatch Series7", description:"""
Model Name - AppleWatch Series7,
Swimproof. Most crack-resistant front crystal. Certified IP6X dust resistant1
Always-On Retina display. Nearly 20% larger than Apple Watch SE
The larger display enhances the entire experience, making Apple Watch easier to use and read. Series 7 represents our biggest and brightest thinking yet.
"""),
        Product(image:UIImage(named: "Keyboard")!, name:"Apple MagicKeyboard with TouchID", description:"""
Model Name - Magic Keyboard with Touch ID and Numeric Keypad for Mac models with Apple silicon - US English - Black Keys,
Magic Keyboard is available with Touch ID, providing fast, easy and secure authentication for logins and purchases.
Height: 0.41–1.09 cm (0.16–0.43 inches)
Width: 41.87 cm (16.48 inches)
Depth: 11.49 cm (4.52 inches)
Weight: 0.369 kg (0.81 pounds)
""")
    ]
    
    
    func getProduct(_ index: Int) -> Product{
        return self.productArr[index]
    }
    
}
