

import UIKit


protocol changeCityDelegate {
    func userEnteredName (city : String)
}



class ChangeCityViewController: UIViewController {
    
    var delegate : changeCityDelegate?
    

    @IBOutlet weak var changeCityTextField: UITextField!

    
    @IBAction func getWeatherPressed(_ sender: AnyObject) {
        
        
        
        let cityName = changeCityTextField.text!
        
        delegate?.userEnteredName(city: cityName)
        
        self.dismiss(animated: true)
        
    }
    
    

    @IBAction func backButtonPressed(_ sender: AnyObject) {
        self.dismiss(animated: true, completion: nil)
    }
    
}
