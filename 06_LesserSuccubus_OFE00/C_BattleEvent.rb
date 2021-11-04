=begin
#######################################################################################################################
 ●『レッサーサキュバス（桃）』戦闘開始、終了口上
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

class MsgLessersuccubus_B < MsgBase
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
      tx["tx1"] = "\"#{giggle}\n Like always, why don't we get started tonight, #{target}♪\""
      #▼初ベッドイン
      tx["tx1"] = "\"So this is #{target}'s bed....\\H\n Guess this is where you'll violate me from now on\\H\"" if $msg.t_enemy.bedin_count == 0
    when 1 #２番目
      tx["tx1"] = "\"Augh....I'm tired of waiting\\H\n Hey, le'ts hurry up and get it going\\H」"
      #▼初ベッドイン
      tx["tx1"] = "\"Oh wow....what a nice room\\H\n Then it might be fine even if I make some noises....\n ....Nfufu, don't worry about it\\H\"" if $msg.t_enemy.bedin_count == 0
    when 2 #３番目
      tx["tx1"] = "\"Wonder how many times we can do it tonight?\n Good luck, #{target}\\H\""
      #▼初ベッドイン
      tx["tx1"] = "\"Starting today, I'll be keeping you company, #{target}\\H\n I'll show you plenty of things to make you squeal\\H\"" if $msg.t_enemy.bedin_count == 0
    end
  #●空腹戦闘中
  elsif $game_switches[86] == true
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"Aha....\\H\n Hope you're ready, #{target}\\H\""
    when 1 #２番目
      tx["tx1"] = "\"No you don't♪\n #{myname}'m gonna eat first\\H\""
    when 2 #３番目
      tx["tx1"] = "\"Let's share so we don't fight\\H\n Ah, but you stay still and behave, #{target}\\H\""
    end
  #●レア戦闘中(OFEの場合は[$game_switches[92] == true]、BOSSの場合は[$game_switches[91] == true]をそれぞれelsifでつけること)
  else
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"#{giggle}\n C'mere, let's have some fun together\\H\""
    when 1 #２番目
      tx["tx1"] = "\"#{giggle}\n If you don't, I'm gonna come myself\\H\""
    when 2 #３番目
      tx["tx1"] = "\"#{giggle}\n You look tasty\\H\""
    end
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
#■逃走失敗口上
elsif $msg.tag == "Escape fail"
  tx["tx1"] = "\"Huh? Where are you going, I wonder?\n Keep playing with me....\\H\""
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
    tx["tx1"] = "\"Phooey....that was amazing....\\H\n I can still feel the thrill in my body....\\H\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"Hey, #{target}....\n Can't you take me with you?\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx3"] = "\"I wanna show way more of my love to #{target}\\H\n Can't I?\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(即座に仲間に入る)
  when 2
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ufufu, thanks, #{target}♪\n I figured you'd say that\\H\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"#{myname}'ll be developing my body....\\H\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(ホームに送る)
  when 3
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ufufu, thanks, #{target}♪\n I figured you'd say that\\H\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"Ah, but you've got way too many friends.\n Then I'll be heading to your home, #{target}.\n You better hurry up and come back...or else\\H\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約を行わない
  when 4
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, man....hey, I really can't?\n ....Humph....and I was pretty confident 'bout it.\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"Then come back and hang with us, #{target}.\n Next time, you should take things more slowly♪\""
    #----------------------------------------------------------------------------------------------------------------------
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
end
#######################################################################################################################
 end #def
end #class
