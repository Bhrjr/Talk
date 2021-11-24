=begin
#######################################################################################################################
 ●『デビル（緑）』戦闘開始、終了口上
 ●性格：虚勢
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

class MsgDevil_A < MsgBase
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
      tx["tx1"] = "\"....Eh, we're starting already?\n Oh, well #{myname} don't mind that.\""
      #▼初ベッドイン
      tx["tx1"] = "\"....Wha, quit staring at me like that.\n ....Bah....! I'm not nervous or anything!\"" if $msg.t_enemy.bedin_count == 0
      tx["tx2"] = "\"Why you....you better be prepared.\n I'm gonna make you say you lost ASAP!\"" if $msg.t_enemy.bedin_count == 0
    when 1 #２番目
      tx["tx1"] = "\"Now how do you want me to attack you?\n If there's one you want, I'll do it for you\\H\""
      #▼初ベッドイン
      tx["tx1"] = "\"Aaah....what's with that?\n We're doing it from now on, yeah?\"" if $msg.t_enemy.bedin_count == 0
      tx["tx2"] = "\"....Gah, that's what I get for forming a contract with you.\n Just do whatever you want with me.\"" if $msg.t_enemy.bedin_count == 0
    when 2 #３番目
      tx["tx1"] = "\"Facing 3 people at once tells me how hardworking you are.\n Maybe I should show you something nice here\\H\""
      #▼初ベッドイン
      tx["tx1"] = "\"So....can I ask you to go easy on me?\n In all honesty, I've never done it before with the modd like this.\"" if $msg.t_enemy.bedin_count == 0
      tx["tx2"] = "\"....You there!\n Don't you make that weird smile at me!\"" if $msg.t_enemy.bedin_count == 0
    end
  #●空腹戦闘中
  elsif $game_switches[86] == true
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"Damn, #{target}....\n If you just stay obedent,\n you wouldn't hafta go through any of this, you hear?\""
    when 1 #２番目
      tx["tx1"] = "\"#{giggle}\n Just keep still, alright....?\""
    when 2 #３番目
      tx["tx1"] = "\"I really hope you're prepared here.\n #{giggle}\""
    end
  #●レア戦闘中(OFEの場合は[$game_switches[92] == true]、BOSSの場合は[$game_switches[91] == true]をそれぞれelsifでつけること)
  else
    case $msg.talk_step
    when 0 #１番目
      tx["tx1"] = "\"Whoa there....what a rare sight.\n A human male....or is it a kid?\n How interesting, I was just getting bored.\""
    when 1 #２番目
      tx["tx1"] = "\"Hmph....physiques-wise, he looks fairly alright.\n Now how'll you manage to entertain me, I wonder? \\H\""
    when 2 #３番目
      tx["tx1"] = "\"Well, it's better that I don't get my hopes up too much.\n What say I try my very best here? \\H\""
    end
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
#■逃走失敗口上
elsif $msg.tag == "Escape fail"
  tx["tx1"] = "\"Where you going, #{target}?\n You're that scared of me?\""
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
    tx["tx1"] = "\"Gah....!\n Crap, I lost, eh....\n Most guys would just cower at the sight of me....\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"Gaah, I lost, dammit!\n Fuck me, mock me, form a contract with me; do whatever you want.\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(即座に仲間に入る)
  when 2
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....Eh, a contract....?\n You serious 'bout that?\n Ah, well, not like I'd hate that or anything, really....\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"....Ah-, well, that never happened before.\n Uhhh, nice to meet you....\n ....Is that good enough?\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx3"] = "\"....Wow, my heart began to race all of a sudden!?\n Gaah, don't look here!\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約締結(ホームに送る)
  when 3
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....Eh, a contract....?\n You serious 'bout that?\n Ah, well, not like I'd hate that or anything, really....\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"Ah....I see you're full with allies for now.\n Then I just need to make my way to your home.\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx3"] = "\"....Better not regret it, you hear?\n Hehe, so there are strange guys like that....\\H\""
    #----------------------------------------------------------------------------------------------------------------------
  #▼契約を行わない
  when 4
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Wha, you're not gonna do anything to me?\n You're a strange one, #{target}.\""
    # . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . .
    tx["tx2"] = "\"When I see you again, I'm going all out.\n ....I'm not kidding, so prepare yourself, yeah?\""
    #----------------------------------------------------------------------------------------------------------------------
  end
  #格納
  ms.push(tx)





#----------------------------------------------------------------------------------------------------------------------
end
#######################################################################################################################
 end #def
end #class
