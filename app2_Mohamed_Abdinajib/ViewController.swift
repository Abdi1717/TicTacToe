//
//  ViewController.swift
//  app2_Mohamed_Abdinajib
//
//  Created by Abdinajib Mohamed on 2/5/21.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        gameStatus.text = "Player 1's turn"
        
    }
    
    var winingCombination = [[1, 2, 3], [4, 5, 6], [7, 8, 9], [1, 4, 7], [2, 5, 8], [3, 6, 9], [3, 5, 7], [1, 5, 9]]
    var xPlacement: [Int] = []
    var oPlacement: [Int] = []
    var gameState = -1
    var combinationWinner = 0
    var xPlayerScore = 0
    var oPlayerScore = 0
    var tie = false
    var stopGame = false
    @IBOutlet weak var Player1Score: UILabel!
    
    @IBOutlet weak var Player2Score: UILabel!
    @IBOutlet weak var button9: UIButton!
    @IBOutlet weak var button8: UIButton!
    @IBOutlet weak var button7: UIButton!
    @IBOutlet weak var button6: UIButton!
    @IBOutlet weak var button5: UIButton!
    @IBOutlet weak var button4: UIButton!
    @IBOutlet weak var button3: UIButton!
    @IBOutlet weak var button2: UIButton!
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var gameStatus: UILabel!

    @IBAction func pressed(_ sender: UIButton) {
        //let state =  -1*gameState
        var placeHere = true
        for val in xPlacement {
            if sender.tag == val {
                placeHere = false
            }
        }
        for val in oPlacement {
            if sender.tag == val {
                placeHere = false
            }
        }
        if placeHere == true && stopGame == false{
            gameState = -1*gameState
            
        
        switch gameState {
        case 1 :
            sender.setImage(UIImage(named: "mark-x"), for: .normal)
            xPlacement.append(sender.tag)
          
            gameStatus.text = "Player 2's turn"
        
            Player_2.text = "Player 2 Score!"
            
            break;
        case -1 :
            sender.setImage(UIImage(named: "mark-o"), for: .normal)
            oPlacement.append(sender.tag)
            gameStatus.text = "Player 1's turn"

            break;
        
        default:
            
        break;
        }
        
      }
        
        
        
        
        for x in xPlacement {
        if x == 1 {
            for y in xPlacement {
                    if y == 2 {

                        for z in xPlacement {
                        if z == 3 {
                        combinationWinner = 1
                            xPlayerScore+=1
                            Player1Score.text = "\(xPlayerScore)"
                            gameStatus.textColor = .green
                            gameStatus.text = "Player 1 wins"
                            stopGame = true
                            button1.backgroundColor = .yellow
                            button3.backgroundColor = .yellow
                            button2.backgroundColor = .yellow
                        }

                        }


                    }
                    else if y == 5 {

                        for z in xPlacement {
                                if z == 9 {
                                combinationWinner = 8
                                    xPlayerScore+=1
                                    gameStatus.textColor = .green
                                    gameStatus.text = "Player 1 wins"
                                    Player1Score.text = "\(xPlayerScore)"
                                    stopGame = true
                                    button1.backgroundColor = .yellow
                                    button5.backgroundColor = .yellow
                                    button9.backgroundColor = .yellow
                                }

                            }

                    }
                    else if y == 4 {
                        for z in xPlacement {
                            if z == 7 {
                            combinationWinner = 4
                                xPlayerScore+=1
                                gameStatus.textColor = .green
                                gameStatus.text = "Player 1 wins"
                                stopGame = true
                                Player1Score.text = "\(xPlayerScore)"
                                button1.backgroundColor = .yellow
                                button4.backgroundColor = .yellow
                                button7.backgroundColor = .yellow
                            }

                            }


                    }


            }

        }



        if  x == 3 {
          for y in xPlacement {
                if y == 6 {

                    for z in xPlacement {
                    if z == 9 {
                    combinationWinner = 6
                        xPlayerScore+=1
                        gameStatus.textColor = .green
                        gameStatus.text = "Player 1 wins"
                        stopGame = true
                        Player1Score.text = "\(xPlayerScore)"
                        button3.backgroundColor = .yellow
                        button6.backgroundColor = .yellow
                        button9.backgroundColor = .yellow
                    }

                    }


                }
                else if y == 5 {

                    for z in xPlacement {
                            if z == 7 {
                            combinationWinner = 7
                                xPlayerScore+=1
                                gameStatus.textColor = .green
                                gameStatus.text = "Player 1 wins"
                                stopGame = true
                                Player1Score.text = "\(xPlayerScore)"
                                button1.backgroundColor = .yellow
                                button5.backgroundColor = .yellow
                                button7.backgroundColor = .yellow
                            }

                        }

                }
        }



        }



        if  x == 2 {
          for y in xPlacement {
                if y == 5 {

                    for z in xPlacement {
                    if z == 8{
                    combinationWinner = 5
                        xPlayerScore+=1
                        gameStatus.textColor = .green
                        gameStatus.text = "Player 1 wins"
                        stopGame = true
                        Player1Score.text = "\(xPlayerScore)"
                        button5.backgroundColor = .yellow
                        button8.backgroundColor = .yellow
                        button2.backgroundColor = .yellow
                    }

                    }


                }

        }



        }







        if  x == 4 {
          for y in xPlacement {
                if y == 5 {

                    for z in xPlacement {
                    if z == 6{
                    combinationWinner = 2
                        xPlayerScore+=1
                        gameStatus.textColor = .green
                        gameStatus.text = "Player 1 wins"
                        stopGame = true
                        Player1Score.text = "\(xPlayerScore)"
                        button4.backgroundColor = .yellow
                        button6.backgroundColor = .yellow
                        button5.backgroundColor = .yellow
                    }

                    }


                }

        }



        }

        if  x == 7 {
          for y in xPlacement {
                if y == 8 {

                    for z in xPlacement {
                    if z == 9 {
                    combinationWinner = 3
                        xPlayerScore+=1
                        gameStatus.textColor = .green
                        gameStatus.text = "Player 1 wins"
                        stopGame = true
                        Player1Score.text = "\(xPlayerScore)"
                        button9.backgroundColor = .yellow
                        button8.backgroundColor = .yellow
                        button7.backgroundColor = .yellow
                    }

                    }


                }

        }



        }

        }








        for x in oPlacement {
        if x == 1 {
            for y in oPlacement {
                    if y == 2 {

                        for z in oPlacement {
                        if z == 3 {
                        combinationWinner = 1
                            oPlayerScore+=1
                            gameStatus.textColor = .green
                            gameStatus.text = "Player 2 wins"
                            stopGame = true
                            Player2Score.text = "\(oPlayerScore)"
                            button1.backgroundColor = .yellow
                            button2.backgroundColor = .yellow
                            button3.backgroundColor = .yellow
                        }

                        }


                    }
                    else if y == 5 {

                        for z in oPlacement {
                                if z == 9 {
                                combinationWinner = 8
                                    oPlayerScore+=1
                                    gameStatus.textColor = .green
                                    gameStatus.text = "Player 2 wins"
                                    stopGame = true
                                    Player2Score.text = "\(oPlayerScore)"
                                    button5.backgroundColor = .yellow
                                    button9.backgroundColor = .yellow
                                    button1.backgroundColor = .yellow
                                }

                            }

                    }
                    else if y == 4 {
                        for z in oPlacement {
                            if z == 7 {
                            combinationWinner = 4
                                oPlayerScore+=1
                                gameStatus.textColor = .green
                                gameStatus.text = "Player 2 wins"
                                stopGame = true
                                Player2Score.text = "\(oPlayerScore)"
                                button4.backgroundColor = .yellow
                                button7.backgroundColor = .yellow
                                button1.backgroundColor = .yellow
                            }

                            }


                    }


            }

        }



        if  x == 3 {
          for y in oPlacement {
                if y == 6 {

                    for z in oPlacement {
                    if z == 9 {
                    combinationWinner = 6
                        oPlayerScore+=1
                        gameStatus.textColor = .green
                        gameStatus.text = "Player 2 wins"
                        stopGame = true
                        Player2Score.text = "\(oPlayerScore)"
                        button3.backgroundColor = .yellow
                        button6.backgroundColor = .yellow
                        button9.backgroundColor = .yellow
                    }

                    }


                }
                else if y == 5 {

                    for z in oPlacement {
                            if z == 7 {
                            combinationWinner = 7
                                oPlayerScore+=1
                                gameStatus.textColor = .green
                                gameStatus.text = "Player 2 wins"
                                stopGame = true
                                Player2Score.text = "\(oPlayerScore)"
                                button5.backgroundColor = .yellow
                                button7.backgroundColor = .yellow
                                button1.backgroundColor = .yellow
                            }
                        

                        }

                }
        }



        }



        if  x == 2 {
          for y in oPlacement {
                if y == 5 {

                    for z in oPlacement {
                    if z == 8{
                    combinationWinner = 5
                        oPlayerScore+=1
                        gameStatus.textColor = .green
                        gameStatus.text = "Player 2 wins"
                        stopGame = true
                        Player2Score.text = "\(oPlayerScore)"
                        button2.backgroundColor = .yellow
                        button5.backgroundColor = .yellow
                        button8.backgroundColor = .yellow
                    }

                    }


                }

        }



        }







        if  x == 4 {
          for y in oPlacement {
                if y == 5 {

                    for z in oPlacement {
                    if z == 6{
                    combinationWinner = 2
                        oPlayerScore+=1
                        gameStatus.textColor = .green
                        gameStatus.text = "Player 2 wins"
                        stopGame = true
                        Player2Score.text = "\(oPlayerScore)"
                        button4.backgroundColor = .yellow
                        button6.backgroundColor = .yellow
                        button5.backgroundColor = .yellow
                    }

                    }


                }

        }



        }

        if  x == 7 {
          for y in oPlacement {
                if y == 8 {

                    for z in oPlacement {
                    if z == 9 {
                    combinationWinner = 3
                        oPlayerScore+=1
                        gameStatus.textColor = .green
                        gameStatus.text = "Player 2 wins"
                        stopGame = true
                        Player2Score.text = "\(oPlayerScore)"
                        button7.backgroundColor = .yellow
                        button9.backgroundColor = .yellow
                        button8.backgroundColor = .yellow
                    }

                    }


                }

        }



        }

        }

        
        for Button in Button_Image {
            tie = true
            if ((Button.currentImage?.isEqual(UIImage(named: "mark-none"))) != nil){
                tie = false
            }
            
            if tie {gameStatus.text = "Draw"}
        }
        
        
    }
    
    @IBOutlet var Button_Image: [UIButton]!
    
    @IBOutlet weak var Player_2: UILabel!
    @IBOutlet weak var Player_1: UILabel!
    
    
    @IBAction func Clear(_ sender: UIButton) {
        for Button in Button_Image{
            Button.setImage(UIImage(named: "mark-none"), for: .normal)
            xPlacement = []
            oPlacement = []
            gameStatus.textColor = .black
            gameStatus.text = "Player 1 Turn"
            button1.backgroundColor = .none
            button2.backgroundColor = .none
            button3.backgroundColor = .none
            button4.backgroundColor = .none
            button5.backgroundColor = .none
            button6.backgroundColor = .none
            button7.backgroundColor = .none
            button8.backgroundColor = .none
            button9.backgroundColor = .none
            stopGame = false
            gameState = -1
        }
    }
    
    
    

}


