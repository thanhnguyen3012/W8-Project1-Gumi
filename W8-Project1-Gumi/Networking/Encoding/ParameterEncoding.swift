//
//  ParameterEncoding.swift
//  W8-Project1-Gumi
//
//  Created by Thành Nguyên on 06/05/2021.
//

import Foundation

public typealias Parameters = [String:Any]

public protocol ParameterEncoder {
    static func encode(urlRequest: inout URLRequest, with parameters: Parameters) throws
}

public enum NetworkError: String, Error {
    case parametersNil = "Parameters were nil."
    case encodingFail = "Parameters encoding failed."
    case missingURL = "URL is nil."
}
