=begin
#######################################################################################################################
 ●『サキュバス（橙）』戦闘開始、終了口上
 ●性格：陽気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

class MsgSuccubus_A < MsgBase
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
      tx["tx1"] = "「#{giggle}\n　今夜もいっぱい愉しみましょうね\\H」"
      #▼初ベッドイン
      tx["tx1"] = "「#{giggle}\n　どう、緊張しちゃってる？\n　大丈夫よ、#{myname}がリードしてあげる\\H」" if $msg.t_enemy.bedin_count == 0
    when 1 #２番目
      tx["tx1"] = "「#{giggle}\n　今夜は新しいコトにも挑戦してみたいわね……\\H」"
      #▼初ベッドイン
      tx["tx1"] = "「#{giggle}\n　ベッドの上でするのも久しぶりよ\\H\n　今夜はめいっぱい楽しみましょうね\\H」" if $msg.t_enemy.bedin_count == 0
    when 2 #３番目
      tx["tx1"] = "「#{giggle}\n　油断してると食べられちゃうわよ？\n　頑張ってね\\H」"
      #▼初ベッドイン
      tx["tx1"] = "「#{giggle}\n　さあ、可愛いご主人様？\n　#{myname}には何を望むのかしら？\\H」" if $msg.t_enemy.bedin_count == 0
    end
  #●空腹戦闘中
  elsif $game_switches[86] == true
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "「#{pleasure_s}\n　ちょっと抑えが効かないかもだけど、ごめんねぇ\\H」"
    when 1 #２番目
      tx["tx1"] = "「こまめに精を貰ってればね～♪\n　こんなコトしなくて良かったのにね～\\H」"
    when 2 #３番目
      tx["tx1"] = "「#{giggle}\n　ま、覚悟を決めて吸われちゃってね\\H」"
    end
  #●レア戦闘中(OFEの場合は[$game_switches[92] == true]、BOSSの場合は[$game_switches[91] == true]をそれぞれelsifでつけること)
  else
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "「あら、可愛い子\\H\n　どう？#{myname}と遊んで行かない？」"
    when 1 #２番目
      tx["tx1"] = "「ふふ、その子が気に入ったの？\n　それじゃ、#{myname}も混ぜてもらおうかしら\\H」"
    when 2 #３番目
      tx["tx1"] = "「#{giggle}\n　愉しい夢が見れるわよ、きっと\\H」"
    end
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
#■逃走失敗口上
elsif $msg.tag == "逃走失敗"
  tx["tx1"] = "「#{giggle}\n　お楽しみはこれからよ？\n　もう少し楽しんで行きなさい……ね？\\H」"
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
    tx["tx1"] = "「ねぇ#{target}……？\n　ものは相談なのだけど。\n　#{myname}と契約してみる気……ない？」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "「#{target}と一緒にいると楽しめそうだし。\n　何より、刺激的な毎日になりそうだしね♪」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx3"] = "「ね、どうかしら？\n　損はさせないわよ？」"
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(即座に仲間に入る)
  when 2
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あはっ、本当に？\n　何でも言ってみるものね♪」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "「今から#{myname}の主は#{target}ね。\n　それじゃよろしく、可愛いご主人様\\H」"
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(ホームに送る)
  when 3
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あはっ、本当に？\n　何でも言ってみるものね♪」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "「それじゃ、#{myname}は家で待ってるわ。\n　探索には人数が足りてるみたいだしね。\n　帰ってくるのを楽しみにしてるから♪」"
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約を行わない
  when 4
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「あぁん……残念。\n　#{target}とならいい関係になれそうだったのに」"
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "「それじゃ、またね。\n　今度はもっとゆっくり愉しみましょう\\H」"
    #----------------------------------------------------------------------------------------------------------------------
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
end
#######################################################################################################################
 end #def
end #class
