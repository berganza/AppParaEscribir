//
//  Escribir.swift
//  AppParaEscribir
//
//  Created by Berganza on 17/11/15.
//  Copyright © 2015 Berganza. All rights reserved.
//

import UIKit

class Escribir: UIView {
    
    var grafos: [Grafos] = []
    var ultimo: CGPoint!
    
    override func touchesBegan(touches: Set<UITouch>, withEvent event: UIEvent?) {
        ultimo = touches.first!.locationInView(self)
    }
    
    override func touchesMoved(touches: Set<UITouch>, withEvent event: UIEvent?) {
        let nuevo = touches.first?.locationInView(self)
        grafos.append(Grafos(comienzo: ultimo, final: nuevo!))
        ultimo = nuevo
        self.setNeedsDisplay()
    }
    
    // Descomentar función:
    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func drawRect(rect: CGRect) {
        // Drawing code
        let escrito = UIGraphicsGetCurrentContext()
        CGContextBeginPath(escrito)
        
        for grafo in grafos {
            CGContextMoveToPoint(
                escrito,
                grafo.puntoInicial.x,
                grafo.puntoInicial.y)
            CGContextAddLineToPoint(
                escrito,
                grafo.puntoFinal.x,
                grafo.puntoFinal.y)
        }
        
        CGContextSetLineCap(escrito, CGLineCap.Round)
        CGContextSetLineWidth(escrito, 2)
        CGContextSetRGBStrokeColor(escrito, 255, 0, 0, 1)
        CGContextStrokePath(escrito)
    }
}








