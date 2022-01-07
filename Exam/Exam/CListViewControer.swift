//
//  CListViewControer.swift
//  Exam
//
//  Created by Ivaylo Atovski on 7.01.22.
//

import UIKit

class CListViewControler: UIViewController {

	@IBOutlet weak var eventTable: UITableView!
	let model: Model = Model()
	
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		title = "Calentad List"
		eventTable.dataSource = self
		eventTable.rowHeight = UITableView.automaticDimension
	}
	
	
}


extension CListViewControler:UITableViewDataSource{
	func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
		model.month.events.count
	}
	
	func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
	
		var myCell = EventTableCell()
		
		if let reCell = eventTable.dequeueReusableCell(withIdentifier: "EventCell", for: indexPath) as? EventTableCell{
			myCell = reCell
		}
		
		myCell.dateLabel.text = model.month.events[indexPath.row].date
		myCell.dateLabel.autoresizesSubviews = true
		myCell.titleLabel.text = model.month.events[indexPath.row].title
		myCell.titleLabel.autoresizesSubviews = true
		myCell.descriptionLabel.text = model.month.events[indexPath.row].notes
		myCell.descriptionLabel.autoresizesSubviews = true
		myCell.timeLabel.text = String( model.month.events[indexPath.row].time)
		myCell.timeLabel.autoresizesSubviews = true
		return myCell
	}
	
	
}
