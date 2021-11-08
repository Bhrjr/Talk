=begin
#######################################################################################################################
 ●『サキュバス（桃）』戦闘開始、終了口上
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

class MsgSuccubus_B < MsgBase
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
      tx["tx1"] = "\"#{giggle}\n Then how about we get the ball rolling right away ?\\H\n Tonight's gonna get steamy too....\\H」"
      #▼初ベッドイン
      tx["tx1"] = "\"Ufufu....a room like this isn't too shabby either\\H\n Let's both forget ourselves....\n and roughly indulge in each other\\H\"" if $msg.t_enemy.bedin_count == 0
    when 1 #２番目
      tx["tx1"] = "\"Looks like the night's gonna be long....\\H\n Time to enjoy ourselves as much as we can\\H」"
      #▼初ベッドイン
      tx["tx1"] = "\"#{giggle}\n I better repay you for form a contract with me\\H\n All with my body, of course....\\H\"" if $msg.t_enemy.bedin_count == 0
    when 2 #３番目
      tx["tx1"] = "\"#{giggle}\n Wanna see how many times you can cum tonight? \""
      #▼初ベッドイン
      tx["tx1"] = "\"#{giggle}\n My body's yours and yours only, #{target}\\H\n Indulge in it all you want....\\H\"" if $msg.t_enemy.bedin_count == 0
    end
  #●空腹戦闘中
  elsif $game_switches[86] == true
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"#{giggle}\n I'd say a mischievous boy deserves to punished\\H\""
    when 1 #２番目
      tx["tx1"] = "\"Maybe a little pain would go a long way?\n ....Oh, I was thinking of stuff that feels good\\H\""
    when 2 #３番目
      tx["tx1"] = "\"Now then....\\H\n Wonder if you've....all good to go? \\H\""
    end
  #●レア戦闘中(OFEの場合は[$game_switches[92] == true]、BOSSの場合は[$game_switches[91] == true]をそれぞれelsifでつけること)
  else
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"Oh, my....\\H\n Looks like a tasty-looking kid just wandered into us\\H\n Ufufu, what say we play with him a little....\\H\""
    when 1 #２番目
      tx["tx1"] = "\"Hey, come here.\n We'll show you something fun\\H\""
    when 2 #３番目
      tx["tx1"] = "\"You don't have to be scared\\H\n For just a little while,\n you'll get to have a nice, pleasant dream....\\H\""
    end
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
#■逃走失敗口上
elsif $msg.tag == "Escape fail"
  tx["tx1"] = "\"Ufufufu....♪\n No way I'm letting you escape.\n Just behave and be my plaything\\H\""
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
    tx["tx1"] = "\"Aaannh....\\H\n That was nice\\H\n Would've never guessed how amazing you'd be from the way you look....\\H\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"Say, #{target}....?\n Don't you feel like making me your belonging?\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx3"] = "\"Forming a contract will let you violate me all you want....\\H\n How about it? Not too bad of a proposal, I'd say.\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(即座に仲間に入る)
  when 2
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ufufu....\\H\n Guess that means we now have a contract\\H\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"You'll be my owner from now on, #{target}.\n Glad to meet you, my adorable master\\H\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(ホームに送る)
  when 3
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ufufu....\\H\n Guess that means we now have a contract\\H\n Then I'll go ahead and get the bed ready.\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"It'd be nice for you to hurry up and come back\\H\n Then glad to meet you, my adorable master♪\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約を行わない
  when 4
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n You're more stoic than you look.\n I don't mind that either.\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"Come and see us again.\n I'll do well to welcome you in all kinds of ways.\n All kinds of ways....got it? \\H\""
    #----------------------------------------------------------------------------------------------------------------------
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
end
#######################################################################################################################
 end #def
end #class
