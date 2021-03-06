=begin
#######################################################################################################################
 ●『インプ（緑）』マップ口上(イベント)
 ●性格：虚勢
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





class MsgImp_A < MsgBase
 def msg_map_event_11
#=======================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
#######################################################################################################################
################################################★マップイベント★#####################################################
#######################################################################################################################
case $msg.tag
#=======================================================================================================================
#★精の献上-----------------------------------------------------------------------------------------------------------#
when "Energy Feeding"
  #====================================================================================================================
  #◆【大事な人】状態◆
  if $msg.t_enemy.have_ability?("Significant Other")
  #====================================================================================================================
    case $msg.talk_step
    when 1 #献上開始
      tx["tx1"] = "\"Hey hey, #{target}♪\n #{myname} want it now♪\n What is it? ....Isn't it \'that\', obviously? #{giggle}\""
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "\"Aha, so much came out♪\n Dunno if #{myname} can drink it all by myself....\\H\""
      #------------------------------------------------------------------------------------------------------------------
    end

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    case $msg.talk_step
    when 1 #献上開始
      tx["tx1"] = "\"Hey hey, #{target}♪\n #{myname} want it now♪\n What is it? ....Isn't it \'that\', obviously? #{giggle}\""
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "\"Aha, so much came out♪\n Dunno if #{myname} can drink it all by myself....\\H\""
      #------------------------------------------------------------------------------------------------------------------
    end

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    case $msg.talk_step
    when 1 #献上開始
      tx["tx1"] = "\"Hey hey, #{target}♪\n #{myname}'m starving here♪\n Lemme have a lot\\H\""
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "\"Wowie, so much came out♪\n Then time to dig in\\H\""
      #------------------------------------------------------------------------------------------------------------------
    end
  end
  #格納
  ms.push(tx)



#=======================================================================================================================
#★空腹-----------------------------------------------------------------------------------------------------------#
when "Hungry"
  #====================================================================================================================
  #◆【大事な人】状態◆
  if $msg.t_enemy.have_ability?("Significant Other")
  #====================================================================================================================
    case $msg.talk_step
    when 1 # 空腹１人目
      tx["tx1"] = "\"#{target}... #{myname} can't move anymore....\n I'm so starving....\n Can't move anymore....\""
      tx["tx2"] = "\"....Oh, that's right!\n I remember #{myname} formed a contract!\""
      tx["tx3"] = "\"You promised to give me some of your milk\n when I get hungry♪\n Hooray♪ Hey hey, hurry up and lemme have some\\H\""
      tx["tx4"] = "#{speaker} approaches quietly!\n#{master} has nowhere to escape....!" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "\"Aaah, #{myname} want some too!\n Can you save some for me?\""
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "\"Augh, #{myname}'m dead last.... Can't say if I'll get to have any....\""
      tx["tx2"] = "\"Break your leg, #{target}!\n Save some for me!\""
    end

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    case $msg.talk_step
    when 1 # 空腹１人目
      tx["tx1"] = "\"#{target}... #{myname} can't move anymore....\n I'm so starving....\n Can't move anymore....\""
      tx["tx2"] = "\"....Oh, that's right!\n I remember #{myname} formed a contract!\""
      tx["tx3"] = "\"You promised to give me some of your milk\n when I get hungry♪\n Hooray♪ Hey hey, hurry up and lemme have some\\H\""
      tx["tx4"] = "#{speaker}'s eyes have an eerie shine to them!\n#{master} has nowhere to escape....!" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "\"Aaah, #{myname} want some too!\n Can you save some for me?\""
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "\"Augh, #{myname}'m dead last.... Can't say if I'll get to have any....\""
      tx["tx2"] = "\"Break your leg, #{target}!\n Save some for me!\""
    end

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    case $msg.talk_step
    when 1 # 空腹１人目
      tx["tx1"] = "\"#{target}... #{myname} can't move anymore....\n I'm so starving....\n Can't move anymore....\""
      tx["tx2"] = "\"....Oh, that's right!\n I remember #{myname} formed a contract!\""
      tx["tx3"] = "\"You promised to give me some of your milk\n when I get hungry♪\n Hooray♪ Hey hey, hurry up and lemme have some\\H\""
      tx["tx4"] = "#{speaker} is going mad from the hunger!\n#{master} has nowhere to escape....!" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "\"Aaah, #{myname} want some too!\n Can you save some for me?\""
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "\"Augh, #{myname}'m dead last.... Can't say if I'll get to have any....\""
      tx["tx2"] = "\"Break your leg, #{target}!\n Save some for me!\""
    end
  end
  #格納
  ms.push(tx)



#=======================================================================================================================
#★調理技能-----------------------------------------------------------------------------------------------------------#
when "Cook"
  case $msg.at_type
  when "Put on Steam"
    #==================================================================================================================
    #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
    #==================================================================================================================
    tx["tx1"] = "\"Leave it to me♪\""
    #格納
    ms.push(tx)
    #==================================================================================================================
    # ☆事前設定☆
                            #空ハッシュ再挿入
                            tx={}
    #力量に応じて変化
    case $msg.t_enemy.cook_dex
    #消し炭orどろどろ
    when 0..49
      tx["tx1"] = "\"Ehehe♪\n I'll try my best\\H\""
    #サラダやサンドイッチが作れるレベル
    when 50..149
      tx["tx1"] = "\"Leave it to me♪\n I'll make it right away\\H\""
    #マリネやスープが作れるレベル
    when 150..349
      tx["tx1"] = "\"Leave it to me♪\n I'll try my best\\H\""
    #メインディッシュが作れるレベル
    when 350..999
      tx["tx1"] = "\"Leave it to me♪\n I'll try my best\\H\""
    end
    #格納
    ms.push(tx)
  end



#=======================================================================================================================
#★ランクアップ(対応しない夢魔は項目ごと消去推奨----------------------------------------------------------------------#
when "Rank Up"
  case $msg.talk_step
  when 1 #ランクアップ前口上
 #  tx["tx1"] = ""
  when 2 #ランクアップ開始
 #  tx["tx1"] = ""
  when 3 #ランクアップ終了
 #  tx["tx1"] = ""
  when 4 #ランクアップしない
 #  tx["tx1"] = ""
  end
  #格納
  ms.push(tx)
#---------------------------------------------------------------------------------------------------------------------#
end
#######################################################################################################################
 end #def
end #class
