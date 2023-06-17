//
//  FileRepositoryProtocol.swift
//  
//
//  Created by Shunya Yamada on 2023/06/17.
//

import Foundation

/// ローカルファイルの操作を行う Repository のインターフェース.
public protocol FileRepositoryProtocol {
    /// データ保存する.
    /// - Parameters:
    ///   - data: 保存するデータ.
    ///   - name: 保存時につけるファイル名.
    func store(data: Data, for name: String)

    /// データを読み込む.
    /// - Parameter name: 読み込むファイル名.
    /// - Returns: 保存されているデータ.
    func load(for name: String) -> Data?

    /// データを削除する.
    /// - Parameter name: 削除するファイル名.
    func remove(for name: String)

    /// 全てのデータを削除する.
    func removeAll()
}
