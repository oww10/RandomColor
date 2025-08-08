import UIKit

class ColorView: UIView {
    
    var colorLabel: UILabel = {
        let label = UILabel()
        label.textAlignment = .center
        label.text = "R: 255 G: 255 B: 255"
        label.textAlignment = .center
        label.translatesAutoresizingMaskIntoConstraints = false
        
        return label
    }()
    
    var randomChageButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Change Color", for: .normal)
        button.backgroundColor = .systemBlue
        button.setTitleColor(.white, for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    var resetButton: UIButton = {
        let button = UIButton(type: .system)
        button.setTitle("Reset", for: .normal)
        button.backgroundColor = .systemRed
        button.setTitleColor(.white, for: .normal)
        
        button.translatesAutoresizingMaskIntoConstraints = false
        
        return button
    }()
    
    lazy var buttonStackView:UIStackView = {
        let stackView = UIStackView(arrangedSubviews: [randomChageButton, resetButton])
        stackView.axis = .horizontal
        stackView.spacing = 20
        stackView.distribution = .fillEqually
        
        stackView.translatesAutoresizingMaskIntoConstraints = false
        return stackView
    }()
    
    override init(frame: CGRect){
        super.init(frame: frame)
        backgroundColor = .white
        setupUI()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    private func setupUI(){
        self.backgroundColor = .white
        
        addSubview(colorLabel)
        addSubview(buttonStackView)
        
        NSLayoutConstraint.activate([
            buttonStackView.centerXAnchor.constraint(equalTo: centerXAnchor),
            
            buttonStackView.centerYAnchor.constraint(equalTo: centerYAnchor),
            
            colorLabel.bottomAnchor.constraint(equalTo: buttonStackView.topAnchor, constant: -20),
            
            colorLabel.centerXAnchor.constraint(equalTo: centerXAnchor)
        ])
        
        
        
    }
    
}
#Preview{
    ColorView()
}
