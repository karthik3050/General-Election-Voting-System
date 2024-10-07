import UIKit
import Firebase
import FirebaseDatabase

private let database = Database.database(url: "https://gevs1-3ba2b-default-rtdb.europe-west1.firebasedatabase.app").reference()
class HomeViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBOutlet weak var h2: UITextField!
    @IBOutlet weak var h1: UITextField!
    
    //login authentication device end and server side start
    @IBAction func login(_ sender: Any) {
        
        guard let username = h1.text, let password = h2.text, !username.isEmpty, !password.isEmpty else {
            showAlert(title: "Error", message: "Username and password cannot be empty")
            return
        }

        if username == "election@shangrila.gov.sr" && password == "shangrila2024$" {
            navigateToFourthViewController()
        } else {
            retrieveUserDataAndLogin(username: username, password: password)
        }
    }

    private func retrieveUserDataAndLogin(username: String, password: String) {
        let databaseReference = Database.database(url: "https://gevs1-3ba2b-default-rtdb.europe-west1.firebasedatabase.app").reference()

        databaseReference.child("Users").child(username).observeSingleEvent(of: .value) { (snapshot) in
            if let userData = snapshot.value as? [String: Any], let storedPassword = userData["pass"] as? String {
                if password == storedPassword {
                    print("Login successful!")

                    let votedValue = userData["voted"] as? Int ?? 0

                    if votedValue == 0 {
                        
                        let updatedData = ["voted": 1]
                        databaseReference.child("Users").child(username).updateChildValues(updatedData) { (error, reference) in
                            if let error = error {
                                self.showAlert(title: "Error", message: "Failed to update user data: \(error.localizedDescription)")
                            } else {
                                print("User data updated successfully!")
                                self.navigateToThirdViewController()
                            }
                        }
                    } else {
                        
                        self.navigateToFinalViewController()
                    }
                } else {
                    self.showAlert(title: "Login Unsuccessful", message: "Invalid credentials")
                }
            } else {
                self.showAlert(title: "Login Unsuccessful", message: "Invalid credentials")
            }
        } withCancel: { (error) in
            self.showAlert(title: "Error", message: "An error occurred: \(error.localizedDescription)")
        }
    }

    private func navigateToFinalViewController() {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
        self.present(vc!, animated: true, completion: nil)
    }



    private func navigateToThirdViewController() {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "third")
        self.present(vc!, animated: true, completion: nil)
    }

    private func navigateToFourthViewController() {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "fourth")
        self.present(vc!, animated: true, completion: nil)
    }

    private func showAlert(title: String, message: String) {
        let alertController = UIAlertController(title: title, message: message, preferredStyle: .alert)
        alertController.addAction(UIAlertAction(title: "OK", style: .default, handler: nil))
        present(alertController, animated: true, completion: nil)
    }
    

    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        h1.resignFirstResponder()
        h2.resignFirstResponder()
    }
    //auth end here
}
