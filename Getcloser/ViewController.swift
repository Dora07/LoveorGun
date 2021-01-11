import UIKit

class ViewController: UIViewController {
 
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    //Switch
    @IBOutlet weak var Switch: UISegmentedControl!
    //背景圖
    @IBOutlet weak var Light: UIImageView!
    
    //兔子圖
    @IBOutlet weak var Girl: UIImageView!
    //熊圖
    @IBOutlet weak var Boy: UIImageView!
    //愛心圖片
    @IBOutlet weak var heart: UIImageView!
    //數字
    @IBOutlet weak var numberLabel: UILabel!
    
//Slider
@IBAction func Slider(_ sender: UISlider)
    {
       //slider 的 value 四捨五入為整數
       sender.value.round()
    
       //移動速度的數值
        let speed = sender.value * 20
        
        let index = Switch.selectedSegmentIndex
        switch index {
        case 0: // 相愛
            numberLabel.text = Int(sender.value).description
            numberLabel.textColor = UIColor.red
            Light.image = UIImage(named: "background")
            //熊圖的x移動位置
            Boy.image = UIImage(named: "01")
           Boy.frame.origin.x = CGFloat(60 + speed)
            //兔子圖的移動位置
            Girl.image = UIImage(named: "02")
          Girl.frame.origin.x = CGFloat(600 - speed)
            //熊圖透明度
            Boy.alpha = CGFloat(sender.value/11)
            //兔子圖透明度
            Girl.alpha = CGFloat(sender.value/11)
            //愛心圖片越變越大
            heart.image = UIImage(named: "heart")
            heart.bounds = CGRect(x: 416, y: 155, width: 65 * Int((sender.value/3)), height: 30 * Int((sender.value/3)))
        case 1: // 相殺
            numberLabel.text = Int(sender.value ).description
            numberLabel.textColor = UIColor.white
            Light.image = UIImage(named: "background2")
        //兔子的移動位置
            Girl.image = UIImage(named: "03")
            Girl.frame.origin.x = CGFloat(10 + speed )
            Girl.alpha = 1
        //熊的移動位置
            Boy.image = UIImage(named: "04")
            Boy.frame.origin.x = CGFloat(150 + speed * 3  )
            Boy.alpha = 1
            //槍出現
            heart.image = UIImage(named: "Gun")
            heart.bounds = CGRect(x: 416, y: 155, width: 65 * Int((sender.value/1.5)), height: 30 * Int((sender.value/1.5)))
        default:
            return
        }
       
    }
    

}

