//
//  ViewController.swift
//  ContainerValues
//
//  Created by Don Mini on 12/20/18.
//  Copyright © 2018 Don Mag. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

	var theFieldsTVC: FieldsTVC?

	@IBOutlet weak var resultsLabel: UILabel!
	
	override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
		
		if segue.identifier == "TVCSegue" {
			
			if let vc = segue.destination as? FieldsTVC {
				theFieldsTVC = vc
			}
			
		}

	}

	@IBAction func buttonTapped(_ sender: Any) {
		
		guard let theTextFieldText = theFieldsTVC?.textField?.text else { return }
		guard let theTextViewText = theFieldsTVC?.textView?.text else { return }
		
		resultsLabel.text = "TextField: " + theTextFieldText + "\n" + "TextView: " + theTextViewText
		
	}
	
}

class FieldsTVC: UITableViewController {
	
	@IBOutlet weak var textField: UITextField!
	@IBOutlet weak var textView: UITextView!
	
	@IBAction func doneEditingTapped(_ sender: Any) {
		self.view.endEditing(true)
	}
	
}
