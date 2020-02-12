//
//  ViewController.swift
//  QuizzesApp
//
//  Created by Thiện Tùng on 2/10/20.
//  Copyright © 2020 tung. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    let quizTitle: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.text = "TRẮC NGHIỆM"
        label.textAlignment = .center
        label.font = .boldSystemFont(ofSize: 30)
        
        return label
    } ()
    let collectionView: UICollectionView = {
        
        let flowLayout = UICollectionViewFlowLayout()
        let collectionView = UICollectionView(frame: .zero, collectionViewLayout: flowLayout)
        collectionView.translatesAutoresizingMaskIntoConstraints = false
        collectionView.backgroundColor = UIColor(red:0.29, green:0.75, blue:0.65, alpha:1.0)
        
        return collectionView
    } ()
    
    var test: [Test] = []
    var questions: [Question] = []
    var answer: [Answer] = []
    
    var datas: [Test] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
        datas = fakeData()
        setupLayout()
        configCollectionView()
        
    }
    
    func fakeData() -> [Test] {
        let question1 = Question(question: "Hệ thống bộ nhớ máy tính bao gồm",
            answer: [Answer(answer: "A: Bộ nhớ trong", isSelected: false),
                     Answer(answer: "B: Bộ nhớ ngoài", isSelected: false),
                     Answer(answer: "C: Cả 2 đáp án trên", isSelected: false)],
            indexRightAnswer: 2)
        let question2 = Question(question: "Trong mạng máy tính, Share có ý nghĩa gì ?",
        answer: [Answer(answer: "A: Chia sẻ tài nguyên", isSelected: false),
                 Answer(answer: "B: Tên của một thiết bị mạng", isSelected: false),
                 Answer(answer: "C: Đáp án sai", isSelected: false)],
        indexRightAnswer: 0)
        let question3 = Question(question: "Cách xoá một tệp tin hay một thư mục ?",
        answer: [Answer(answer: "A: Chọn đối tượng, Shift+Delete", isSelected: false),
                 Answer(answer: "B: Đáp án sai", isSelected: false),
                 Answer(answer: "C: Đáp án sai", isSelected: false)],
        indexRightAnswer: 0)
        let question4 = Question(question: "Thiết bị nào sau đây dùng để kết nối mạng ?",
        answer: [Answer(answer: "A: RAM", isSelected: false),
                 Answer(answer: "B: Router", isSelected: false),
                 Answer(answer: "C: CPU", isSelected: false)],
        indexRightAnswer: 1)
        let question5 = Question(question: "Dịch vụ lưu trữ đám mây của Microsoft là gì ?",
        answer: [Answer(answer: "A: Icloud", isSelected: false),
                 Answer(answer: "B: GoogleDrive", isSelected: false),
                 Answer(answer: "C: OneDriver", isSelected: false)],
        indexRightAnswer: 2)
        let question6 = Question(question: "Danh sách các mục chọn trong thực đơn gọi là ?",
        answer: [Answer(answer: "A: Menu pad", isSelected: false),
                 Answer(answer: "B: Menu bar", isSelected: false),
                 Answer(answer: "C: Tất cả đều sai", isSelected: false)],
        indexRightAnswer: 1)
        let question7 = Question(question: "Công dụng của Print Screen",
        answer: [Answer(answer: "A: Restart thiết bị", isSelected: false),
                 Answer(answer: "B: Tắt máy", isSelected: false),
                 Answer(answer: "C: Chụp màn hình", isSelected: false)],
        indexRightAnswer: 2)
        let question8 = Question(question: "Công dụng của tổ hợp Ctrl + S",
        answer: [Answer(answer: "A: Lưu", isSelected: false),
                 Answer(answer: "B: Xoá", isSelected: false),
                 Answer(answer: "C: Sửa", isSelected: false)],
        indexRightAnswer: 0)
        let question9 = Question(question: "Hàm tìm kiếm trong Excel: ",
        answer: [Answer(answer: "A: If", isSelected: false),
                 Answer(answer: "B: Sum", isSelected: false),
                 Answer(answer: "C: Vlookup", isSelected: false)],
        indexRightAnswer: 2)
        let question10 = Question(question: "1 + 1 = ?",
        answer: [Answer(answer: "1", isSelected: false),
                 Answer(answer: "2", isSelected: false),
                 Answer(answer: "3", isSelected: false)],
        indexRightAnswer: 1)
        let question11 = Question(question: "2 + 1 = ?",
        answer: [Answer(answer: "0", isSelected: false),
                 Answer(answer: "3", isSelected: false),
                 Answer(answer: "5", isSelected: false)],
        indexRightAnswer: 1)
       let question12 = Question(question: "2 x 3 = ?",
       answer: [Answer(answer: "6", isSelected: false),
                Answer(answer: "5", isSelected: false),
                Answer(answer: "10", isSelected: false)],
       indexRightAnswer: 0)
        //Tạo bộ đề test
        
        let test1 = Test(subject: "Linh tinh", question: [question1, question2, question3])
        let test2 = Test(subject: "Luyên thuyên", question: [question4, question4, question6])
        let test3 = Test(subject: "Easy", question: [question7, question8, question9])
        let test4 = Test(subject: "Nhìn phát biết đáp án luôn", question: [question10, question11, question12])
        
        //tạo mảng dữ liệu test
        
        let tests = [test1, test2, test3, test4]
        return tests
       
    }
    
    func setupLayout() {
        view.backgroundColor = UIColor(red:0.29, green:0.75, blue:0.65, alpha:1.0)
        //Title
        view.addSubview(quizTitle)
        quizTitle.topAnchor.constraint(equalTo: view.topAnchor, constant: 88).isActive = true
        quizTitle.centerXAnchor.constraint(equalTo: view.centerXAnchor, constant: 0).isActive = true
        
        //CollectionView
        view.addSubview(collectionView)
        collectionView.topAnchor.constraint(equalTo: quizTitle.bottomAnchor, constant: 64).isActive = true
        collectionView.leftAnchor.constraint(equalTo: view.leftAnchor, constant: 10).isActive = true
        collectionView.rightAnchor.constraint(equalTo: view.rightAnchor, constant: -10).isActive = true
        collectionView.bottomAnchor.constraint(equalTo: view.bottomAnchor, constant: 0).isActive = true
        
        
    }
    
    func configCollectionView() {
        collectionView.dataSource = self
        collectionView.delegate = self
        
        collectionView.register(UINib(nibName: "CollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "cell")
    }

}

extension ViewController: UICollectionViewDelegate, UICollectionViewDataSource, UICollectionViewDelegateFlowLayout {
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return datas.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! CollectionViewCell
        cell.subjectLabel.text = datas[indexPath.row].subject
        cell.backgroundColor = .white
        cell.layer.cornerRadius = 15
        return cell
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, sizeForItemAt indexPath: IndexPath) -> CGSize {
        
        let size = ((collectionView.frame.size.width - 14) / 2)
        return CGSize(width: size, height: size)
    
    }
    
    //miniumLineSpacingForSectionAt
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumLineSpacingForSectionAt section: Int) -> CGFloat {
        return 10
        
    }
    
    func collectionView(_ collectionView: UICollectionView, layout collectionViewLayout: UICollectionViewLayout, minimumInteritemSpacingForSectionAt section: Int) -> CGFloat {
        return 10
    }
    
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        let detailVC = DetailViewController()
        let navigation = UINavigationController(rootViewController: detailVC)
        navigation.modalPresentationStyle = .fullScreen
        detailVC.data = datas[indexPath.row]
        present(navigation, animated: true, completion: nil)
    }
    
    
    
}

