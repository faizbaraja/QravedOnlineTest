//
//  VCDiscover.swift
//  QravedOnlineTest
//
//  Created by Faiz Umar Baraja on 24/12/2017.
//  Copyright © 2017 FaizBarajaApps. All rights reserved.
//

import UIKit

class VCDiscover: UIViewController {
    @IBOutlet var navigationBar:NavigationBarPrimary!
    @IBOutlet var viewContainerTrendingGroups:UIView?
    @IBOutlet var viewContainerInterestingUser:UIView?
    @IBOutlet var viewContainerPersonalizedContent:UIView?
    
    var trendingGroupsViewController:TrendingGroupViewController?
    var interestingUsersViewController:InterestingUsersViewController?
    var personalizedContentViewController:PersonalizedContentViewController?
    func initializeNavigationBar(){
        navigationBar?.navigationBarItem.title = "Discover"
        navigationBar?.leftButton.target = self
        navigationBar?.leftButton.action = #selector(actionBackToMain)
    }
    
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        self.initializeNavigationBar()
        setupTrendingGroupViewController()
        setupInterestingUsersViewController()
        setupPersonalizedContentViewController()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @objc func actionBackToMain(sender:UIBarButtonItem){
        self.navigationController?.popViewController(animated: true)
    }
    
    func setupTrendingGroupViewController(){
        trendingGroupsViewController = TrendingGroupViewController(nibName: "TrendingGroupViewController", bundle: nil)
        self.addChildViewController(trendingGroupsViewController!)
        viewContainerTrendingGroups?.addSubview(trendingGroupsViewController!.view)
        trendingGroupsViewController?.view.frame = viewContainerTrendingGroups!.bounds
        trendingGroupsViewController?.view.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        trendingGroupsViewController?.didMove(toParentViewController: self)
    }
    
    func setupInterestingUsersViewController(){
        interestingUsersViewController = InterestingUsersViewController(nibName: "InterestingUsersViewController", bundle: nil)
        self.addChildViewController(interestingUsersViewController!)
        viewContainerInterestingUser?.addSubview(interestingUsersViewController!.view)
        interestingUsersViewController?.view.frame = viewContainerInterestingUser!.bounds
        interestingUsersViewController?.view.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        interestingUsersViewController?.didMove(toParentViewController: self)
    }
    
    func setupPersonalizedContentViewController(){
        personalizedContentViewController = PersonalizedContentViewController(nibName: "PersonalizedContentViewController", bundle: nil)
        self.addChildViewController(personalizedContentViewController!)
        viewContainerPersonalizedContent?.addSubview(personalizedContentViewController!.view)
        personalizedContentViewController?.view.frame = viewContainerPersonalizedContent!.bounds
        personalizedContentViewController?.view.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        personalizedContentViewController?.didMove(toParentViewController: self)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
