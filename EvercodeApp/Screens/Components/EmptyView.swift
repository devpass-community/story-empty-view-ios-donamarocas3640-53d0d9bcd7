import UIKit

class EmptyView: UIView {
    
    private lazy var label: UILabel = {
       
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 22, weight: .semibold)
        label.text = "No data found"
        label.textAlignment = .center
        return label
    }()
    
    private lazy var activityIndicatorView: UIActivityIndicatorView = {
      
        let view = UIActivityIndicatorView(style: .large)
        view.translatesAutoresizingMaskIntoConstraints = false
        view.startAnimating()
        return view
    }()
    
    init() {
        super.init(frame: .zero)
        
        self.backgroundColor = .white
        
        configureConstraints()
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func configureConstraints() {
        addSubview(label)
        NSLayoutConstraint.activate([
        
            label.centerXAnchor.constraint(equalTo: self.centerXAnchor),
            label.centerYAnchor.constraint(equalTo: self.centerYAnchor),
        ])
    }
    
}
