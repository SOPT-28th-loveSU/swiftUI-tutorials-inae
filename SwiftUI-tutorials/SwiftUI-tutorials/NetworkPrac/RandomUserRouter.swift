//
//  RandomUserRouter.swift
//  SwiftUI-tutorials
//
//  Created by inae Lee on 2021/05/10.
//

import Alamofire
import Foundation

let BASE_URL = "https://randomuser.me/api/"

enum RandomUserRouter: URLRequestConvertible {
    func asURLRequest() throws -> URLRequest {
        let url = baseURL.appendingPathComponent(endPoint)
        var request = URLRequest(url: url)
        request.method = method

        switch self {
        case .getUsers:
            request = try URLEncoding.default.encode(request, with: parameters)
        default:
            return request
        }

        return request
    }

    case getUsers(page: Int = 1, results: Int = 20)

    var baseURL: URL {
        URL(string: BASE_URL)!
    }

    var endPoint: String {
        switch self {
        case .getUsers:
            return ""
        default:
            return ""
        }
    }

    var method: HTTPMethod {
        switch self {
        case .getUsers:
            return .get
        }
    }

    var parameters: Parameters {
        switch self {
        case let .getUsers(page, results):
            var params = Parameters()
            params["page"] = page
            params["results"] = results

            return params
        default:
            return Parameters()
        }
    }
}
