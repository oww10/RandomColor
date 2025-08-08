import UIKit

class ViewController: UIViewController {

    private var colorView:ColorView!
    
    override func loadView() {
        colorView = ColorView()
        self.view = colorView
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        setupButtonAction()
        
    }
    private func setupButtonAction() {
        colorView.randomChageButton.addTarget(self, action: #selector(randomColorChangeTap), for: .touchUpInside)
        
        colorView.resetButton.addTarget(self, action: #selector(resetButtonTap), for: .touchUpInside)
    }

    @objc private func randomColorChangeTap() {
        let randomRed = CGFloat.random(in: 0...1)
        let randomGreen = CGFloat.random(in: 0...1)
        let randomBlue = CGFloat.random(in: 0...1)
        let randomColor = UIColor(red: randomRed, green: randomGreen, blue: randomBlue, alpha: 1.0)
        
        let redInt = Int(randomRed * 255)
        let greenInt = Int(randomGreen * 255)
        let blueInt = Int(randomBlue * 255)
        
        colorView.backgroundColor = randomColor
        colorView.colorLabel.text = "R: \(redInt), G: \(greenInt), B: \(blueInt)"
        
    }
    
    @objc private func resetButtonTap(){
        
        colorView.backgroundColor = .white
        colorView.colorLabel.text = "R: 255, G: 255, B: 255"
        
    }
}


#Preview{
    ColorView()
}
