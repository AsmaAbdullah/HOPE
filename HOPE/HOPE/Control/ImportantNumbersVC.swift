//
//  ImportantNumbersVC.swift
//  HOPE
//
//  Created by Asma on 30/12/2021.
//

import UIKit

class ImportantNumbersVC: UIViewController, UITableViewDelegate, UITableViewDataSource {
   
    var importantNumber = [PhoneNumber]()
    
//    let numbers = [
//        Support(facilityName: ["(937) Service"], phoneNumber: PhoneNumber("937")),
//        Support(facilityName: ["National Center (NCMH)"], phoneNumber: PhoneNumber("920033360")),
//        Support(facilityName: ["Atfalona Association"], phoneNumber: PhoneNumber("0555886470")),
//        Support(facilityName: ["Zahra Association"], phoneNumber: PhoneNumber("0114833652")),
//        Support(facilityName: ["Amass Association"], phoneNumber: PhoneNumber("0114415566")),
//        Support(facilityName: ["Saudi Cancer Society"], phoneNumber: PhoneNumber("0114402025")),
//        Support(facilityName: ["Al-Hayat Association"], phoneNumber: PhoneNumber("0545939786")),
//        Support(facilityName: ["Tfaul Association"], phoneNumber: PhoneNumber("0135621112")),
//        Support(facilityName: ["Tahoor Association"], phoneNumber: PhoneNumber("0163638181")),
//        Support(facilityName: ["Sanad Association"], phoneNumber: PhoneNumber("920029997")),
//        Support(facilityName: ["Basma Association"], phoneNumber: PhoneNumber("0165310022")),
//        Support(facilityName: ["King Faisal Specialist Hospital"], phoneNumber: PhoneNumber("199019")),
//    ]
    
    
    
    @IBOutlet weak var numberTableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        numberTableView.delegate = self
        numberTableView.dataSource = self
        
        setPhoneNumber()
        
        
        
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return importantNumber.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "numberCell", for: indexPath) as! NumberTableViewCell
        let data = importantNumber[indexPath.row]
        cell.titleLabel.text = data.title
        cell.numberLabel.text = data.number
        return cell
    }
    
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 85
    }
    
//    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
//        let number = numbers[indexPath.row]
//
//      UIApplication.shared.open(number.phoneNumber.url) { success in
//        if success {
//          self.isOpeningPhoneURL = true
//        } else {
//          tableView.deselectRow(at: indexPath, animated: true)
//        }
//      }
//    }
    
    fileprivate func setPhoneNumber() {
        importantNumber.append(PhoneNumber.init(title: "(937) Service".localaized, number: "937"))
        importantNumber.append(PhoneNumber.init(title: "National Center (NCMH)".localaized, number: "920033360"))
        importantNumber.append(PhoneNumber.init(title: "King Faisal Specialist Hospital".localaized, number: "199019"))
        importantNumber.append(PhoneNumber.init(title: "Saudi Cancer Society".localaized, number: "0114402025"))
        importantNumber.append(PhoneNumber.init(title: "Zahra Association".localaized, number: "0114833652"))
        importantNumber.append(PhoneNumber.init(title: "Sanad Association".localaized, number: "920029997"))
        importantNumber.append(PhoneNumber.init(title: "Basma Association".localaized, number: "0165310022"))
        importantNumber.append(PhoneNumber.init(title: "Atfalona Association".localaized, number: "0555886470"))
        importantNumber.append(PhoneNumber.init(title: "Amass Association".localaized, number: "0114415566"))
        importantNumber.append(PhoneNumber.init(title: "Al-Hayat Association".localaized, number: "0545939786"))
        importantNumber.append(PhoneNumber.init(title: "Tfaul Association".localaized, number: "0135621112"))
        importantNumber.append(PhoneNumber.init(title: "Tahoor Association".localaized, number: "0163638181"))
    }
    
}

