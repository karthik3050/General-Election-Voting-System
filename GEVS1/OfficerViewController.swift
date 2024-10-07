
import UIKit
import Firebase
import FirebaseDatabase
var temp = 0
private let database = Database.database(url: "https://gevs1-3ba2b-default-rtdb.europe-west1.firebasedatabase.app").reference()
class OfficerViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()}
    
    @IBOutlet weak var caltxt: UILabel!
    @IBOutlet weak var rodtxt: UILabel!
    @IBOutlet weak var lentxt: UILabel!
    @IBOutlet weak var buttxt: UILabel!
    @IBOutlet weak var eritxt: UILabel!
    @IBOutlet weak var sujtxt: UILabel!
    @IBOutlet weak var martxt: UILabel!
    @IBOutlet weak var motxt: UILabel!
    @IBOutlet weak var pettxt: UILabel!
    @IBOutlet weak var luktxt: UILabel!
    @IBOutlet weak var jantxt: UILabel!
    @IBOutlet weak var paitxt: UILabel!
    @IBOutlet weak var sontxt: UILabel!
    @IBOutlet weak var pintxt: UILabel!
    @IBOutlet weak var gittxt: UILabel!
    @IBOutlet weak var hamtxt: UILabel!
    @IBOutlet weak var nabtxt: UILabel!
    @IBOutlet weak var sattxt: UILabel!
    @IBOutlet weak var rostxt: UILabel!
    @IBOutlet weak var niktxt: UILabel!
    
    @IBAction func back(_ sender: Any) {
        let vc = self.storyboard?.instantiateViewController(withIdentifier: "main")
        self.present(vc!,animated: true, completion: nil)
    }
    
    // election start
    @IBAction func start(_ sender: Any) {
        let ref = database.child("Count")
        temp = 1
        let userdata = [
            "start": temp]
        ref.child("Scount").setValue(userdata)
        let alertController = UIAlertController(
                   title: "Warning",
                   message: "You are about to start the Election",
                   preferredStyle: .alert
               )
               let okAction = UIAlertAction(
                   title: "OK",
                   style: .default,
                   handler: nil
                  )
               alertController.addAction(okAction)
        self.present(alertController, animated: true, completion: nil)
   // election end
  // live stats start
        let calref = database.child("Leaders/Blue/Callum")
        calref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.caltxt.text = "\(calt)"
            }
        }
        
        
        let acalref = database.child("Leaders/Red/Rodney")
        acalref.observe(.value) { snaphot in
            if let acalt = snaphot.value as? Int
            {
                self.rodtxt.text = "\(acalt)"
            }
        }
        
        let bcalref = database.child("Leaders/Yellow/Lenus")
        bcalref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.lentxt.text = "\(calt)"
            }
        }
        let ccalref = database.child("Leaders/Individual/Buta")
        ccalref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.buttxt.text = "\(calt)"
            }
        }
        let dcalref = database.child("Leaders/Blue/Eric")
        dcalref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.eritxt.text = "\(calt)"
            }
        }
        let ecalref = database.child("Leaders/Red/Sujith")
        ecalref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.sujtxt.text = "\(calt)"
            }
        }
        let fcalref = database.child("Leaders/Yellow/Maran")
        fcalref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.martxt.text = "\(calt)"
            }
        }
        let gcalref = database.child("Leaders/Individual/Mo")
        gcalref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.motxt.text = "\(calt)"
            }
        }
        let hcalref = database.child("Leaders/Blue/Petra")
        hcalref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.pettxt.text = "\(calt)"
            }
        }
        let icalref = database.child("Leaders/Red/Lukshi")
        icalref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.luktxt.text = "\(calt)"
            }
        }
        let jcalref = database.child("Leaders/Yellow/Jan")
        jcalref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.jantxt.text = "\(calt)"
            }
        }
        let kcalref = database.child("Leaders/Individual/Paige")
        kcalref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.paitxt.text = "\(calt)"
            }
        }
        let lcalref = database.child("Leaders/Blue/Sonal")
        lcalref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.sontxt.text = "\(calt)"
            }
        }
        let mcalref = database.child("Leaders/Red/Pinak")
        mcalref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.pintxt.text = "\(calt)"
            }
        }
        let ncalref = database.child("Leaders/Yellow/Gita")
        ncalref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.gittxt.text = "\(calt)"
            }
        }
        let ocalref = database.child("Leaders/Individual/Hamida")
        ocalref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.hamtxt.text = "\(calt)"
            }
        }
        let pcalref = database.child("Leaders/Blue/Nabil")
        pcalref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.nabtxt.text = "\(calt)"
            }
        }
        let qcalref = database.child("Leaders/Red/Satpal")
        qcalref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.sattxt.text = "\(calt)"
            }
        }
        let rcalref = database.child("Leaders/Yellow/Rosie")
        rcalref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.rostxt.text = "\(calt)"
            }
        }
        let scalref = database.child("Leaders/Individual/Nikesh")
        scalref.observe(.value) { snaphot in
            if let calt = snaphot.value as? Int
            {
                self.niktxt.text = "\(calt)"
            }
        }
    }
    //live stats end
    
    
    @IBOutlet weak var shawin: UILabel!
    @IBOutlet weak var nkunwin: UILabel!
    @IBOutlet weak var weswin: UILabel!
    @IBOutlet weak var nabwin: UILabel!
    @IBOutlet weak var newwin: UILabel!
    
    
    
    
    //election stop start
    @IBAction func stop(_ sender: Any) {
        let href = database.child("Count")
        temp = 0
        let huserdata = [
            "start": temp]
        href.child("Scount").setValue(huserdata)
        let balertController = UIAlertController(
                   title: "Warning",
                   message: "You are about to stop the Election",
                   preferredStyle: .alert
               )
               let okAction = UIAlertAction(
                   title: "OK",
                   style: .default,
                   handler: nil
                  )
               balertController.addAction(okAction)
        self.present(balertController, animated: true, completion: nil)
    //election stop end
        // Shangri-la town Winner window
        var calw = caltxt.text
        var rodw = rodtxt.text
        var lenw = lentxt.text
        var butw = buttxt.text
        if let calwInt = Int(calw ?? ""),
           let rodwInt = Int(rodw ?? ""),
           let lenwInt = Int(lenw ?? ""),
           let butwInt = Int(butw ?? "") {
            var highestVariable: String = ""
            var highestValue = Int.min
            if calwInt > highestValue {
                highestValue = calwInt
                highestVariable = "Callum"
                self.shawin.backgroundColor = UIColor.blue
            }
            if rodwInt > highestValue {
                highestValue = rodwInt
                highestVariable = "Rodney"
                self.shawin.backgroundColor = UIColor.red
            }
            if lenwInt > highestValue {
                highestValue = lenwInt
                highestVariable = "Lenus"
                self.shawin.backgroundColor = UIColor.yellow
            }
            if butwInt > highestValue {
                highestVariable = "Buta"
                self.shawin.backgroundColor = UIColor.white
            }
            print("calwInt: \(calwInt), rodwInt: \(rodwInt), lenwInt: \(lenwInt), butwInt: \(butwInt)")
            print("The variable with the highest number is: \(highestVariable)")
            if highestValue != 0 {
                shawin.text = highestVariable
            }
            else {
                shawin.text = ""
                shawin.backgroundColor = UIColor.orange
            }
        } else {
            print("One or more inputs is not a valid integer.")
        }
            // end of Shangrila winner window
        
        // start of N-kunlun winner window
        var eriw = eritxt.text
        var sujw = sujtxt.text
        var marw = martxt.text
        var mow = motxt.text
        if let eriwInt = Int(eriw ?? ""),
           let sujwInt = Int(sujw ?? ""),
           let marwInt = Int(marw ?? ""),
           let mowInt = Int(mow ?? "") {
            var highestVariable: String = ""
            var highestValue = Int.min
            if eriwInt > highestValue {
                highestValue = eriwInt
                highestVariable = "Eric"
                self.nkunwin.backgroundColor = UIColor.blue
            }
            if sujwInt > highestValue {
                highestValue = sujwInt
                highestVariable = "Sujith"
                self.nkunwin.backgroundColor = UIColor.red
            }
            if marwInt > highestValue {
                highestValue = marwInt
                highestVariable = "Maran"
                self.nkunwin.backgroundColor = UIColor.yellow
            }
            if mowInt > highestValue {
                highestVariable = "Mo"
                self.nkunwin.backgroundColor = UIColor.white
            }
            print("The variable with the highest number is: \(highestVariable)")
            if highestValue != 0 {
                nkunwin.text = highestVariable
            }
            else {
                nkunwin.text = ""
                nkunwin.backgroundColor = UIColor.orange
            }
            }
            else {
            print("One or more inputs is not a valid integer.")
        }
        //end of nkunlun winner window
        
        //start of w-shangrila winner window
        var petw = pettxt.text
        var lukw = luktxt.text
        var janw = jantxt.text
        var paiw = paitxt.text
        if let petwInt = Int(petw ?? ""),
           let lukwInt = Int(lukw ?? ""),
           let janwInt = Int(janw ?? ""),
           let paiwInt = Int(paiw ?? "") {
            var highestVariable: String = ""
            var highestValue = Int.min
            if petwInt > highestValue {
                highestValue = petwInt
                highestVariable = "Petra"
                self.weswin.backgroundColor = UIColor.blue
            }
            if lukwInt > highestValue {
                highestValue = lukwInt
                highestVariable = "Lukshi"
                self.weswin.backgroundColor = UIColor.red
            }
            if janwInt > highestValue {
                highestValue = janwInt
                highestVariable = "Jan"
                self.weswin.backgroundColor = UIColor.yellow
            }
            if paiwInt > highestValue {
                highestVariable = "Paige"
                self.weswin.backgroundColor = UIColor.white
            }
            print("The variable with the highest number is: \(highestVariable)")
            if highestValue != 0
            {
                weswin.text = highestVariable
            }
            else {
                weswin.text = ""
                weswin.backgroundColor = UIColor.orange
            }
        } else {
            print("One or more inputs is not a valid integer.")
        }
       // end of w-shangrila winner window
        
        //start of naboo winner window
        
        var sonw = sontxt.text
        var pinw = pintxt.text
        var gitw = gittxt.text
        var hamw = hamtxt.text
        if let sonwInt = Int(sonw ?? ""),
           let pinwInt = Int(pinw ?? ""),
           let gitwInt = Int(gitw ?? ""),
           let hamwInt = Int(hamw ?? "") {
            var highestVariable: String = ""
            var highestValue = Int.min
            if sonwInt > highestValue {
                highestValue = sonwInt
                highestVariable = "Sonal"
                self.nabwin.backgroundColor = UIColor.blue
            }
            if pinwInt > highestValue {
                highestValue = pinwInt
                highestVariable = "Pinak"
                self.nabwin.backgroundColor = UIColor.red
            }
            if gitwInt > highestValue {
                highestValue = gitwInt
                highestVariable = "Gita"
                self.nabwin.backgroundColor = UIColor.yellow
            }
            if hamwInt > highestValue {
                highestVariable = "Hamida"
                self.nabwin.backgroundColor = UIColor.white
            }
            print("The variable with the highest number is: \(highestVariable)")
            if highestValue != 0
            {
                nabwin.text = highestVariable
            }
            else {
                nabwin.text = ""
                nabwin.backgroundColor = UIColor.orange
            }
        } else {
            print("One or more inputs is not a valid integer.")
        }
       // end of naboo winner window
        
        // start of felucia winner window
        var nabw = nabtxt.text
        var satw = sattxt.text
        var rosw = rostxt.text
        var nikw = niktxt.text
        if let nabwInt = Int(nabw ?? ""),
           let satwInt = Int(satw ?? ""),
           let roswInt = Int(rosw ?? ""),
           let nikwInt = Int(nikw ?? "") {
            var highestVariable: String = ""
            var highestValue = Int.min
            if nabwInt > highestValue {
                highestValue = nabwInt
                highestVariable = "Nabil"
                self.newwin.backgroundColor = UIColor.blue
            }
            if satwInt > highestValue {
                highestValue = satwInt
                highestVariable = "Satpal"
                self.newwin.backgroundColor = UIColor.red
            }
            if roswInt > highestValue {
                highestValue = roswInt
                highestVariable = "Rosie"
                self.newwin.backgroundColor = UIColor.yellow
            }
            if nikwInt > highestValue {
                highestVariable = "Nikesh"
                self.newwin.backgroundColor = UIColor.white
            }
            print("The variable with the highest number is: \(highestVariable)")
            if highestValue != 0
            {
                newwin.text = highestVariable
            }
            else {
                newwin.text = ""
                newwin.backgroundColor = UIColor.orange
            }
        } else {
            print("One or more inputs is not a valid integer.")
        }
        // end of felucia winner window
        
        
        
        
    
        
    }
}
