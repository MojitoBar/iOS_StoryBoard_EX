//
//  DetailViewController.swift
//  BountyList
//
//  Created by judongseok on 2021/05/18.
//

import UIKit

class DetailViewController: UIViewController {

    // MVVM
    
    // Model
    // - BountyInfo
    // > BountyInfo 만들자
    
    // View
    // - imgView, nameLabel, bountyLabel
    // > view들은 viewModel를 통해서 구성되기 ?
    
    // ViewModel
    // - DetailViewModel
    // > 뷰레이어에서 필요한 메서드 만들기
    // > 모델 가지고 있기 ,, BountyInfo 들
    
    @IBOutlet weak var imgView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var bountyLabel: UILabel!
    
    // 옵셔널 타입
    var bountyInfo: BountyInfo?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        updateUI()
    }
    
    func updateUI(){
        if let bountyInfo = self.bountyInfo{
            imgView.image = bountyInfo.image
            nameLabel.text = bountyInfo.name
            bountyLabel.text = "\(bountyInfo.bounty)"
        }
    }
    
    
    @IBAction func close(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
}
