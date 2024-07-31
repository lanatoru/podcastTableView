//
//  TableViewController.swift
//  PodcastTableView
//
//  Created by Yuliya Masalkina on 31.07.2024.
//

import UIKit

class TableViewController: UITableViewController {
    
    var arrayPodcasts = [Podcast(name: "Тут такое дело", description: "Говорим о будоражащих и страшных преступлениях с долькой сарказма и за бокальчиком вина.", episodes: 138, updated: "30 июля", imagename: "тут такое дело"),
                         Podcast(name: "True Crime на диване", description: "Оу, привет всем диванным криминалистам. Это тру-крайм подкаст о маньяках, серийных убийцах и прочих неприятных личностях.", episodes: 91, updated: "30 июля", imagename: "true crime на диване"),
                         Podcast(name: "Черничный подкаст", description: "Привет, интернет! Меня зовут Маруся. Здесь я читаю страшные истории своих подписчиков", episodes: 19, updated: "24 ноября", imagename: "черничный подкаст"),
                         Podcast(name: "Ларс фон Триллер", description: "True Crime истории, и все то, с чем и как их едят. Мы отправимся во все уголки мира, окунемся в самые мрачные и жестокие истории, каждая из которой пропитана мраком, страхом и бесчеловечностью! Что же двигало человеком? Зачем он это совершил? Что чувствовал, и что скрывал? Ответы на все вопросы внутри выпусков!", episodes: 5, updated: "13 мая", imagename: "ларс фон триллер"),
                         Podcast(name: "Дневники Лоры Палны", description: "«Дневники Лоры Палны» — один из лучших тру-крайм подкастов на русском языке. Журналисты Маша Погребняк и Митя Лебедев рассказывают друг другу истории самых кровавых, резонансных и интересных серийных убийц России и всего мира. Они пытаются понять мотивы каждого преступника — и для этого опираются на психологические портреты, мнения криминалистов, воспоминания правоохранителей и свидетелей.", episodes: 179, updated: "30 июля", imagename: "дневники лоры палны"),
                         Podcast(name: "У Холмов Есть Подкаст", description: "У Холмов Есть Подкаст - первый комедийный подкаст о настоящих преступлениях и маньяках на русском языке. Мы - Тима и Валя Назаровы, брат и сестра, которые живут в разных странах и раз в неделю созваниваются по видеосвязи, чтобы детально углубиться в новый пугающий кейс, попутно разбавляя рассказ черным юмором и по возможности актуальными новостями.", episodes: 258, updated: "25 июля", imagename: "у холмов есть подкаст"),
                         Podcast(name: "CrimeCast", description: "CrimeCast - авторский тру крайм подкаст диктора под ником Пожилой Ксеноморф", episodes: 107, updated: "26 июля", imagename: "crimecast")]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return arrayPodcasts.count
    }

    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "podcastCell", for: indexPath)

        let nameLabel = cell.viewWithTag(1000) as! UILabel
        nameLabel.text = arrayPodcasts[indexPath.row].name
        
        let episodesLabel = cell.viewWithTag(1001) as! UILabel
        episodesLabel.text = String(arrayPodcasts[indexPath.row].episodes) + " episodes"
        
        let updatedLabel = cell.viewWithTag(1003) as! UILabel
        updatedLabel.text = arrayPodcasts[indexPath.row].updated
        
        let imageview = cell.viewWithTag(1002) as! UIImageView
        imageview.image = UIImage(named: arrayPodcasts[indexPath.row].imagename)

        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 120
    }
    
    override func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let detailVC = storyboard?.instantiateViewController(withIdentifier: "detailViewController") as! ViewController
        
        detailVC.podcast = arrayPodcasts[indexPath.row]
        
        navigationController?.show(detailVC, sender: self)
    }
 

    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCell.EditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
