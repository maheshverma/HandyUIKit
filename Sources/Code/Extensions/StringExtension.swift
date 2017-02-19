//
//  StringExtension.swift
//  HandyUIKit
//
//  Created by Cihat Gündüz on 19.02.17.
//  Copyright © 2017 Flinesoft. All rights reserved.
//

import UIKit

extension String {
    /// Calculates and returns the height needed to fit the text into a width-constrained rect.
    ///
    /// - Parameters:
    ///   - fixedWidth: The fixed width of the rect.
    ///   - font: The font of the text to calculate for.
    /// - Returns: The height needed to fit the text into a width-constrained rect.
    public func height(for fixedWidth: CGFloat, font: UIFont) -> CGFloat {
        let constraintSize = CGSize(width: fixedWidth, height: .greatestFiniteMagnitude)
        return rect(for: constraintSize, font: font).height
    }

    /// Calculates and returns the width needed to fit the text into a height-constrained rect.
    ///
    /// - Parameters:
    ///   - fixedHeight: The fixed height of the rect.
    ///   - font: The font of the text to calculate for.
    /// - Returns: The width needed to fit the text into a height-constrained rect.
    public func width(for fixedHeight: CGFloat, font: UIFont) -> CGFloat {
        let constraintSize = CGSize(width: .greatestFiniteMagnitude, height: fixedHeight)
        return rect(for: constraintSize, font: font).width
    }

    private func rect(for constraintSize: CGSize, font: UIFont) -> CGRect {
        let attributes = [NSFontAttributeName: font]
        return (self as NSString).boundingRect(with: constraintSize, options: .usesLineFragmentOrigin, attributes: attributes, context: nil)
    }
}
