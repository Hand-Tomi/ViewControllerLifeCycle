//
//  DetailViewController.swift
//  ViewController-LifeCycle
//
//  Created by NZK180824A on 2019/07/07.
//  Copyright © 2019 semyeong son. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {
    
    // optional, once
    override func awakeFromNib() {
        super.awakeFromNib()
        // 화면이 연결된 시점
        // 호출이 안될 수도 있다. storyboad사용안하고 만들었을때 호출이 되지 않는다.
        // let testVC = UIViewController() 이렇게 코드로 만들었을때는 호출되지 않는다.
        // 화면이 아직
        print("awakeFromNib")
    }
    
    // once
    override func viewDidLoad() {
        super.viewDidLoad()
        // 화면이 나올 준비가 된 상태
        print("viewDidLoad")
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(animated)
        // 화면이 가려졌다가 나타날때도 나온다.
        // 화면이 나오기 직전의 상태
        print("viewWillAppear")
    }
    
    override func viewDidAppear(_ animated: Bool) {
        super.viewDidAppear(animated)
        // 화면이 표시가 된고 난 상태에 호출된다.
        print("viewDidAppear")
    }
    
    
    //화면이 사라지는 시점
    override func viewWillDisappear(_ animated: Bool) {
        super.viewWillDisappear(animated)
        print("viewWillDisappear")
    }
    
    override func viewDidDisappear(_ animated: Bool) {
        super.viewDidDisappear(animated)
        print("viewDidDisappear")
    }
    
    deinit {
        // 최종적으로 이 클래스가 메모리가 해제 되었을때
        // 이것이 호출되지 않으면 메모리가 해제 되지 않기때문에 확인이 필요하다.
        print("deinit")
    }
    
}
