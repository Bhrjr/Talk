=begin
#######################################################################################################################
 ●『サキュバスロード（橙）』戦闘開始、終了口上
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,07/27     仮設定
 2016,08/18     記述ミスを整形
#######################################################################################################################
=end

class MsgSuccubuslord_A < MsgBase
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
      tx["tx1"] = "\"I'm glad I'll get to spend the night with you, #{target}.\n How will you show me your love tonight?\n Ufufu, can't wait to see\\H\""
      #▼初ベッドイン
      tx["tx1"] = "\"Ufufu, I've been waiting for you.\n I'm willing to take in whatever lust you have tonight.\n Show me your everything, #{target}....\\H\"" if $msg.t_enemy.bedin_count == 0
    when 1 #２番目
      tx["tx1"] = "\"I want you to show me what\n you want to my body, #{target}.\n I'll make sure of it to answer it all\\H\""
      #▼初ベッドイン
      tx["tx1"] = "\"It's my first time to get together with you here.\n I'd like you to show me\n your very whole being\\H\"" if $msg.t_enemy.bedin_count == 0
    when 2 #３番目
      tx["tx1"] = "\"Feel free to leave everything to me.\n I'll do well to make this night the best\\H\""
      #▼初ベッドイン
      tx["tx1"] = "\"#{giggle_s} Anyone told you how greedy you are, #{target}?\n I doubt you'll be able to show proper love to everyone\\H\"" if $msg.t_enemy.bedin_count == 0
    end
  #●空腹戦闘中
  elsif $game_switches[86] == true
    case $msg.talk_step
    when 0 #１番目
    tx["tx1"] = "\"You'll get to see the hunger I endured\n in full charm....\nUfufu, sorry if I go too hard on you\\H\""
      tx["tx1"] = "\"Been a long time since I took you on like this....\\H\n See to it that you show me love like how you did the first time\\H\"\n#{speaker}'s eyes are gleaming with lust....!" if $msg.t_enemy.have_ability?("Significant Other")
    when 1 #２番目
      tx["tx1"] = "\"I don't know if this is shameful of me, but\n but this is how it is for all succubi once they're hungry.\n Aaah, you smell wonderful, #{target}....\\H\""
    when 2 #３番目
      tx["tx1"] = "\"#{giggle_s} Looks like you get to pick and choose\\H\n I just wonder who'll be the one\n to give you love, #{target}\\H\""
    end
  #●レア戦闘中(OFEの場合は[$game_switches[92] == true]、BOSSの場合は[$game_switches[91] == true]をそれぞれelsifでつけること)
  else
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"Oh my, a lost child, perhaps?\n ....#{giggle_s} That can't be.\n What could you want to have come this far? \\H\""
    when 1 #２番目
      tx["tx1"] = "\"I'm not letting you get away.\n Instead, I'll treat you with love, #{target}\\H\""
    when 2 #３番目
      tx["tx1"] = "\"#{giggle_s} What a lovely face.\n Makes me just want to captivate it....\\H\""
    end
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
#■逃走失敗口上
elsif $msg.tag == "Escape fail"
  tx["tx1"] = "\"Nuh-uh, I'm not satisfied yet.\n Of course, I'm certain you're the same, #{target}\\H\""
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
    tx["tx1"] = "\"I was going to treat you with love,\n but I was the one that got treated with love instead....\\H\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"#{myname}'ve taken a liking to you, #{target}.\n I wonder if you can let me be by your side?\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx3"] = "\"I'll off up this body whenever you want.\n We'll get to make some conversations, and what we'll do at nighttime goes without questin.\n ....What do you say?」"
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(即座に仲間に入る)
  when 2
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ufufu, thanks.\n We'll be partners from here on out, #{target}\\H\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "#{speaker} smiled happily and\n wrapped #{master}'s hand with both her hands."
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(ホームに送る)
  when 3
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ufufu, thanks.\n Call me if you need something; I'll be waiting at all times\\H\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "Pecking #{master} on the cheek, \n#{speaker} smiled softly."
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約を行わない
  when 4
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....I see, that's a shame.\n I suppose I'll pull out for today.\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"Come and see me again whenever you change your mind.\n Knowing that you've turned me down,\n I'll be sure to give you a passionate welcome with everyone\\H\""
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
