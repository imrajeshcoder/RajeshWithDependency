//
//  LoginVC.swift
//  DemoFramworkWithUI
//
//  Created by vrinsoft on 18/10/23.
//

import UIKit
import SDWebImage
public class LoginVC: UIViewController {

    @IBOutlet weak var imgTopImage: UIImageView!
    @IBOutlet weak var emailTextField: UITextField!
    @IBOutlet weak var passwordTextField: UITextField!
    
    @IBAction func signIn(_ sender: Any) {
        print("username \(emailTextField.text ?? "") password \(passwordTextField.text ?? "")")
    }
    
    public init() {
        super.init(nibName: "LoginVC", bundle: Bundle(for: LoginVC.self))
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    override public func viewDidLoad() {
        super.viewDidLoad()
        guard let url = URL(string: "https://picsum.photos/200/300") else { return  }
        imgTopImage.sd_setImage(with: url)
        // Do any additional setup after loading the view.
    }


}
