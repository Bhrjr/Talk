=begin
#######################################################################################################################
 ●『サキュバス（橙）』戦闘開始、終了口上
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

class MsgSuccubus_A < MsgBase
 def msg_op_and_ep_00
#=======================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
#----------------------------------------------------------------------------------------------------------------------
if $msg.tag == "Start the Battle"
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
      tx["tx1"] = "\"#{giggle}\n I'll give you plenty of love tonight\\H\""
      #▼初ベッドイン
      tx["tx1"] = "\"#{giggle}\n Been a while since I've given love in bed\\H\n Hey....come closer....\\H\"" if $msg.t_enemy.bedin_count == 0
    when 1 #２番目
      tx["tx1"] = "\"#{giggle}\n You better not forget about me, you hear? \\H\""
      #▼初ベッドイン
      tx["tx1"] = "\"#{giggle}\n Well, you nervous?\n Don't worry, since #{myname}'ll be taking the lead\\H\"" if $msg.t_enemy.bedin_count == 0
    when 2 #３番目
      tx["tx1"] = "\"#{giggle}\n I know it won't be easy to take on 3 people at once, but good luck anyway\\H\""
      #▼初ベッドイン
      tx["tx1"] = "\"#{giggle}\n Lemme give you a full repayment for forming a contract with me....\\H\n You're fine that, right? \\H\"" if $msg.t_enemy.bedin_count == 0
    end
  #●空腹戦闘中
  elsif $game_switches[86] == true
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"#{giggle}\n Now then, which mouth should I eat you with?\n I'm open to requests\\H\""
    when 1 #２番目
      tx["tx1"] = "\"Can we forget about the first come, first served thing?\n Something that's tasty should be shared with everybody....\\H\""
    when 2 #３番目
      tx["tx1"] = "\"I'd rather that you don't get dried up....\\H\n Well, it's what you get for for neglecting us.\""
    end
  #●レア戦闘中(OFEの場合は[$game_switches[92] == true]、BOSSの場合は[$game_switches[91] == true]をそれぞれelsifでつけること)
  else
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"How cute....\\H\n C'mere, will you?\n We'll show you lots of fun stuffs\\H\""
    when 1 #２番目
      tx["tx1"] = "\"#{giggle}\n Nobody snatch him, you hear?\n Let's all share it with everybody\\H\""
    when 2 #３番目
      tx["tx1"] = "\"Don't worry, it's not scary at all\\H\n You'll just get to have a nice dream for a little while....\\H\""
    end
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
#■逃走失敗口上
elsif $msg.tag == "Escape fail"
  tx["tx1"] = "\"Hey, no running away on my watch\\H\n After all....we're supposed to have some fun\\H\""
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
#■契約口上
elsif $msg.tag == "Contract"
  #----------------------#
  #▼ステップで状況判断  #
  #----------------------#
  case $msg.talk_step
  #▼契約開始
  when 1 
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Say....got a sec?\n#{target}、#{myname}と契約……してみない？\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"こんなに燃えたのは久しぶりなの\\H\n　ここだけの関係で終わらせるの、勿体無くない？\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx3"] = "\"勿論、#{target}が良いって言えばだけど……。\n　どうかしら？\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(即座に仲間に入る)
  when 2
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n　ありがとう、受け入れてくれて嬉しいわ\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"それじゃ、今後ともよろしく……ね？\\H\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(ホームに送る)
  when 3
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n　ありがとう、受け入れてくれて嬉しいわ\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"それじゃ、先に#{target}の家に行ってるわ。\n　メンバーがいっぱいみたいだしね。\n　念入りに身体を磨いて待ってるわ\\H\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約を行わない
  when 4
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh....what a shame.\n Oh well, not like I can force you to do this.\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"それじゃ、またどこかで会いましょう。\n　この次は、もっとイイことしてあげる……\\H\""
    #----------------------------------------------------------------------------------------------------------------------
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
end
#######################################################################################################################
 end #def
end #class
