import UIKit

class ViewController: UIViewController {
    
    
   
    @IBOutlet weak var BilLField: UITextField!
    @IBOutlet weak var TipLabel: UILabel!
    @IBOutlet weak var TotalLabel: UILabel!
    
    @IBOutlet weak var percentageLabelf: UISegmentedControl!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    @IBAction func onTap(_ sender: Any) {
       
        view.endEditing(true)
    }
    @IBAction func TipCalc(_ sender: Any) {
        
        let bill = Double(BilLField.text!) ?? 0
        
        let percentages = [0.1, 0.15, 0.2]
        let tip = bill * percentages[percentageLabelf.selectedSegmentIndex]
        let totalBill = tip + bill
        
        TipLabel.text = String(format: "$%.2f",tip)
        TotalLabel.text = String(format: "$%.2f",totalBill)

    }
}

