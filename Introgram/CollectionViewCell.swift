//
//  CollectionViewCell.swift
//  Introgram
//
//  Created by Sam.Lee on 2/26/24.
//

import UIKit

class CollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var nameLabel: UILabel!
    override func layoutSubviews() {
            super.layoutSubviews()
            
            imageView.layer.cornerRadius = imageView.bounds.width / 2
            imageView.clipsToBounds = true
        }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        
        let rainbowCircle = RainbowCircle(frame: imageView.bounds, lineHeight: 2)
        rainbowCircle.setNeedsDisplay()
        rainbowCircle.layer.displayIfNeeded()
        imageView.layer.addSublayer(rainbowCircle.layer)

    }

}


// Github 참조.
class RainbowCircle: UIView {

    private var radius: CGFloat {
        return frame.width>frame.height ? frame.height/2 : frame.width/2
    }

    var stroke: CGFloat = 1
    private var padding: CGFloat = 0

    //MARK: - Drawing
    override func draw(_ rect: CGRect) {
        super.draw(rect)
        drawRainbowCircle(outerRadius: radius - padding, innerRadius: radius - stroke - padding, resolution: 1)
    }

    init(frame: CGRect, lineHeight: CGFloat) {
        super.init(frame: frame)
        stroke = lineHeight
        backgroundColor = .clear
    }

    required init?(coder aDecoder: NSCoder) { super.init(coder: aDecoder) }

    private func drawRainbowCircle(outerRadius: CGFloat, innerRadius: CGFloat, resolution: Float) {
        guard let context = UIGraphicsGetCurrentContext() else { return }
        context.saveGState()
        context.translateBy(x: self.bounds.midX, y: self.bounds.midY)

        let subdivisions:CGFloat = CGFloat(resolution * 512) //Max subdivisions of 512

        let innerHeight = (CGFloat.pi*innerRadius)/subdivisions //height of the inner wall for each segment
        let outterHeight = (CGFloat.pi*outerRadius)/subdivisions

        let segment = UIBezierPath()
        segment.move(to: CGPoint(x: innerRadius, y: -innerHeight/2))
        segment.addLine(to: CGPoint(x: innerRadius, y: innerHeight/2))
        segment.addLine(to: CGPoint(x: outerRadius, y: outterHeight/2))
        segment.addLine(to: CGPoint(x: outerRadius, y: -outterHeight/2))
        segment.close()

        //Draw each segment and rotate around the center
        for i in 0 ..< Int(ceil(subdivisions)) {
            UIColor(hue: CGFloat(i)/subdivisions, saturation: 1, brightness: 1, alpha: 1).set()
            segment.fill()
            //let lineTailSpace = CGFloat.pi*2*outerRadius/subdivisions  //The amount of space between the tails of each segment
            let lineTailSpace = CGFloat.pi*2*outerRadius/subdivisions
            segment.lineWidth = lineTailSpace //allows for seemless scaling
            segment.stroke()

            //Rotate to correct location
            let rotate = CGAffineTransform(rotationAngle: -(CGFloat.pi*2/subdivisions)) //rotates each segment
            segment.apply(rotate)
        }

        context.translateBy(x: -self.bounds.midX, y: -self.bounds.midY) //Move context back to original position
        context.restoreGState()
    }
}
