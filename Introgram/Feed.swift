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
    var imageName: [String]
    var likes : Int
    var text: String
}

extension Feed {
    static var data = [
        
        Feed(writer: "I4E1_Official", writerImage: "I4E1", imageName: ["feed1","I4E1"], likes: 999, text: "I4E1_Official: 안녕하세요 저희는 I4E1팀입니다. MBTI I인 팀원 4명과 E인 팀원 1명으로 구성되어 있어서 정말 단순하게 I4E1으로 팀 이름을 정하게 되었지만, 다들 굉장히 만족 중입니다 ㅎ 짧은 시간이었지만, 다들 정말 최선을 다해주셔서 좋은 프로젝트를 완성할 수 있던 것 같습니다!"),
        Feed(writer: "I4E1_Official", writerImage: "I4E1", imageName: ["feed1_1","feed1_2","feed1_3","feed1_4","feed1_5","feed1_6"], likes: 999, text: "I4E1_Official: TMI시간! I4E1의 취미는?"),
        Feed(writer: "Spider_MinHee", writerImage: "김민희", imageName: ["feed2"], likes: 38, text: "Spider_MinHee: I 4명 E 1명의 자기소개 인트로그램 :D"),
        Feed(writer: "Beer_NaYeon", writerImage: "채나연", imageName: ["b1a4"], likes: 123, text: "Beer_NaYeon: B1A4랑 헷갈리면 안돼요!"),
        Feed(writer: "3dae500_SeungHyun", writerImage: "신승현", imageName: ["feed4"], likes: 453, text: "3dae500_SeungHyun: 외향형(E)인 팀원은 벌써 팀원들과 내적 친밀감이 가득 쌓여 있다는 걸 보여드리고 싶었습니다..."),
        Feed(writer: "bestCooker_JuHyun", writerImage: "박주현", imageName: ["feed3"], likes: 333, text: "bestCooker_JuHyun: 좋은 사람들과 좋은 시간"),
    ]
}
