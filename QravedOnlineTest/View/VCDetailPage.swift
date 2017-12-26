//
//  VCDetailPage.swift
//  QravedOnlineTest
//
//  Created by Faiz Umar Baraja on 24/12/2017.
//  Copyright © 2017 FaizBarajaApps. All rights reserved.
//

import UIKit

class VCDetailPage: UIViewController {

    @IBOutlet var navigationBarDetail:NavigationBarTransparent!
    @IBOutlet var scrollViewDetail:UIScrollView?
    @IBOutlet var stackViewDetail:UIStackView?
    
    @IBOutlet var viewContainerMovieBanner:UIView?
    @IBOutlet var viewContainerMovieRatingAward:UIView?
    @IBOutlet var viewContainerMovieCast:UIView?
    
    var movieTitleViewController:MovieTitleViewController?
    var movieCastViewController:MovieCastViewController?
    var moviewRatingAwardsViewController:MoviewRatingAwardsViewController?
    override func viewWillAppear(_ animated: Bool) {
        self.navigationController?.setNavigationBarHidden(true, animated: true)
        setupMovieTitleViewController()
        setupMovieCastViewController()
        setupMovieRatingAwardsViewController()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    
    override func viewDidLayoutSubviews() {
        scrollViewDetail?.contentSize = CGSize(width: (stackViewDetail?.frame.size.width)!, height: (stackViewDetail?.frame.size.height)!)
    }
    
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func setupMovieTitleViewController(){
        movieTitleViewController = MovieTitleViewController(nibName: "MovieTitleViewController", bundle: nil)
        self.addChildViewController(movieTitleViewController!)
        viewContainerMovieBanner?.addSubview(movieTitleViewController!.view)
        movieTitleViewController?.view.frame = viewContainerMovieBanner!.bounds
        movieTitleViewController?.view.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        movieTitleViewController?.didMove(toParentViewController: self)
    }
    
    func setupMovieCastViewController(){
        movieCastViewController = MovieCastViewController(nibName: "MovieCastViewController", bundle: nil)
        self.addChildViewController(movieCastViewController!)
        viewContainerMovieCast?.addSubview(movieCastViewController!.view)
        movieCastViewController?.view.frame = viewContainerMovieCast!.bounds
        movieCastViewController?.view.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        movieCastViewController?.didMove(toParentViewController: self)
    }
    
    func setupMovieRatingAwardsViewController(){
        moviewRatingAwardsViewController = MoviewRatingAwardsViewController(nibName: "MoviewRatingAwardsViewController", bundle: nil)
        self.addChildViewController(moviewRatingAwardsViewController!)
        viewContainerMovieRatingAward?.addSubview(moviewRatingAwardsViewController!.view)
        moviewRatingAwardsViewController?.view.frame = viewContainerMovieRatingAward!.bounds
        moviewRatingAwardsViewController?.view.autoresizingMask = [.flexibleWidth,.flexibleHeight]
        moviewRatingAwardsViewController?.didMove(toParentViewController: self)
    }
    
    @IBAction func actionPopViewBack(sender:UIBarButtonItem){
        self.navigationController?.popViewController(animated: true)
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
