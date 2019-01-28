//
//  BallMethod.swift
//  ProgressBar
//
//  Created by 创客工场 on 2019/1/28.
//  Copyright © 2019 makeblock. All rights reserved.
//

import UIKit

struct KeyAnimationParameter {
    var path: String
    var repeatCount: Float
    var duration: CFTimeInterval
}
struct SpringParameter {
    var path: String
    var mass: CGFloat
    var stiffness: CGFloat
    var damping: CGFloat
    var fromValue: Any?
    var toValue: Any
}

struct KeyFrameParameter {
    var keyFramePath: KeyAnimationParameter
    var ballPoint: [CGPoint]
}
class BallMethod: NSObject {
    class func springAnimationWithPath(para: SpringParameter) -> CASpringAnimation {
        let springAni = CASpringAnimation(keyPath: para.path)
        //质量：影响图层运动时的弹簧惯性，质量越大，弹簧的拉伸和压缩的幅度越大，动画的速度变慢，且波动幅度变大
        springAni.mass = para.mass
        //刚度：越大动画越快
        springAni.stiffness = para.stiffness
        //阻尼：越大停止越快
        springAni.damping = para.damping
        //初始速率
        springAni.initialVelocity = 0
        //初始值
        springAni.fromValue = para.fromValue
        //结束值
        springAni.toValue = para.toValue
        //动画停止预估时间
        springAni.duration = springAni.settlingDuration
        springAni.isRemovedOnCompletion = false
        springAni.fillMode = CAMediaTimingFillMode.forwards
        return springAni
    }
    //帧动画
    class func keyframeAnimationPath(parameter: KeyFrameParameter) -> CAKeyframeAnimation {
        let keyframe = CAKeyframeAnimation(keyPath: parameter.keyFramePath.path)
        keyframe.values = parameter.ballPoint
        keyframe.repeatCount = parameter.keyFramePath.repeatCount
        keyframe.duration = parameter.keyFramePath.duration
        keyframe.isRemovedOnCompletion = false
        keyframe.fillMode = CAMediaTimingFillMode.forwards
        keyframe.timingFunctions = [CAMediaTimingFunction(name: CAMediaTimingFunctionName.easeIn)]
        return keyframe
    }
}
