//
//  DrawingView.swift
//  DrawingProject
//
//  Created by Rottlaender, Alex on 11/1/18.
//  Copyright © 2018 CTEC. All rights reserved.
//

import UIKit

public class DrawingView: UIView
{

    public override func draw(_ rect: CGRect) -> Void
    {
        createStickFigure().stroke()
        drawTurtle()
        drawSquare()
    }
    
    
    
    private func createStickFigure() -> UIBezierPath
    {
        let figure : UIBezierPath = UIBezierPath()
        
        UIColor.blue.setStroke()
        figure.lineWidth = 3.4
        
        figure.addArc(withCenter: CGPoint(x: 200, y:200),
            radius: CGFloat(20),
            startAngle: CGFloat(0),
            endAngle: CGFloat(2) * CGFloat.pi,
            clockwise: true)
        
        figure.move(to: CGPoint(x: 200, y: 220))
        figure.addLine(to: CGPoint(x: 200, y: 270))
        figure.move(to: CGPoint(x: 180, y: 240))
        figure.addLine(to: CGPoint(x: 220, y: 240))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 180, y: 300))
        figure.move(to: CGPoint(x: 200, y: 270))
        figure.addLine(to: CGPoint(x: 220, y: 300))
        
        return figure
    }
    
    
    private func drawTurtle() -> Void
    {
        let logo = UIBezierPath()
        UIColor.white.setFill()
        logo.move(to: CGPoint(x: 50, y: 250))
        logo.addLine(to: CGPoint(x: 100, y: 300))
        logo.addLine(to: CGPoint(x: 50, y: 350))
        logo.close()
        logo.fill()
        
    }
    
    private func drawSquare() -> Void
    {
        let line = UIBezierPath()
        UIColor.black.setFill()
        line.move(to: CGPoint(x: 10, y: 10))
        line.addLine(to: CGPoint(x: 20, y: 10))
        line.addLine(to: CGPoint(x: 20, y: 20))
        line.addLine(to: CGPoint(x: 10, y: 20))
        line.addLine(to: CGPoint(x: 10, y: 10))
        line.close()
        line.fill()
    }
    
    
 

}
