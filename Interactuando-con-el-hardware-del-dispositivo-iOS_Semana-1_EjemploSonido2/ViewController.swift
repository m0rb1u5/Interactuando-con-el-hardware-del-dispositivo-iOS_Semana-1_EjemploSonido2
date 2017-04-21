//
//  ViewController.swift
//  Interactuando-con-el-hardware-del-dispositivo-iOS_Semana-1_EjemploSonido2
//
//  Created by Juan Carlos Carbajal Ipenza on 21/04/17.
//  Copyright © 2017 Juan Carlos Carbajal Ipenza. All rights reserved.
//

import UIKit
import AVFoundation

class ViewController: UIViewController {
    private var reproductor: AVAudioPlayer!

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        let sonidoURL = Bundle.main.url(forResource: "EJQEAFYhWMSAN6PrADyDbNFEG5I916", withExtension: "mp3")
        
        do {
            try reproductor = AVAudioPlayer(contentsOf: sonidoURL!)
        }
        catch {
            print("Error al cargar el archivo de sonido")
        }
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func play() {
        if !self.reproductor.isPlaying {
            self.reproductor.play()
        }
    }
    @IBAction func pause() {
        if self.reproductor.isPlaying {
            self.reproductor.pause()
        }
    }
    @IBAction func stop() {
        if self.reproductor.isPlaying {
            self.reproductor.stop()
            self.reproductor.currentTime = 0.0
        }
    }
}

