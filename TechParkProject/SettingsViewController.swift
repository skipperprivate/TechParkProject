//
//  SettingsViewController.swift
//  TechParkProject
//
//  Created by Boss on 18/04/2018.
//  Copyright © 2018 Boss. All rights reserved.
//

import UIKit
import FirebaseAuth
import FirebaseStorage

class SettingsViewController: UIViewController {
    
   // let authoriseKey = "authorise";
    //var authorisedState = "none";
    
    @IBOutlet weak var _username: UITextField!
    @IBOutlet weak var _password: UITextField!
    @IBOutlet var logOutBTN: UIButton!
    @IBOutlet var loginBTN: UIButton!
    @IBOutlet var registrationBTN: UIButton!
    @IBOutlet var nickNameLabel: UILabel!
    @IBOutlet var statusLabel: UILabel!
    @IBOutlet var changeAvatarPhotoBTN: UIButton!
    @IBOutlet var testsTakenLabel: UILabel!
    @IBOutlet var testsCreatedLabel: UILabel!
    @IBOutlet var testsTakenNum: UILabel!
    @IBOutlet var testsCreatedNum: UILabel!
    
    @IBOutlet weak var avatarPhoto: UIImageView!
    @IBOutlet weak var taptoChange: UIButton!
    
    var imagePicker:UIImagePickerController!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.view.backgroundColor = UIColor(patternImage:UIImage(named:"background1.png")!) //background color 
        // Do any additional setup after loading the view.
        imagePicker = UIImagePickerController()
        imagePicker.allowsEditing = true
        imagePicker.sourceType = .photoLibrary
        imagePicker.delegate = self
        taptoChange.addTarget(self, action: #selector(openImagePicker), for: .touchUpInside)
        
        
        nickNameLabel.text = Auth.auth().currentUser?.email
        
      //  self.uploadProfileImage(<#T##image: UIImage##UIImage#>, completion: <#T##((String?) -> ())##((String?) -> ())##(String?) -> ()#>)
    }
    
    @objc func openImagePicker(_ sender:Any){
        self.present(imagePicker, animated: true, completion: nil)
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
   /* func uploadProfileImage(_ image:UIImage, completion: @escaping ((_ url:String?)->())) {
        let storageItem = Storage.storage().reference().child("user/\(uid)")
        storageItem.putData(ImageData, metadata: metadata) { (metadata, error) in
            if error != nil {
                print("Couldn't Upload Image")
            } else {
                print("Uploaded")
                storageItem.downloadURL(completion: { (url, error) in
                    if error != nil {
                        print(error!)
                        return
                    }
                    if url != nil {
                        self.SetUpUser(Image: url!.absoluteString)
                    }
                }
            }
        }
    }*/
    
    
    @IBAction func logOutBTN(_ sender: Any) {
        try! Auth.auth().signOut()
        self.dismiss(animated: false, completion: nil)
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}


extension SettingsViewController: UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        picker.dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        if let pickedImage = info[UIImagePickerControllerEditedImage] as? UIImage {
            self.avatarPhoto.image = pickedImage
        }
        picker.dismiss(animated: true, completion: nil)
    }
    
}








