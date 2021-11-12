=begin
#######################################################################################################################
 ●『サキュバスロード（橙）』戦闘開始、終了口上
 ●性格：陽気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,07/27     仮設定
 2016,08/18     記述ミスを整形
#######################################################################################################################
=end

class MsgSuccubuslord_A < MsgBase
 def msg_op_and_ep_07
#=======================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
#----------------------------------------------------------------------------------------------------------------------
if $msg.tag == "戦闘開始"
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            if $game_switches[85] == true
                              tx["md"] = "12" if $msg.talk_step == 1
                              tx["md"] = "12" if $msg.talk_step == 2
                              tx["md"] = "12" if $msg.talk_step == 3
                              tx["md"] = "14" if $msg.talk_step == 1 and $msg.t_enemy.bedin_count == 0
                              tx["md"] = "14" if $msg.talk_step == 2 and $msg.t_enemy.bedin_count == 0
                              tx["md"] = "14" if $msg.talk_step == 3 and $msg.t_enemy.bedin_count == 0
                            elsif $game_switches[86] == true
                              tx["md"] = "0"
                            else
                              tx["md"] = "13" if $msg.talk_step == 1
                              tx["md"] = "12" if $msg.talk_step == 2
                              tx["md"] = "11" if $msg.talk_step == 3
                            end
  #----------------------------------------------------------------------------------------------------------------------
  #●ベッドイン中
  if $game_switches[85] == true
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "「#{target}と一夜を過ごせて嬉しいわ。\n　今夜はどのように愛してくれるの？\n　ふふっ、楽しみね\\H」"
      #▼初ベッドイン
      tx["tx1"] = "「ふふっ、待ってたわ。\n　今宵はどんな欲望でも受け入れてあげる、\n　#{target}のすべてを見せて……\\H」" if $msg.t_enemy.bedin_count == 0
    when 1 #２番目
      tx["tx1"] = "「#{target}の求めることを、\n　#{myname}のカラダに教えてちょうだい。\n　きっとすべてに応じてみせるわ\\H」"
      #▼初ベッドイン
      tx["tx1"] = "「ここで逢うのは初めてね。\n　ありのままの#{target}の姿を\n　#{myname}に見せてちょうだい\\H」" if $msg.t_enemy.bedin_count == 0
    when 2 #３番目
      tx["tx1"] = "「すべて任せてくれても構わないわ。\n　最高の夜にしてあげる\\H」"
      #▼初ベッドイン
      tx["tx1"] = "「#{giggle_s}、#{target}は欲張りね。\n　ちゃんと全員のことを愛してくれるのかしら\\H」" if $msg.t_enemy.bedin_count == 0
    end
  #●空腹戦闘中
  elsif $game_switches[86] == true
    case $msg.talk_step
    when 0 #１番目
    tx["tx1"] = "「空腹を耐えた分、\n　より#{target}が魅力的に見えるわ……\n　ふふっ、加減を間違えたらごめんなさい\\H」"
      tx["tx1"] = "「こうして相対するのも久しぶりね……\\H\n　初めての時みたいに愛してみせてちょうだい\\H」\n#{speaker}の瞳は情欲に輝いている……！" if $msg.t_enemy.have_ability?("大切な人")
    when 1 #２番目
      tx["tx1"] = "「はしたないかもしれないけれど、\n　お腹が空くのは夢魔だって同じよ。\n　ああ、#{target}の匂い、素敵……\\H」"
    when 2 #３番目
      tx["tx1"] = "「#{giggle_s}、よりどりみどりね\\H\n　さあ、#{target}は\n　誰から愛してくれるのかしら\\H」"
    end
  #●レア戦闘中(OFEの場合は[$game_switches[92] == true]、BOSSの場合は[$game_switches[91] == true]をそれぞれelsifでつけること)
  else
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "「あら、迷子かしら？\n　……#{giggle_s}、そんなわけないわよね。\n　こんなところまで何のご用事かしら\\H」"
    when 1 #２番目
      tx["tx1"] = "「逃がしてなんてあげないわ。\n　#{target}のこと、可愛がってあげる\\H」"
    when 2 #３番目
      tx["tx1"] = "「#{giggle_s}、かわいらしいお顔ね。\n　蕩けさせてあげたくなっちゃうわ……\\H」"
    end
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
#■逃走失敗口上
elsif $msg.tag == "逃走失敗"
  tx["tx1"] = "「だめよ、まだ満足できてないもの。\n　もちろん、#{target}だってそうでしょう\\H」"
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
#■契約口上
elsif $msg.tag == "契約"
  #----------------------#
  #▼ステップで状況判断  #
  #----------------------#
  case $msg.talk_step
  #▼契約開始
  when 1 
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{target}のこと可愛がってあげようと思ったのに、\n　まさか#{myname}が可愛がられちゃうなんてね……\\H」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "「#{myname}、#{target}のことが気に入ったわ。\n　ねぇ、#{myname}のこと、傍に置いてくれないかしら？」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx3"] = "「求められればいつだってこのカラダを差し出すわ。\n　話し相手にもなるし、もちろん夜の相手だって歓迎よ。\n　……どうかしら？」"
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(即座に仲間に入る)
  when 2
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ふふっ、ありがとう。\n　よろしくお願いするわね、#{target}\\H」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "#{speaker}は嬉しそうな笑顔を浮かべ、\n#{master}の手を両手で包んだ。"
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(ホームに送る)
  when 3
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ふふっ、ありがとう。\n　用があれば呼んでちょうだい、いつでも待ってるわ\\H」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "#{master}の頬に軽く口付けて、\n#{speaker}は柔らかく微笑んでみせた。"
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約を行わない
  when 4
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「……そう、残念ね。\n　今日のところはおとなしく引き下がることにするわ」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "「気が変わったらいつでも会いに来てちょうだい。\n　#{myname}を振った#{target}のこと、\n　皆で熱烈に歓迎してあげる\\H」"
    #----------------------------------------------------------------------------------------------------------------------
  end
  #格納
  tx["md"] = "3"
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
end
#######################################################################################################################
 end #def
end #class
