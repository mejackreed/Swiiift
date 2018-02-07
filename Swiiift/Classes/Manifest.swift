//
//  Manifest.swift
//
//  Created by Jack Reed on 1/13/18.
//  Copyright © 2018 Jack Reed. All rights reserved.
//

import Foundation
import Alamofire
import SwiftyJSON

public class Manifest {
    public var url: String
    public var manifest: JSON?

    public init(fromUrl url: String, completion : @escaping (Manifest?)->()) {
        self.url = url
        Alamofire.request(url).responseJSON {
            response in if let result = response.result.value {
                self.manifest = JSON(result)
            }
            completion(self)
        }
    }
    public var date: String {
        return metadataLookup(with: "Date")
    }
    
    func metadataLookup(with key: String) -> String {
        var md = ""
        for (_,subJson):(String, JSON) in metadata {
            if subJson["label"].string! == key {
                md = subJson["value"].string!
                break
            }
        }
        return md
    }
    
    public var metadata: JSON {
        return self.manifest!["metadata"]
    }

    public var attribution: String {
        return self.manifest!["attribution"].string!
    }
    
    public var label: String {
        return self.manifest!["label"].string!
    }

    public var description: String {
        return self.manifest!["description"].string!
    }
    
    public var sequences: JSON {
        return self.manifest!["sequences"]
    }

    public var canvases: JSON {
        return self.sequences[0]["canvases"]
    }

    public var images: JSON {
        return self.canvases[0]["images"]
    }

}
