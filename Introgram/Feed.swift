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
        Feed(writer: "E4I1_Official", writerImage: "김민희", imageName: "이승원", likes: 10, text: "E4I1_Official: LabeldsadasdasdasdasdadadaLabelds adasdasdasdasdadadaLabeldsadas dasdasdasdadadaLabeldsadasdasdasdasdadad aLabeldsadasdasdasdasdadadaLabeldsadasdasdasdasdadada"),
        Feed(writer: "E4I1_Official", writerImage: "이승원", imageName: "이승원", likes: 10, text: "E4I1_Official: 안녕하세요 저희는 팀입니다."),
        Feed(writer: "E4I1_Official", writerImage: "김민희", imageName: "이승원", likes: 10, text: "E4I1_Official: 테스트입니다"),
        Feed(writer: "E4I1_Official", writerImage: "김민희", imageName: "이승원", likes: 10, text: "E4I1_Official: 테스트입니다"),
        //Feed(writer: "이승원", writerImage: "이승원", imageName: "", likes: 10, text: "테스트입니다")

    ]
}
