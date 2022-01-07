//
//  CalendarViewControler.swift
//  Exam
//
//  Created by ivaylo Atovski on 7.01.22.
//

import UIKit

class CalendarViewControler: UIViewController {

	@IBOutlet weak var calendarView: UICollectionView!
	override func viewDidLoad() {
		super.viewDidLoad()
		// Do any additional setup after loading the view.
		title = "Calendar"
	}


}

extension CalendarViewControler : UICollectionViewDataSource{
	func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
		return 31 // dnite
	}
	
	func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
		var myCell = CVewCell()
		
		if let cell = calendarView.dequeueReusableCell(withReuseIdentifier: "day", for: indexPath) as? CVewCell{
			myCell = cell
		}
		
		return myCell
	}
	
	
}
