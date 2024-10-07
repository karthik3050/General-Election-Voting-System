
import UIKit
import SwiftUI
import Firebase
import FirebaseDatabase

private let database = Database.database(url: "https://gevs1-3ba2b-default-rtdb.europe-west1.firebasedatabase.app").reference()
private var cal: Int = 0, rad: Int = 0,len: Int = 0

class ElectionViewController: UIViewController {
    var h1temp = ""
    override func viewDidLoad() {
        super.viewDidLoad()
        scroll.isUserInteractionEnabled = false}
    
    @IBAction func back(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "main")
        self.present(vc!,animated: true, completion: nil)
    }
    
    @IBOutlet weak var label: UILabel!
    
    @IBOutlet weak var scroll: UIScrollView!
    
    //refresh button start
    @IBAction func refresh(_ sender: Any) {
        
        let ref = database.child("Count/Scount")
        ref.observe(.value) { snapshot in
            if let startvalue = snapshot.childSnapshot(forPath: "start").value as? Int {
                if startvalue == 1 {
                    self.scroll.isUserInteractionEnabled = true
                    self.label.text = "YOU CAN ELECT NOW!"
                    self.label.textColor = UIColor.systemGreen
                    self.label.backgroundColor = UIColor.black
                }
                else {
                    self.scroll.isUserInteractionEnabled = false
                    self.label.text = "Election Has Not Begun!"
                    self.label.textColor = UIColor.red
                    //self.label.backgroundColor = UIColor.black
                }
            }
        }
        print("value of username is: \(h1temp)")
    }//function
    //refresh button stop
    
    
    //voting functions start from here
    @IBAction func callum(_ sender: Any) {
        let ref = database.child("Leaders/Blue")
                ref.observeSingleEvent(of: .value) { snapshot in
                    if let bemp = snapshot.childSnapshot(forPath: "Callum").value as? Int {
                        // Increment cal only if it's not already 70
                        if cal != 989 {
                            cal = bemp + 1
                            print(cal)
                            
                            let userData = ["Callum": cal]
                            ref.updateChildValues(userData) { (error, reference) in
                                if let error = error {
                                    print("Error updating value: \(error.localizedDescription)")
                                } else {
                                    print("Value updated successfully")
                                    let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                                    self.present(vc!, animated: true, completion: nil)
                                }
                                ref.removeAllObservers()
                            }
                        }
                    }
                }
            }
        
    
    @IBAction func rodney(_ sender: Any) {
        let ref = database.child("Leaders/Red")
              ref.observeSingleEvent(of: .value) { snapshot in
                  if let memp = snapshot.childSnapshot(forPath: "Rodney").value as? Int{
                      if len != 999 {
                          len = memp + 1
                          print(rad)
                          let userdata = ["Rodney": len]
                          ref.updateChildValues(userdata) { (error,reference) in
                              if let error = error {
                                  print("error") }
                              else {
                                  print("success")
                                  let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                                  self.present(vc!, animated: true, completion: nil)
                              }
                              ref.removeAllObservers()
                          }
                      }
                  }
              }
    }
            
    
        
        
    
    @IBAction func lenus(_ sender: Any) {
        let ref = database.child("Leaders/Yellow")
        ref.observeSingleEvent(of: .value) { snapshot in
            if let memp = snapshot.childSnapshot(forPath: "Lenus").value as? Int{
                if len != 999 {
                    len = memp + 1
                    print(rad)
                    let userdata = ["Lenus": len]
                    ref.updateChildValues(userdata) { (error,reference) in
                        if let error = error {
                            print("error") }
                        else {
                            print("success")
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                            self.present(vc!, animated: true, completion: nil)
                        }
                        ref.removeAllObservers()
                    }
                }
            }
        }
    }
    
    @IBAction func buta(_ sender: Any) {
        let ref = database.child("Leaders/Individual")
        ref.observeSingleEvent(of: .value) { snapshot in
            if let memp = snapshot.childSnapshot(forPath: "Buta").value as? Int{
                if len != 999 {
                    len = memp + 1
                    print(rad)
                    let userdata = ["Buta": len]
                    ref.updateChildValues(userdata) { (error,reference) in
                        if let error = error {
                            print("error") }
                        else {
                            print("success")
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                            self.present(vc!, animated: true, completion: nil)
                        }
                        ref.removeAllObservers()
                    }
                }
            }
        }
    }
    
    @IBAction func eric(_ sender: Any) {
        let ref = database.child("Leaders/Blue")
        ref.observeSingleEvent(of: .value) { snapshot in
            if let memp = snapshot.childSnapshot(forPath: "Eric").value as? Int{
                if len != 999 {
                    len = memp + 1
                    print(rad)
                    let userdata = ["Eric": len]
                    ref.updateChildValues(userdata) { (error,reference) in
                        if let error = error {
                            print("error") }
                        else {
                            print("success")
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                            self.present(vc!, animated: true, completion: nil)
                        }
                        ref.removeAllObservers()
                    }
                }
            }
        }
    }
    
    @IBAction func sujith(_ sender: Any) {
        let ref = database.child("Leaders/Red")
        ref.observeSingleEvent(of: .value) { snapshot in
            if let memp = snapshot.childSnapshot(forPath: "Sujith").value as? Int{
                if len != 999 {
                    len = memp + 1
                    print(rad)
                    let userdata = ["Sujith": len]
                    ref.updateChildValues(userdata) { (error,reference) in
                        if let error = error {
                            print("error") }
                        else {
                            print("success")
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                            self.present(vc!, animated: true, completion: nil)
                        }
                        ref.removeAllObservers()
                    }
                }
            }
        }
    }
    
    @IBAction func maran(_ sender: Any) {
        let ref = database.child("Leaders/Yellow")
        ref.observeSingleEvent(of: .value) { snapshot in
            if let memp = snapshot.childSnapshot(forPath: "Maran").value as? Int{
                if len != 999 {
                    len = memp + 1
                    print(rad)
                    let userdata = ["Maran": len]
                    ref.updateChildValues(userdata) { (error,reference) in
                        if let error = error {
                            print("error") }
                        else {
                            print("success")
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                            self.present(vc!, animated: true, completion: nil)
                        }
                        ref.removeAllObservers()
                    }
                }
            }
        }
    }
    
    @IBAction func mo(_ sender: Any) {
        let ref = database.child("Leaders/Individual")
        ref.observeSingleEvent(of: .value) { snapshot in
            if let memp = snapshot.childSnapshot(forPath: "Mo").value as? Int{
                if len != 999 {
                    len = memp + 1
                    print(rad)
                    let userdata = ["Mo": len]
                    ref.updateChildValues(userdata) { (error,reference) in
                        if let error = error {
                            print("error") }
                        else {
                            print("success")
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                            self.present(vc!, animated: true, completion: nil)
                        }
                        ref.removeAllObservers()
                    }
                }
            }
        }
    }
    
    @IBAction func petra(_ sender: Any) {
        let ref = database.child("Leaders/Blue")
        ref.observeSingleEvent(of: .value) { snapshot in
            if let memp = snapshot.childSnapshot(forPath: "Petra").value as? Int{
                if len != 999 {
                    len = memp + 1
                    print(rad)
                    let userdata = ["Petra": len]
                    ref.updateChildValues(userdata) { (error,reference) in
                        if let error = error {
                            print("error") }
                        else {
                            print("success")
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                            self.present(vc!, animated: true, completion: nil)
                        }
                        ref.removeAllObservers()
                    }
                }
            }
        }
    }
    
    @IBAction func lukshi(_ sender: Any) {
        let ref = database.child("Leaders/Red")
        ref.observeSingleEvent(of: .value) { snapshot in
            if let memp = snapshot.childSnapshot(forPath: "Lukshi").value as? Int{
                if len != 999 {
                    len = memp + 1
                    print(rad)
                    let userdata = ["Lukshi": len]
                    ref.updateChildValues(userdata) { (error,reference) in
                        if let error = error {
                            print("error") }
                        else {
                            print("success")
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                            self.present(vc!, animated: true, completion: nil)
                        }
                        ref.removeAllObservers()
                    }
                }
            }
        }
    }
    
    @IBAction func jan(_ sender: Any) {
        let ref = database.child("Leaders/Yellow")
        ref.observeSingleEvent(of: .value) { snapshot in
            if let memp = snapshot.childSnapshot(forPath: "Jan").value as? Int{
                if len != 999 {
                    len = memp + 1
                    print(rad)
                    let userdata = ["Jan": len]
                    ref.updateChildValues(userdata) { (error,reference) in
                        if let error = error {
                            print("error") }
                        else {
                            print("success")
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                            self.present(vc!, animated: true, completion: nil)
                        }
                        ref.removeAllObservers()
                    }
                }
            }
        }
    }
    
    @IBAction func paige(_ sender: Any) {
        let ref = database.child("Leaders/Individual")
        ref.observeSingleEvent(of: .value) { snapshot in
            if let memp = snapshot.childSnapshot(forPath: "Paige").value as? Int{
                if len != 999 {
                    len = memp + 1
                    print(rad)
                    let userdata = ["Paige": len]
                    ref.updateChildValues(userdata) { (error,reference) in
                        if let error = error {
                            print("error") }
                        else {
                            print("success")
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                            self.present(vc!, animated: true, completion: nil)
                        }
                        ref.removeAllObservers()
                    }
                }
            }
        }
    }
    
    @IBAction func sonal(_ sender: Any) {
        let ref = database.child("Leaders/Blue")
        ref.observeSingleEvent(of: .value) { snapshot in
            if let memp = snapshot.childSnapshot(forPath: "Sonal").value as? Int{
                if len != 999 {
                    len = memp + 1
                    print(rad)
                    let userdata = ["Sonal": len]
                    ref.updateChildValues(userdata) { (error,reference) in
                        if let error = error {
                            print("error") }
                        else {
                            print("success")
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                            self.present(vc!, animated: true, completion: nil)
                        }
                        ref.removeAllObservers()
                    }
                }
            }
        }
    }
    
    @IBAction func pinak(_ sender: Any) {
        let ref = database.child("Leaders/Red")
        ref.observeSingleEvent(of: .value) { snapshot in
            if let memp = snapshot.childSnapshot(forPath: "Pinak").value as? Int{
                if len != 999 {
                    len = memp + 1
                    print(rad)
                    let userdata = ["Pinak": len]
                    ref.updateChildValues(userdata) { (error,reference) in
                        if let error = error {
                            print("error") }
                        else {
                            print("success")
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                            self.present(vc!, animated: true, completion: nil)
                        }
                        ref.removeAllObservers()
                    }
                }
            }
        }
    }
    
    @IBAction func gita(_ sender: Any) {
        let ref = database.child("Leaders/Yellow")
        ref.observeSingleEvent(of: .value) { snapshot in
            if let memp = snapshot.childSnapshot(forPath: "Gita").value as? Int{
                if len != 999 {
                    len = memp + 1
                    print(rad)
                    let userdata = ["Gita": len]
                    ref.updateChildValues(userdata) { (error,reference) in
                        if let error = error {
                            print("error") }
                        else {
                            print("success")
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                            self.present(vc!, animated: true, completion: nil)
                        }
                        ref.removeAllObservers()
                    }
                }
            }
        }
    }
    
    @IBAction func hamida(_ sender: Any) {
        let ref = database.child("Leaders/Individual")
        ref.observeSingleEvent(of: .value) { snapshot in
            if let memp = snapshot.childSnapshot(forPath: "Hamida").value as? Int{
                if len != 999 {
                    len = memp + 1
                    print(rad)
                    let userdata = ["Hamida": len]
                    ref.updateChildValues(userdata) { (error,reference) in
                        if let error = error {
                            print("error") }
                        else {
                            print("success")
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                            self.present(vc!, animated: true, completion: nil)
                        }
                        ref.removeAllObservers()
                    }
                }
            }
        }
    }
    
    @IBAction func nabil(_ sender: Any) {
        let ref = database.child("Leaders/Blue")
        ref.observeSingleEvent(of: .value) { snapshot in
            if let memp = snapshot.childSnapshot(forPath: "Nabil").value as? Int{
                if len != 999 {
                    len = memp + 1
                    print(rad)
                    let userdata = ["Nabil": len]
                    ref.updateChildValues(userdata) { (error,reference) in
                        if let error = error {
                            print("error") }
                        else {
                            print("success")
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                            self.present(vc!, animated: true, completion: nil)
                        }
                        ref.removeAllObservers()
                    }
                }
            }
        }
    }
    
    @IBAction func satpal(_ sender: Any) {
        let ref = database.child("Leaders/Red")
        ref.observeSingleEvent(of: .value) { snapshot in
            if let memp = snapshot.childSnapshot(forPath: "Satpal").value as? Int{
                if len != 999 {
                    len = memp + 1
                    print(rad)
                    let userdata = ["Satpal": len]
                    ref.updateChildValues(userdata) { (error,reference) in
                        if let error = error {
                            print("error") }
                        else {
                            print("success")
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                            self.present(vc!, animated: true, completion: nil)
                        }
                        ref.removeAllObservers()
                    }
                }
            }
        }
    }
    
    @IBAction func rosie(_ sender: Any) {
        let ref = database.child("Leaders/Yellow")
        ref.observeSingleEvent(of: .value) { snapshot in
            if let memp = snapshot.childSnapshot(forPath: "Rosie").value as? Int{
                if len != 999 {
                    len = memp + 1
                    print(rad)
                    let userdata = ["Rosie": len]
                    ref.updateChildValues(userdata) { (error,reference) in
                        if let error = error {
                            print("error") }
                        else {
                            print("success")
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                            self.present(vc!, animated: true, completion: nil)
                        }
                        ref.removeAllObservers()
                    }
                }
            }
        }
    }
    
    @IBAction func nikesh(_ sender: Any) {
        let ref = database.child("Leaders/Individual")
        ref.observeSingleEvent(of: .value) { snapshot in
            if let memp = snapshot.childSnapshot(forPath: "Nikesh").value as? Int{
                if len != 999 {
                    len = memp + 1
                    print(rad)
                    let userdata = ["Nikesh": len]
                    ref.updateChildValues(userdata) { (error,reference) in
                        if let error = error {
                            print("error") }
                        else {
                            print("success")
                            let vc = self.storyboard?.instantiateViewController(withIdentifier: "final")
                            self.present(vc!, animated: true, completion: nil)
                        }
                        ref.removeAllObservers()
                    }
                }
            }
        }
    }
    
    // voting functions end here
}//class

