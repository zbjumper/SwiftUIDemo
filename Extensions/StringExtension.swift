//
//  StringExtension.swift
//  SwiftUIDemo
//
//  Created by 张博 on 2024/12/7.
//

import Foundation

extension String {
    /// 国际化字符串
    /// - Parameter tableName: 名称
    /// - Returns: 国际化后的内容
    func localized(_ tableName: String) -> String {
        NSLocalizedString(self, tableName: tableName, comment: self)
    }
}
