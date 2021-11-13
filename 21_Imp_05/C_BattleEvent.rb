=begin
#######################################################################################################################
 ●『インプ（緑）』戦闘開始、終了口上
 ●性格：勝ち気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

class MsgImp_A < MsgBase
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
      tx["tx1"] = "\"Ahaha♪\n Like always, let's have lots of fun tonight♪\""
      #▼初ベッドイン
      tx["tx1"] = "\"Yay, the bed's so nice and fluffy♪\n Guess this is where we're gonna have sex from now on\\H\"" if $msg.t_enemy.bedin_count == 0
    when 1 #２番目
      tx["tx1"] = "\"#{giggle}\n So you wanna play with me, huh?\n I won't fall behind, you know? \\H\""
      #▼初ベッドイン
      tx["tx1"] = "\"So this is your room, huh, #{target}\\H\n Whoa, so incredible\\H\"" if $msg.t_enemy.bedin_count == 0
    when 2 #３番目
      tx["tx1"] = "\"#{giggle}\n #{myname} wanna play a lot too\\H\n Lemme join you guys♪\""
      #▼初ベッドイン
      tx["tx1"] = "\"#{giggle}\n So you've brought me to a place like this\\H\n What're you gonna do to me? \\H\"" if $msg.t_enemy.bedin_count == 0
    end
  #●空腹戦闘中
  elsif $game_switches[86] == true
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"Hey, #{target}....\\H\n My tummy's growling like crazy....\\H\""
    when 1 #２番目
      tx["tx1"] = "\"Gimme me a snack, #{target}♪\n Of course, the one that's hot and white♪\""
    when 2 #３番目
      tx["tx1"] = "\"#{giggle}\n Lemme join in too\\H\n You're fine with that, right, #{target}? ♪\""
    end
  #●レア戦闘中(OFEの場合は[$game_switches[92] == true]、BOSSの場合は[$game_switches[91] == true]をそれぞれelsifでつけること)
  else
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"Hello there!\n Wanna play with us, #{target}?\""
    when 1 #２番目
      tx["tx1"] = "\"Hey, hey, where'd you come from?\n #{myname}'m an Imp, nice to meetcha!\""
    when 2 #３番目
      tx["tx1"] = "\"#{giggle}\n You're so tall, #{target}♪\n C'mere and hug me tight\\H\""
    end
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
#■逃走失敗口上
elsif $msg.tag == "Escape fail"
  tx["tx1"] = "\"Ahaha, time to play tag♪\n Gotcha\\H\""
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
    tx["tx1"] = "\"Hey, #{target}. Are you gonna go home now?\n Keep playing with me.\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"....Ah, I have an idea!\n Hey, hey, can I go with you?\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx3"] = "\"You see, #{myname}\n wanna play more with you, #{target}♪\n You're fine with that, right?\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(即座に仲間に入る)
  when 2
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Woo-hoo!\n You're the best, #{target}♪\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"You better play with me a lot, #{target}♪\n It's a promise\\H\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(ホームに送る)
  when 3
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Woo-hoo!\n You're the best, #{target}♪\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"....Uhh, but you've got way too many pals with you.\n Then time to play at your house♪\n Wonder what house it is? Can't wait to find out\\H\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約を行わない
  when 4
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Wha? So lame....!\n Hmph, fine then....\n I'm just gonna play with another guy....!\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"....Still,\n let's play again next time.\n You better, okay?\""
    #----------------------------------------------------------------------------------------------------------------------
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
end
#######################################################################################################################
 end #def
end #class
