//
//  ViewController.swift
//  AssignmentSevenTableView
//
//  Created by karma on 3/6/22.
//

import UIKit

class ViewController: UIViewController {

    let list = ["ram","sham","gansham","ramesh","prabesh"]
    
    
    // creating the data in array of type video
    var animal: [Animal] = []
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // create the array
        animal = createAnimals()
        
        // assigning delegate
        tableView.delegate = self
        tableView.dataSource = self
        
    }
    
    
    
    // function to create array
    func createAnimals() -> [Animal]{
        var tempAnimal: [Animal] = []
        let animal1 = Animal(image: UIImage(named: "bear")!, title: "Bear")
        let animal2 = Animal(image: UIImage(named: "cat")!, title: "Cat")
        let animal3 = Animal(image: UIImage(named: "dog")!, title: "Dog")
        let animal4 = Animal(image: UIImage(named: "kangaroo")!, title: "Kangaroo")
        let animal5 = Animal(image: UIImage(named: "squirel")!, title: "Squirel")
        
        tempAnimal.append(animal1)
        tempAnimal.append(animal2)
        tempAnimal.append(animal3)
        tempAnimal.append(animal4)
        tempAnimal.append(animal5)
        
        return tempAnimal
    }


}

extension ViewController: UITableViewDelegate{
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("tapped me")
        if let destVC = storyboard?.instantiateViewController(withIdentifier: "DetailVC") as? DetailVC{
            destVC.img = animal[indexPath.row].image
            destVC.lblName = animal[indexPath.row].title
            print("value of label in table view: \(animal[indexPath.row].title)")
            self.navigationController?.pushViewController(destVC, animated: true)
        }
    }
}

extension ViewController: UITableViewDataSource{
    // we have to pass minimum 2 functions
    
    // first one is number of rows in section
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return animal.count    }
    
    // cell for row which shows the data in the table view
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        // store the individuals rows in a const so we can call the setter func later on
        let animals = animal[indexPath.row]
        
        // this is to make resuse of the rendered cell template and only replace the data instead of rendering all new datas in new cell again and again.
        let cell = tableView.dequeueReusableCell(withIdentifier: "animalCell",for: indexPath) as! ViewCell
        
        cell.setAnimal(animal: animals)
        return cell
    }
    
    // we can also define how many sections we want
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    
}
