=begin
#######################################################################################################################
 ●『レッサーサキュバス（橙）』戦闘開始、終了口上
 ●性格：陽気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end


class MsgLessersuccubus_A < MsgBase
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
      tx["tx1"] = "「Here I come♪\n I'm gonna eat you up, #{target}\\H」"
      #▼初ベッドイン
      tx["tx1"] = "\"Well....err....\n Have to admit, I'm kinda nervous....\\H\"" if $msg.t_enemy.bedin_count == 0
    when 1 #２番目
      tx["tx1"] = "\"#{giggle}\n Wonder what I should try out today....♪\""
      #▼初ベッドイン
      tx["tx1"] = "\"#{giggle}\n I've never done it here before....\\H\"" if $msg.t_enemy.bedin_count == 0
    when 2 #３番目
      tx["tx1"] = "\"#{giggle}\n I'll give you plenty of things to squeal 'bout tonight\\H」"
      #▼ 
      tx["tx1"] = "\"#{giggle}\n Dunno if it's 'cause of where we're at,\n but I feel sorta embarrassed……\\H\"" if $msg.t_enemy.bedin_count == 0
    end
  #●空腹戦闘中
  elsif $game_switches[86] == true
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"#{giggle}\n It won't hurt to suck you a little,\n right, #{target}....?\\H\""
    when 1 #２番目
      tx["tx1"] = "\"Gee....\\H\n Save some for me, will you....?\""
    when 2 #３番目
      tx["tx1"] = "\"All we're gonna do is have some fun....\\H\n Just sit still for a bit♪\""
    end
  #●レア戦闘中(OFEの場合は[$game_switches[92] == true]、BOSSの場合は[$game_switches[91] == true]をそれぞれelsifでつけること)
  else
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"Hey you, play with us\\H\""
    when 1 #２番目
      tx["tx1"] = "\"Didn't think we'd run into a lost kid.\n You all right? Why don't we show you the way?\""
    when 2 #３番目
      tx["tx1"] = "\"Oh boy, been a since since we found a boy!\n *Ba-dump *ba-tump....\\H\""
    end
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
#■逃走失敗口上
elsif $msg.tag == "Escape fail"
  tx["tx1"] = "\"Aha, gotcha♪\n Keep playing with me, #{target}\\H\""
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
    tx["tx1"] = "\"Aha....that was fun♪\n But do I have to say goodbye to #{target} now....?\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"....Say, #{target},\n if I were to tag along with you....\n what would you do?\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(即座に仲間に入る)
  when 2
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Huh....? Really?!\n Can I? Can I really gonna tag after you?!\n ....Yay, so happy♪\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"Ehehe....\\H\n We'll be friends from now on....right? \\H\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(ホームに送る)
  when 3
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Huh....? Really?!\n Can I? Can I really gonna tag after you?!\n ....Yay, so happy♪\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"Ah, but you've got way too many friends.\n Then how about I head to your home, #{target}?\n You better hurry up and come back; I'll be waiting♪\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約を行わない
  when 4
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aaah....okay then.\n Although I was a little serious 'bout it....see?\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"Then let's meet again, #{target}.\n It's a promise!\""
    #----------------------------------------------------------------------------------------------------------------------
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
end
#######################################################################################################################
 end #def
end #class
