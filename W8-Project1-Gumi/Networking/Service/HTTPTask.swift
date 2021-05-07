//
//  HTTPTask.swift
//  W8-Project1-Gumi
//
//  Created by Thành Nguyên on 06/05/2021.
//

import Foundation

public typealias HTTPHeader = [String:String]

public enum HTTPTask {
    case request
    
    case requestParameters(bodyParameters: Parameters?, urlParameters: Parameters?)
    
    case requestParametersAndHeader(bodyParameters: Parameters?, urlParameters: Parameters?, additionHeaders: HTTPHeader?)
}
