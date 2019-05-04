//
//  UIViewLayoutHelpers.swift
//  Helpers
//
//  Created by Bibin Jacob Pulickal on 29/04/19.
//  Copyright © 2019 Bibin Jacob Pulickal. All rights reserved.
//

import UIKit

public extension UIView {

    func addSubview(_ view: UIView, completion: (UIView) -> Void) {
        addSubview(view)
        view.translatesAutoresizingMaskIntoConstraints = false
        completion(view)
    }

    func anchors(
        _ anchors: Set<NSLayoutConstraint.Attribute>    = [],
        top: NSLayoutYAxisAnchor?                       = nil,
        topRelation: NSLayoutConstraint.Relation        = .equal,
        left: NSLayoutXAxisAnchor?                      = nil,
        leftRelation: NSLayoutConstraint.Relation       = .equal,
        bottom: NSLayoutYAxisAnchor?                    = nil,
        bottomRelation: NSLayoutConstraint.Relation     = .equal,
        right: NSLayoutXAxisAnchor?                     = nil,
        rightRelation: NSLayoutConstraint.Relation      = .equal,
        padding: UIEdgeInsets                           = .zero,
        centerX: NSLayoutXAxisAnchor?                   = nil,
        centerXRelation: NSLayoutConstraint.Relation    = .equal,
        centerY: NSLayoutYAxisAnchor?                   = nil,
        centerYRelation: NSLayoutConstraint.Relation    = .equal,
        offset: UIOffset                                = .zero,
        width: NSLayoutDimension?                       = nil,
        widthRelation: NSLayoutConstraint.Relation      = .equal,
        height: NSLayoutDimension?                      = nil,
        heightRelation: NSLayoutConstraint.Relation     = .equal,
        multiplier: CGMultiplier                        = .one,
        size: CGSize                                    = .zero) {
        superview?.anchorView(
            self,
            anchors: anchors,
            top: top,
            topRelation: topRelation,
            left: left,
            leftRelation: leftRelation,
            bottom: bottom,
            bottomRelation: bottomRelation,
            right: right,
            rightRelation: rightRelation,
            padding: padding,
            centerX: centerX,
            centerXRelation: centerXRelation,
            centerY: centerY,
            centerYRelation: centerYRelation,
            offset: offset,
            width: width,
            widthRelation: widthRelation,
            height: height,
            heightRelation: heightRelation,
            multiplier: multiplier,
            size: size)
    }

    func addSubview(
        _ view: UIView,
        anchors: Set<NSLayoutConstraint.Attribute>      = [],
        top: NSLayoutYAxisAnchor?                       = nil,
        topRelation: NSLayoutConstraint.Relation        = .equal,
        left: NSLayoutXAxisAnchor?                      = nil,
        leftRelation: NSLayoutConstraint.Relation       = .equal,
        bottom: NSLayoutYAxisAnchor?                    = nil,
        bottomRelation: NSLayoutConstraint.Relation     = .equal,
        right: NSLayoutXAxisAnchor?                     = nil,
        rightRelation: NSLayoutConstraint.Relation      = .equal,
        padding: UIEdgeInsets                           = .zero,
        centerX: NSLayoutXAxisAnchor?                   = nil,
        centerXRelation: NSLayoutConstraint.Relation    = .equal,
        centerY: NSLayoutYAxisAnchor?                   = nil,
        centerYRelation: NSLayoutConstraint.Relation    = .equal,
        offset: UIOffset                                = .zero,
        width: NSLayoutDimension?                       = nil,
        widthRelation: NSLayoutConstraint.Relation      = .equal,
        height: NSLayoutDimension?                      = nil,
        heightRelation: NSLayoutConstraint.Relation     = .equal,
        multiplier: CGMultiplier                        = .one,
        size: CGSize                                    = .zero) {

        addSubview(view)

        anchorView(
            view,
            anchors: anchors,
            top: top,
            topRelation: topRelation,
            left: left,
            leftRelation: leftRelation,
            bottom: bottom,
            bottomRelation: bottomRelation,
            right: right,
            rightRelation: rightRelation,
            padding: padding,
            centerX: centerX,
            centerXRelation: centerXRelation,
            centerY: centerY,
            centerYRelation: centerYRelation,
            offset: offset,
            width: width,
            widthRelation: widthRelation,
            height: height,
            heightRelation: heightRelation,
            multiplier: multiplier,
            size: size)
    }

    func anchorView(
        _ view: UIView,
        anchors: Set<NSLayoutConstraint.Attribute>      = [],
        top: NSLayoutYAxisAnchor?                       = nil,
        topRelation: NSLayoutConstraint.Relation        = .equal,
        left: NSLayoutXAxisAnchor?                      = nil,
        leftRelation: NSLayoutConstraint.Relation       = .equal,
        bottom: NSLayoutYAxisAnchor?                    = nil,
        bottomRelation: NSLayoutConstraint.Relation     = .equal,
        right: NSLayoutXAxisAnchor?                     = nil,
        rightRelation: NSLayoutConstraint.Relation      = .equal,
        padding: UIEdgeInsets                           = .zero,
        centerX: NSLayoutXAxisAnchor?                   = nil,
        centerXRelation: NSLayoutConstraint.Relation    = .equal,
        centerY: NSLayoutYAxisAnchor?                   = nil,
        centerYRelation: NSLayoutConstraint.Relation    = .equal,
        offset: UIOffset                                = .zero,
        width: NSLayoutDimension?                       = nil,
        widthRelation: NSLayoutConstraint.Relation      = .equal,
        height: NSLayoutDimension?                      = nil,
        heightRelation: NSLayoutConstraint.Relation     = .equal,
        multiplier: CGMultiplier                        = .one,
        size: CGSize                                    = .zero) {

        anchorEdges(
            view,
            sides: anchors,
            top: top,
            topRelation: topRelation,
            left: left,
            leftRelation: leftRelation,
            bottom: bottom,
            bottomRelation: bottomRelation,
            right: right,
            rightRelation: rightRelation,
            padding: padding)
        anchorCenters(
            view,
            centers: anchors,
            centerX: centerX,
            centerXRelation: centerXRelation,
            centerY: centerY,
            centerYRelation: centerYRelation,
            offset: offset)
        anchorSides(
            view,
            sides: anchors,
            width: width,
            widthRelation: widthRelation,
            height: height,
            heightRelation: heightRelation,
            multiplier: multiplier,
            size: size)
    }

    func anchorEdges(
        _ view: UIView,
        sides: Set<NSLayoutConstraint.Attribute>        = [],
        top: NSLayoutYAxisAnchor?                       = nil,
        topRelation: NSLayoutConstraint.Relation        = .equal,
        left: NSLayoutXAxisAnchor?                      = nil,
        leftRelation: NSLayoutConstraint.Relation       = .equal,
        bottom: NSLayoutYAxisAnchor?                    = nil,
        bottomRelation: NSLayoutConstraint.Relation     = .equal,
        right: NSLayoutXAxisAnchor?                     = nil,
        rightRelation: NSLayoutConstraint.Relation      = .equal,
        padding: UIEdgeInsets                           = .zero) {

        view.translatesAutoresizingMaskIntoConstraints = false

        if sides.contains(.top) || top != nil {
            view.anchor(
                lhs: .top,
                relation: topRelation,
                rhs: top ?? topAnchor,
                constant: padding.top)
        }
        if sides.contains(.leading) || sides.contains(.left) || left != nil {
            view.anchor(
                lhs: .left,
                relation: leftRelation,
                rhs: left ?? leadingAnchor,
                constant: padding.left)
        }
        if sides.contains(.bottom) || bottom != nil {
            view.anchor(
                lhs: .bottom,
                relation: bottomRelation,
                rhs: bottom ?? bottomAnchor,
                constant: padding.bottom)
        }
        if sides.contains(.trailing) || sides.contains(.right) || right != nil {
            view.anchor(
                lhs: .right,
                relation: rightRelation,
                rhs: right ?? trailingAnchor,
                constant: padding.right)
        }
    }

    func anchorCenters(
        _ view: UIView,
        centers: Set<NSLayoutConstraint.Attribute>      = [],
        centerX: NSLayoutXAxisAnchor?                   = nil,
        centerXRelation: NSLayoutConstraint.Relation    = .equal,
        centerY: NSLayoutYAxisAnchor?                   = nil,
        centerYRelation: NSLayoutConstraint.Relation    = .equal,
        offset: UIOffset                                = .zero) {

        view.translatesAutoresizingMaskIntoConstraints = false

        if centers.contains(.centerX) || centerX != nil {
            view.anchor(
                lhs: .centerX,
                relation: centerXRelation,
                rhs: centerX ?? centerXAnchor,
                constant: offset.horizontal)
        }
        if centers.contains(.centerY) || centerY != nil {
            view.anchor(
                lhs: .centerY,
                relation: centerYRelation,
                rhs: centerY ?? centerYAnchor,
                constant: offset.vertical)
        }
    }

    func anchorSides(
        _ view: UIView,
        sides: Set<NSLayoutConstraint.Attribute>        = [],
        width: NSLayoutDimension?                       = nil,
        widthRelation: NSLayoutConstraint.Relation      = .equal,
        height: NSLayoutDimension?                      = nil,
        heightRelation: NSLayoutConstraint.Relation     = .equal,
        multiplier: CGMultiplier                        = .one,
        size: CGSize                                    = .zero) {

        view.translatesAutoresizingMaskIntoConstraints = false

        if sides.contains(.width) || width != nil {
            view.anchor(
                lhs: .width,
                relation: widthRelation,
                rhs: width ?? widthAnchor,
                multiplier: multiplier.width,
                constant: size.width)
        } else if size.width != 0 {
            view.anchor(
                lhs: .width,
                relation: widthRelation,
                rhs: size.width)
        }
        if sides.contains(.height) || height != nil {
            view.anchor(
                lhs: .height,
                relation: heightRelation,
                rhs: height ?? heightAnchor,
                multiplier: multiplier.height,
                constant: size.height)
        } else if size.height != 0 {
            view.anchor(
                lhs: .height,
                relation: heightRelation,
                rhs: size.height)
        }
    }

    func anchor<Axis>(
        lhs: NSLayoutConstraint.Attribute,
        relation: NSLayoutConstraint.Relation   = .equal,
        rhs: NSLayoutAnchor<Axis>?              = nil,
        multiplier: CGFloat                     = 1,
        constant: CGFloat                       = 0) {
        let lhs = anchor(for: lhs) as NSLayoutAnchor<Axis>?
        switch relation {
        case .lessThanOrEqual:
            if let lhs = lhs as? NSLayoutDimension,
                let rhs = rhs as? NSLayoutDimension {
                lhs.constraint(
                    lessThanOrEqualTo: rhs,
                    multiplier: multiplier,
                    constant: constant).isActive = true
            } else if let rhs = rhs {
                lhs?.constraint(
                    lessThanOrEqualTo: rhs,
                    constant: constant).isActive = true
            }
        case .greaterThanOrEqual:
            if let lhs = lhs as? NSLayoutDimension,
                let rhs = rhs as? NSLayoutDimension {
                lhs.constraint(
                    greaterThanOrEqualTo: rhs,
                    multiplier: multiplier,
                    constant: constant).isActive = true
            } else if let rhs = rhs {
                lhs?.constraint(
                    greaterThanOrEqualTo: rhs,
                    constant: constant).isActive = true
            }
        default:
            if let lhs = lhs as? NSLayoutDimension,
                let rhs = rhs as? NSLayoutDimension {
                lhs.constraint(
                    equalTo: rhs,
                    multiplier: multiplier,
                    constant: constant).isActive = true
            } else if let rhs = rhs {
                lhs?.constraint(
                    equalTo: rhs,
                    constant: constant).isActive = true
            }
        }
    }

    func anchor(
        lhs: NSLayoutConstraint.Attribute,
        relation: NSLayoutConstraint.Relation   = .equal,
        rhs: CGFloat) {

        let lhs = anchor(for: lhs) as NSLayoutAnchor<NSLayoutDimension>?

        switch relation {
        case .lessThanOrEqual:
            if let lhs = lhs as? NSLayoutDimension,
                rhs != 0 {
                lhs.constraint(
                    lessThanOrEqualToConstant: rhs)
                    .isActive = true
            }
        case .greaterThanOrEqual:
            if let lhs = lhs as? NSLayoutDimension,
                rhs != 0 {
                lhs.constraint(
                    greaterThanOrEqualToConstant: rhs)
                    .isActive = true
            }
        default:
            if let lhs = lhs as? NSLayoutDimension,
                rhs != 0 {
                lhs.constraint(
                    equalToConstant: rhs)
                    .isActive = true
            }
        }
    }

    private func anchor<Axis>(for attribute: NSLayoutConstraint.Attribute) -> NSLayoutAnchor<Axis>? {
        switch attribute {
        case .left, .leading:
            return leadingAnchor as? NSLayoutAnchor<Axis>
        case .right, .trailing:
            return trailingAnchor as? NSLayoutAnchor<Axis>
        case .top:
            return topAnchor as? NSLayoutAnchor<Axis>
        case .bottom:
            return bottomAnchor as? NSLayoutAnchor<Axis>
        case .width:
            return widthAnchor as? NSLayoutAnchor<Axis>
        case .height:
            return heightAnchor as? NSLayoutAnchor<Axis>
        case .centerX:
            return centerXAnchor as? NSLayoutAnchor<Axis>
        case .centerY:
            return centerYAnchor as? NSLayoutAnchor<Axis>
        default:
            return nil
        }
    }
}
