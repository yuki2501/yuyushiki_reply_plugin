# -*- coding: utf-8 -*-

Plugin.create (:yuyushiki_replay_plugin) do
  command(:nantsutte,
          name: 'なんつってっつっちゃった',
          condition: lambda{ |opt| opt.messages.all?(&:repliable?) },
          visible: true,
          role: :timeline) do |opt|
    opt.messages.each { |message|
      message.post(message: "なーんつって、つっちゃった")
    }

  end

 command(:beans,
          name: 'おまめ',
          condition: lambda{ |opt| opt.messages.
 all?(&:repliable?)},
          visible: true,
          role: :timeline) do |opt|
    opt.messages.each { |message|
      message.post(message: "@#{message.user.idname}ちゃんの、淡いお豆は美味しいのかい？")
    }
 end

  command(:teokure,
          name: 'ておくれ',
          condition: lambda{ |opt| opt.messages.
 all?(&:repliable?)},
          visible: true,
          role: :timeline) do |opt|
    opt.messages.each { |message|
      message.post(message: "あー、ておくれだー。もう絶対ておくれるしかないやつだー。@#{message.user.idname}がておくれたら色々……ごめんねー")
    }
 end

 command(:sorry,
          name: 'パンツ',
          condition: lambda{ |opt| opt.messages.
 all?(&:repliable?)},
          visible: true,
          role: :timeline) do |opt|
    opt.messages.each { |message|
      message.post(message: "#@{message.user.idname}ちゃん、ておくれさせてごめんね")
    }
 end

 command(:towel,
          name: 'スキスキ',
          condition: lambda{ |opt| opt.messages.
 all?(&:repliable?)},
          visible: true,
          role: :timeline) do |opt|
    opt.messages.each { |message|
      message.post(message: "@#{message.user.idname} #{message.user.idname} #{message.user.idname}スキスキ")
    }
 end

command(:stretch,
          name: '夜',
          condition: lambda{ |opt| opt.messages.
 all?(&:repliable?)},
          visible: true,
          role: :timeline) do |opt|
    opt.messages.each { |message|
      message.post(message: "@#{message.user.idname} 夜たまらなくなったらいつでも呼んでね？")
    }
 end

command(:cry,
          name: '泣いてよ',
          condition: lambda{ |opt| opt.messages.
 all?(&:repliable?)},
          visible: true,
          role: :timeline) do |opt|
    opt.messages.each { |message|
      message.post(message: "泣いてよっ、子供のように。そう、子どものようにさっ！")
    }
 end

end
