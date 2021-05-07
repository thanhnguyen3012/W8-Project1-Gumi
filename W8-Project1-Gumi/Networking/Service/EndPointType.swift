//
//  EndPointType.swift
//  W8-Project1-Gumi
//
//  Created by Thành Nguyên on 06/05/2021.
//

import Foundation

protocol EndPointType {
    var baseURL: URL { get }
    var path: String { get }
    var httpMethod: HTTPMethod { get }
    var task: HTTPTask { get }
    var header: HTTPHeader? { get }
}
