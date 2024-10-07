import UIKit
import Firebase
import FirebaseDatabase

private let database = Database.database(url: "https://gevs1-3ba2b-default-rtdb.europe-west1.firebasedatabase.app").reference()
class RegViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()}
    //keyboard disable method
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        mail.resignFirstResponder()
        pass.resignFirstResponder()
        fname.resignFirstResponder()
        const.resignFirstResponder()
        dob.resignFirstResponder()
        uvc.resignFirstResponder()
    }
    
    //outlets
    @IBOutlet weak var mail: UITextField!
    @IBOutlet weak var uvc: UITextField!
    @IBOutlet weak var dob: UITextField!
    @IBOutlet weak var const: UITextField!
    @IBOutlet weak var fname: UITextField!
    @IBOutlet weak var pass: UITextField!
    //outlets
    
    //register menthod-> start
    @IBAction func regbut(_ sender: Any) {
        
        guard let a = mail.text,let b = pass.text,let c = fname.text,let d = const.text,let e = dob.text,let f = uvc.text, !a.isEmpty,!b.isEmpty,!c.isEmpty,!d.isEmpty,!e.isEmpty,!f.isEmpty
        else {
            showAlert(title: "Error", message: "Please enter all the details")
            return
            
        }
        //insert into database
        let object: [String: Any] = [
            "email": a as Any,
            "pass": b as Any,
            "fullname": c as Any,
            "constituency": d as Any,
            "dob": e as Any,
            "uvc": f as Any,
            "voted": 0 as Int
        ]
        let codeToCheck = uvc.text
        let uvcRef = database.child("UVC")
        uvcRef.observeSingleEvent(of: .value) { (snapshot) in
            if snapshot.exists() {
                if snapshot.hasChild(codeToCheck ?? "") {
                    // checking if uvc has count of 1
                    database.child("UVC").observeSingleEvent(of: .value) { (snapshot) in
                        if snapshot.exists() {
                            if let value = snapshot.childSnapshot(forPath: codeToCheck ?? "").value as? Int {
                                if value == 0{
                                    database.child("Users").child(c).setValue(object){ (error, _) in
                                        if let error = error {
                                            print("error\(error)")
                                        }else {
                                            let alertController = UIAlertController(
                                                title: "User Registered",
                                                message: "Go back and Login to cast your vote",
                                                preferredStyle: .alert
                                            )
                                            let okAction = UIAlertAction(
                                                title: "OK",
                                                style: .default,
                                                handler: nil
                                            )
                                            alertController.addAction(okAction)
                                            self.present(alertController, animated: true, completion: nil)
                                            var rtemp = 1
                                            let userdata = [codeToCheck: rtemp]
                                            database.child("UVC").updateChildValues(userdata) { (error,reference) in
                                                if let error = error {
                                                    print("error") }
                                                else {
                                                    print("success")
                                                }
                                                database.removeAllObservers()
                                            }
                                        }
                                    }
                                }
                                
                                else {
                                    print("loss")
                                    let alertController = UIAlertController(
                                        title: "Registration Unsuccessful",
                                        message: "The given UVC is already registered",
                                        preferredStyle: .alert
                                    )
                                    let okAction = UIAlertAction(
                                        title: "OK",
                                        style: .default,
                                        handler: nil
                                    )
                                    alertController.addAction(okAction)
                                    self.present(alertController, animated: true, completion: nil)
                                    
                                }
                            }
                    }
                }
            } else {
                print("\(String(describing: codeToCheck)) does not exist in the 'UVC' node.")
                print("The 'UVC' node does not exist.")
                let alertController = UIAlertController(
                    title: "Registration Unsuccessful",
                    message: "The given UVC is invalid",
                    preferredStyle: .alert
                )
                let okAction = UIAlertAction(
                    title: "OK",
                    style: .default,
                    handler: nil
                )
                alertController.addAction(okAction)
                self.present(alertController, animated: true, completion: nil)
            }
        }
        else {
            print("The 'UVC' node does not exist.")
            let alertController = UIAlertController(
                title: "Registration Unsuccessful",
                message: "The given UVC is invalid",
                preferredStyle: .alert
            )
            let okAction = UIAlertAction(
                title: "OK",
                style: .default,
                handler: nil
            )
            alertController.addAction(okAction)
            self.present(alertController, animated: true, completion: nil)
        }
    }
}//reg meth
    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    }//class end



