=begin
#######################################################################################################################
 ●『デビル（緑）』戦闘開始、終了口上
 ●性格：勝ち気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

class MsgDevil_A < MsgBase
 def msg_op_and_ep_05
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
      tx["tx1"] = "\"#{giggle}\n Then what say we enjoy ourselves to the fullest? \\H\""
      #▼初ベッドイン
      tx["tx1"] = "\"....What is it? Nervous?\n ....Relax, #{myname}'m the same\\H\n Then what say we break the ice....? \\H\"" if $msg.t_enemy.bedin_count == 0
    when 1 #２番目
      tx["tx1"] = "\"Hey, no head start here.\n Could you let me chip in?\""
      #▼初ベッドイン
      tx["tx1"] = "\"This room ain't so shabby.\n ....I guess it won't hurt to make it a little unruly\\H\"" if $msg.t_enemy.bedin_count == 0
    when 2 #３番目
      tx["tx1"] = "\"You'll be sorry to forget about me, you hear?\n Then let's have a steamy night with everyone, shall me? \\H\""
      #▼初ベッドイン
      tx["tx1"] = "\".....Haha, it's not like you to be so nervous.\n Oh well, do you mind going easy on me....? \\H\"" if $msg.t_enemy.bedin_count == 0
    end
  #●空腹戦闘中
  elsif $game_switches[86] == true
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"#{giggle}\n Now then....where do you want me to make you ejaculate from? \\H\""
    when 1 #２番目
      tx["tx1"] = "\"Heeeey....\n You mind saving some for me?\""
    when 2 #３番目
      tx["tx1"] = "\"Oh well, not like you'll die, knowing that I have a contract with you.\n ....Is what I said, but you did brace yourself, right? \\H\""
    end
  #●レア戦闘中(OFEの場合は[$game_switches[92] == true]、BOSSの場合は[$game_switches[91] == true]をそれぞれelsifでつけること)
  else
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"Hold on, we have rare guest here.\n Seeing how rare of an occasion this is, we should go out somewhere.\""
    when 1 #２番目
      tx["tx1"] = "\"What is it, you wanna go?\n Guess that means you have a fondness for kids....\n ....Oh well, not like #{myname}'m in a place to say anything about it\\H\""
    when 2 #３番目
      tx["tx1"] = "\"Relax, I'm not gonna like, take your life.\n ....Well, you won't be able to stand for a good while though\\H\""
    end
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
#■逃走失敗口上
elsif $msg.tag == "Escape fail"
  tx["tx1"] = "\"Yo....!\n Hold your horses there, #{target}.\n Not when the fun is just getting started.\""
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
    tx["tx1"] = "\"....Nfufu.\n Ahaha, I lost♪\n You've got some fight in you, #{target}.\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"I like that, #{target}.\n How about it, you interested in forming a contract with me?\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx3"] = "\"With you,\n I'd say I'd be able to build a fairly good relationship.\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(即座に仲間に入る)
  when 2
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, for real?\n #{myname} figured as much.\n You've got some balls, #{target}♪\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"Then that makes us acquainted from now on....I guess.\n I'll be counting on you, #{target}\\H」"
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(ホームに送る)
  when 3
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, for real?\n #{myname} figured as much.\n You've got some balls, #{target}♪\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"Hold on.... looks like you've got far too many palsies with you.\n Then let me go ahead and pay your house a visit.\n Catch you later....\\H\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約を行わない
  when 4
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh well, I'm to blame for asking so suddenly.\n If you ever change your mind, be sure to come and see me.\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"With all that said, #{target}, I had a good time.\n I won't lose next time, you hear?\""
    #----------------------------------------------------------------------------------------------------------------------
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
end
#######################################################################################################################
 end #def
end #class
