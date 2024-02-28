//
//  Feed.swift
//  Introgram
//
//  Created by Sam.Lee on 2/27/24.
//

import Foundation

struct Feed {
    let writer: String
    let writerImage : String
    var imageName: String
    var likes : Int
    var text: String
}

extension Feed {
    static var data = [
        
        Feed(writer: "I4E1_Official", writerImage: "I4E1", imageName: "feed1", likes: 999, text: "I4E1_Official: 안녕하세요 저희는 I4E1팀입니다."),
        Feed(writer: "I4E1_Official", writerImage: "I4E1", imageName: "I4E1", likes: 999, text: "I4E1_Official: LabeldsadasdasdasdasdadadaLabelds adasdasdasdasdadadaLabeldsadas dasdasdasdadadaLabeldsadasdasdasdasdadad aLabeldsadasdasdasdasdadadaLabeldsadasdasdasdasdadada"),
        Feed(writer: "I4E1_Official", writerImage: "I4E1", imageName: "feed2", likes: 827, text: "I4E1_Official: 테스트입니다"),
        Feed(writer: "I4E1_Official", writerImage: "I4E1", imageName: "feed3", likes: 123, text: "I4E1_Official: 테스트입니다"),
        Feed(writer: "I4E1_Official", writerImage: "I4E1", imageName: "feed4", likes: 333, text: "I4E1_Official:테스트입니다")

    ]
}
