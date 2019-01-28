//
//  BallStruct.swift
//  ProgressBar
//
//  Created by 创客工场 on 2019/1/28.
//  Copyright © 2019 makeblock. All rights reserved.
//
import UIKit
typealias BallRect = (CGFloat, CGFloat, CGFloat, CGFloat)
typealias BallPoint = (CGFloat, CGFloat)

public struct AnimationBall {
    var rect: BallRect
    var hexStr: String
    var points: [BallPoint]
    init(rect: BallRect, hexStr: String, points: [BallPoint]) {
        self.rect = rect
        self.hexStr = hexStr
        self.points = points
    }
}

public struct BallAnimationInfos {
    static var balls: [AnimationBall] {
        var array = [AnimationBall]()
        array.append(AnimationBall(rect: (0.5, 0.5, 0.036, 0.036),
                                   hexStr: "62D669",
                                   points: [(0.5, 0.5), (0.30, 0.31), (0.36, 0.33), (0.33, 0.33), (0.36, 0.33)]))
        array.append(AnimationBall(rect: (0.5, 0.5, 0.024, 0.024),
                                   hexStr: "FC8894",
                                   points: [(0.5, 0.5), (0.28, 0.42), (0.34, 0.44), (0.30, 0.44), (0.34, 0.44)]))
        array.append(AnimationBall(rect: (0.5, 0.5, 0.024, 0.024),
                                   hexStr: "FA913F",
                                   points: [(0.5, 0.5), (0.26, 0.19), (0.32, 0.25), (0.28, 0.22), (0.32, 0.25)]))
        array.append(AnimationBall(rect: (0.5, 0.5, 0.030, 0.030),
                                   hexStr: "733BCC",
                                   points: [(0.5, 0.5), (0.42, 0.15), (0.43, 0.26), (0.42, 0.20), (0.43, 0.26)]))
        array.append(AnimationBall(rect: (0.5, 0.5, 0.018, 0.018),
                                   hexStr: "733BCC",
                                   points: [(0.5, 0.5), (0.56, 0.28), (0.54, 0.33), (0.55, 0.30), (0.54, 0.33)]))
        array.append(AnimationBall(rect: (0.5, 0.5, 0.042, 0.042),
                                   hexStr: "3DBEFF",
                                   points: [(0.5, 0.5), (0.61, 0.16), (0.58, 0.25), (0.60, 0.21), (0.58, 0.25)]))
        array.append(AnimationBall(rect: (0.5, 0.5, 0.024, 0.024),
                                   hexStr: "FA913F",
                                   points: [(0.5, 0.5), (0.73, 0.16), (0.69, 0.24), (0.70, 0.20), (0.69, 0.24)]))
        array.append(AnimationBall(rect: (0.5, 0.5, 0.030, 0.030),
                                   hexStr: "62D669",
                                   points: [(0.5, 0.5), (0.67, 0.33), (0.61, 0.38), (0.64, 0.36), (0.61, 0.38)]))
        return array
    }
    static let btnPoints: [CGPoint] = [CGPoint(x: 0.5, y: 0.53), CGPoint(x: 0.5, y: 0.4)]
    static let labPoints: [CGPoint] = [CGPoint(x: 0.5, y: 0.75), CGPoint(x: 0.5, y: 0.68)]
}
