=begin
#######################################################################################################################
 ●『インプ（緑）』戦闘開始、終了口上
 ●性格：虚勢
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

class MsgImp_A < MsgBase
 def msg_op_and_ep_11
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
      tx["tx1"] = "\"#{giggle}\n Time to play with you a lot♪\""
      #▼初ベッドイン
      tx["tx1"] = "\"So this is your room, huh, #{target}\\H\n ....Dunno why, but\n it makes my heart pound a little....\\H\"" if $msg.t_enemy.bedin_count == 0
    when 1 #２番目
      tx["tx1"] = "\"Maan,\n He's supposed to\n play with me!\n No butting in, got it?\""
      #▼初ベッドイン
      tx["tx1"] = "\"Oh wow, the bed's so fluffy♪\n ....Uhh, we're gonna have sex from now on, right....?\n I'm not gonna fall behind, you know?\"" if $msg.t_enemy.bedin_count == 0
    when 2 #３番目
      tx["tx1"] = "\"#{myname}'m gonna play with you too, #{target}♪\n That's what you prefer, right?\""
      #▼初ベッドイン
      tx["tx1"] = "\"Aieee\\H\n I'm gonna get attacked by #{target}♪\n Ahahahaha\\H\"" if $msg.t_enemy.bedin_count == 0
    end
  #●空腹戦闘中
  elsif $game_switches[86] == true
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"#{target}....\n #{myname}'m starving....\n That means I can eat you a little, right?\""
    when 1 #２番目
      tx["tx1"] = "\"Aaugh,\n #{myname} gotta eat too\\H\""
    when 2 #３番目
      tx["tx1"] = "\"Ugh....\n Am I gonna get left out too....?\""
    end
  #●レア戦闘中(OFEの場合は[$game_switches[92] == true]、BOSSの場合は[$game_switches[91] == true]をそれぞれelsifでつけること)
  else
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"Holy moly, I've never seen this guy before!\n ....Oh, but it's an adult.\n Is it fine to talk to him?\""
    when 1 #２番目
      tx["tx1"] = "\"Hey, are you lost?\n You should know this is our playground.\""
    when 2 #３番目
      tx["tx1"] = "\"Uuuh....I'm gonna talk to a boy for the first time....\n Hey, what should we talk about....?\""
    end
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
#■逃走失敗口上
elsif $msg.tag == "Escape fail"
  tx["tx1"] = "\"Hey hey, where're you going?\n Lemme go with you♪\""
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
    tx["tx1"] = "\"....Hey, #{target}. Are you gonna go home now?\n #{myname} wanna play more with you....\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"Hey, #{target}.\n Can't #{myname} follow you?\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx3"] = "\"I promise I'll be a good girl....\n Pretty please, #{target}?」"
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(即座に仲間に入る)
  when 2
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Really?!\n You're not lying, right?!\n Hooray♪\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"Ehehe....\\H\n Then I'm gonna follow you\\H\n You're the best, #{target}\\H\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(ホームに送る)
  when 3
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Really?!\n You're not lying, right?!\n Hooray♪\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"Ah, but you've got way too many pals with you.\n Then I'll behave like a good girl at your house\\H\n So you better come back quick\\H\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約を行わない
  when 4
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"You really can't....?\n ....*Sob....\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"!?\n I-I wasn't crying or anything!\n #{myname}'ve got tons of pals anyway!\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx3"] = "\"……\\|……\\|Still,\n remember to come and visit me sometimes.\n It's a promise.\""
    #----------------------------------------------------------------------------------------------------------------------
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
end
#######################################################################################################################
 end #def
end #class
