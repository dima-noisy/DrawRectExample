import UIKit

class ViewController: UIViewController {
    
    private lazy var exampleView: ExampleView = {
        let view = ExampleView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .systemBlue
        
        return view
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        title = "Draw Example"
        view.backgroundColor = .systemBackground

        view.addSubview(exampleView)
        
        setupContraints()
    }
    
    private func setupContraints() {
        let safeAreaGuide = view.safeAreaLayoutGuide
        
        NSLayoutConstraint.activate([
            exampleView.leadingAnchor.constraint(
                equalTo: safeAreaGuide.leadingAnchor,
                constant: 20.0
            ),
            exampleView.trailingAnchor.constraint(
                equalTo: safeAreaGuide.trailingAnchor,
                constant: -20.0
            ),
            exampleView.topAnchor.constraint(
                equalTo: safeAreaGuide.topAnchor,
                constant: 20.0
            ),
            exampleView.heightAnchor.constraint(equalToConstant: 300.0)
        ])
    }
}
