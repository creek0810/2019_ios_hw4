import UIKit

let image = UIImage(named: "pepsi.jpg")
let imageView = UIImageView(image: image)
let backgroundView = UIView(frame: imageView.frame)

let aDegree = CGFloat.pi / 180
let path = UIBezierPath(arcCenter: CGPoint(x: 244, y: 261), radius: 176, startAngle: aDegree * 141, endAngle: aDegree * 307, clockwise: true)
path.currentPoint
path.addQuadCurve(to: CGPoint(x: 108, y: 371), controlPoint: CGPoint(x: 290, y: 287))

let tmp = CAShapeLayer()
tmp.path = path.cgPath
let bodyView = UIView(frame: imageView.frame)
bodyView.backgroundColor = UIColor(red: 1, green: 0, blue: 0, alpha: 1)
bodyView.layer.mask = tmp
backgroundView.addSubview(bodyView)

let path2 = UIBezierPath(arcCenter: CGPoint(x: 244, y: 261), radius: 176, startAngle: aDegree * 338, endAngle: aDegree * 138, clockwise: true)
path2.addQuadCurve(to: CGPoint(x: 407, y: 195), controlPoint: CGPoint(x: 450, y: 320))

let tmp2 = CAShapeLayer()
tmp2.path = path2.cgPath
let bodyView2 = UIView(frame: imageView.frame)
bodyView2.backgroundColor = UIColor(red: 0, green: 0, blue: 1, alpha: 1)
bodyView2.layer.mask = tmp2
backgroundView.addSubview(bodyView2)



