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
      tx["tx1"] = "\"#{giggle}\n Let's have plenty of fun tonight like always\\H\""
      #▼初ベッドイン
      tx["tx1"] = "\"#{giggle}\n Well? Are you nervous?\n Don't you worry, 'cause #{myname}'ll be taking the lead\\H\"" if $msg.t_enemy.bedin_count == 0
    when 1 #２番目
      tx["tx1"] = "\"#{giggle}\n For tonight, I wanna try out something new....\\H\""
      #▼初ベッドイン
      tx["tx1"] = "\"#{giggle}\n Been a while since I've done it in bed\\H\n Let's enjoy ourselves as much as we can tonight\\H\"" if $msg.t_enemy.bedin_count == 0
    when 2 #３番目
      tx["tx1"] = "\"#{giggle}\n You're gonna get eaten if you lower your guard, you know?\n Break your leg\\H\""
      #▼初ベッドイン
      tx["tx1"] = "\"#{giggle}\n　Well, my adorable master?\n What is it that you want from me? \\H\"" if $msg.t_enemy.bedin_count == 0
    end
  #●空腹戦闘中
  elsif $game_switches[86] == true
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"#{pleasure_s}\n Sorry for not having the best self-control\\H\""
    when 1 #２番目
      tx["tx1"] = "\"Wouldn't have done this if only\n you took care to give me semen♪ \\H\""
    when 2 #３番目
      tx["tx1"] = "\"#{giggle}\n Hope you're prepared for a good sucking\\H\""
    end
  #●レア戦闘中(OFEの場合は[$game_switches[92] == true]、BOSSの場合は[$game_switches[91] == true]をそれぞれelsifでつけること)
  else
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"My, what a cute child\\H\n Why don't you come and play with me?\""
    when 1 #２番目
      tx["tx1"] = "\"Ufufu, you're into that kid?\n Then what say you count me in? \\H\""
    when 2 #３番目
      tx["tx1"] = "\"#{giggle}\n I'm sure we'll get to have a nice, fun dream\\H\""
    end
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
#■逃走失敗口上
elsif $msg.tag == "Escape fail"
  tx["tx1"] = "\"#{giggle}\n The fun is just getting started, you know?\n Have some more fun before you go....will you? \\H\""
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
    tx["tx1"] = "\"Hey, #{target}....?\n I've got something to discuss with you.\n Don't you feel like forming a contract....with me?\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"I've got feel that being with you will be fun, #{target}.\n Besides, it's probably gonna make every day exciting♪\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx3"] = "\"Hey, what about it?\nI promise you won't regret it.\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(即座に仲間に入る)
  when 2
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha, really?\n Feel free to ask me anything♪\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"You'll be my owner from now on, #{target}.\n Then nice to meet you, my adorable master\\H\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(ホームに送る)
  when 3
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha, really?\n Feel free to ask me anything♪\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"Then I'll be my way to your home.\n I can see you've for enough people for exploring.\n I can't wait for you to come home♪\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約を行わない
  when 4
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Man....that's a shame.\n I thought we could have good relationship together.\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"Then I'll see you later.\n Next time, let's take our time and enjoy ourselves\\H\""
    #----------------------------------------------------------------------------------------------------------------------
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
end
#######################################################################################################################
 end #def
end #class
