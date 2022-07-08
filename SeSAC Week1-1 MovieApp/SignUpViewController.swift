

import UIKit

class SignUpViewController: UIViewController {
    
    @IBOutlet weak var mainLabel: UILabel!
    
    @IBOutlet weak var emailTextField: UITextField!
    
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBOutlet weak var nicknameTextField: UITextField!
    
    @IBOutlet weak var locationTextField: UITextField!
    
    @IBOutlet weak var recommendTextField: UITextField!
    
    @IBOutlet weak var signUpButton: UIButton!
    
    @IBOutlet weak var addInfoButton: UIButton!
    
    @IBOutlet weak var toggleSwitchButton: UISwitch!
    
    @IBOutlet weak var subView: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeUI()
        
        
    }
    
    func makeUI() {
        view.backgroundColor = .black
        subView.backgroundColor = .clear
        
        mainLabel.text = "JACKFLIX"
        mainLabel.textColor = #colorLiteral(red: 1, green: 0.2516278378, blue: 0.07121728926, alpha: 1)
        //mainLabel.font = .boldSystemFont(ofSize: 35)
        mainLabel.font = .systemFont(ofSize: 35, weight: .black)
        mainLabel.textAlignment = .center
        
        emailTextField.attributedPlaceholder = NSAttributedString(string: "이메일 주소 또는 전화번호", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        emailTextField.textColor = .white
        emailTextField.textAlignment = .center
        emailTextField.backgroundColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        emailTextField.keyboardType = .emailAddress
        emailTextField.clearButtonMode = .whileEditing
                        
        passwordTextField.attributedPlaceholder = NSAttributedString(string: "비밀번호", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        passwordTextField.textColor = .white
        passwordTextField.textAlignment = .center
        passwordTextField.backgroundColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        passwordTextField.keyboardType = .default
        passwordTextField.clearButtonMode = .whileEditing
        //passwordTextField.isSecureTextEntry = true
        
        nicknameTextField.attributedPlaceholder = NSAttributedString(string: "닉네임", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        nicknameTextField.textColor = .white
        nicknameTextField.textAlignment = .center
        nicknameTextField.backgroundColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        nicknameTextField.keyboardType = .default
        nicknameTextField.clearButtonMode = .whileEditing
        
        locationTextField.attributedPlaceholder = NSAttributedString(string: "위치", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        locationTextField.textColor = .white
        locationTextField.textAlignment = .center
        locationTextField.backgroundColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        locationTextField.keyboardType = .default
        locationTextField.clearButtonMode = .whileEditing
        
        recommendTextField.attributedPlaceholder = NSAttributedString(string: "추천 코드 입력", attributes: [NSAttributedString.Key.foregroundColor: UIColor.white])
        recommendTextField.textColor = .white
        recommendTextField.textAlignment = .center
        recommendTextField.backgroundColor = #colorLiteral(red: 0.2, green: 0.2, blue: 0.2, alpha: 1)
        recommendTextField.keyboardType = .numberPad
        recommendTextField.clearButtonMode = .whileEditing
        
        signUpButton.setTitle("회원가입", for: .normal)
        signUpButton.setTitleColor(.black, for: .normal)
        signUpButton.backgroundColor = .white
        signUpButton.layer.cornerRadius = 7
        
        
        addInfoButton.setTitle("추가 정보 입력", for: .normal)
        addInfoButton.setTitleColor(.white, for: .normal)
        addInfoButton.contentHorizontalAlignment = .leading
        
        toggleSwitchButton.onTintColor = #colorLiteral(red: 0.2549019754, green: 0.2745098174, blue: 0.3019607961, alpha: 1)
        toggleSwitchButton.thumbTintColor = #colorLiteral(red: 0.501960814, green: 0.501960814, blue: 0.501960814, alpha: 1)
        toggleSwitchButton.setOn(false, animated: true)
        toggleSwitchButton.layer.cornerRadius = 3
    }
    
    
    
    
    @IBAction func signUpButtonTapped(_ sender: UIButton) {
        view.endEditing(true)
        
        let alertMessage = UIAlertController(title: "회원가입", message: "가입 하시겠습니까?", preferredStyle: .alert)
        
        guard
            let email = emailTextField.text, !email.isEmpty,
            let password = passwordTextField.text, password.count >= 6,
            let coupon = recommendTextField.text, Int(coupon) != nil
        else {
                        
            return
                        
        }
        signUpButton.backgroundColor = .red
        signUpButton.setTitleColor(.white, for: .normal)
        signUpButton.isEnabled = true
        alertMessage.addAction(UIAlertAction(title: "확인", style: .destructive))
        alertMessage.addAction(UIAlertAction(title: "취소", style: .cancel))
        present(alertMessage, animated: true)
      
    }
    
    
    @IBAction func tapGestureTapped(_ sender: UITapGestureRecognizer) {
        view.endEditing(true)
        
        
        
    }
    
    func emailTF(_ textField: UITextField) {
        
        
            
        
        
        
        
        
    }

    
    
    
    
    
    
    
    
    
    
    
}
