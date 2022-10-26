//
//  Folders.swift
//  The Arrengers
//
//  Created by Alessia Pauciullo on 25/10/22.
//

import Foundation
func folders()
    {
        let dirPath = "/Users/tutorialkart/test1/"
        do
            {
                try FileManager.default.createDirectory(atPath: dirPath, withIntermediateDirectories: true, attributes: nil)
            }
        catch
            {
                print(error)
            }
    }
