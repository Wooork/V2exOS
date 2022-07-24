//
//  File.swift
//  V2exOS
//
//  Created by isaced on 2022/7/24.
//

import SwiftUI
import V2exAPI
import Kingfisher

struct TopicListCellView: View {
  
  let topic : V2Topic
  
  var body: some View {
    NavigationLink {
      TopicDetailView(topic: topic)
    } label: {
      
      HStack {
        KFImage.url(URL(string: topic.member?.avatarLarge ?? ""))
          .fade(duration: 0.25)
          .frame(width: 50, height: 50)
          .mask(RoundedRectangle(cornerRadius: 8))
        VStack {
          
          Text(topic.title ?? "")
            .lineLimit(2)
          
//          Text(String(topic.replies ?? 0))
        }
      }
    }
  }
}

struct TopicListCellView_Previews: PreviewProvider {
  static var previews: some View {
    let member = V2Member(id: 79764,
                          username: "ljsh093",
                          url: "https://www.v2ex.com/u/ljsh093",
                          website: nil,
                          twitter: nil,
                          psn: nil,
                          github: nil,
                          btc: nil,
                          location: nil,
                          tagline: nil,
                          bio: nil,
                          avatarMini: "https://cdn.v2ex.com/avatar/ff10/6e6c/79764_mini.png?m=1657684598",
                          avatarNormal: "https://cdn.v2ex.com/avatar/ff10/6e6c/79764_normal.png?m=1657684598",
                          avatarLarge: "https://cdn.v2ex.com/avatar/ff10/6e6c/79764_large.png?m=1657684598",
                          created: 1414903742,
                          lastModified: 1657684598)
    let topic = V2Topic(id: 1,
                        node: nil,
                        member: member,
                        lastReplyBy: "ljsh093",
                        lastTouched: 1658649862,
                        title: "万行原生 Javascript 该如何维护？",
                        url: "https://www.v2ex.com/t/868366",
                        created: 1658649797,
                        deleted: 0,
                        content: "想拆成 Typescript 模块化，有没有什么指路手册？",
                        contentRendered: "<p>想拆成 Typescript 模块化，有没有什么指路手册？</p>\n",
                        lastModified: 1658649797,
                        replies: 1111)
    TopicListCellView(topic: topic)
  }
}