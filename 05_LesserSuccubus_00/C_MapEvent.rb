=begin
#######################################################################################################################
 ●『レッサーサキュバス（橙）』マップ口上(イベント)
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,08/19     記述ミス修正。
#######################################################################################################################
=end





class MsgLessersuccubus_A < MsgBase
 def msg_map_event_00
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
      tx["tx1"] = "\"Ufu\\H Make sure to give me plenty♪\""
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "\"Ahaa...\\H So yummy....\\H\""
      #------------------------------------------------------------------------------------------------------------------
    end

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    case $msg.talk_step
    when 1 #献上開始
      tx["tx1"] = "\"Ufu\\H Make sure to give me plenty♪\""
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "\"Ahaa...\\H So yummy....\\H\""
      #------------------------------------------------------------------------------------------------------------------
    end

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    case $msg.talk_step
    when 1 #献上開始
      tx["tx1"] = "\"Ufu\\H Make sure to give me plenty♪\""
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "\"Ahaa...\\H So tasty....\\H\""
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
      tx["tx1"] = "\"Hey, earth to #{target}!\n Haven't you forgotten something important for a while....?\n Answer me before I count to 5♪\n \\|5....\\|4....\\|3....\\|2....\\|1....\""
      tx["tx2"] = "\"....Bzzt! Time's up♪\n As a punishment, you have to be my meal, #{target}\\H\n Geez...you totally forget you had a contract with me....!\""
      tx["tx3"] = "\"I'm gonna punish you to make sure you don't forget it ever again, #{target}\\H\n Haaaa! You better prepare yourself! \\H\""
      tx["tx4"] = "#{speaker} approaches quietly!\n#{master} has nowhere to escape....!" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "\"Hey, wait up! I'm not letting you get a head start!\n I said wait, #{myname}!\""
      tx["tx2"] = "\"Lemme join in too♪\n You're not gonna refuse or anything, are you, #{target}? \\H\""
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "\"#{giggle}\n On that note, I'm gonna join in too♪\""
      tx["tx2"] = "\"Perfect timing!\n Why don't we all have a meal together\\H\""
    end

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    case $msg.talk_step
    when 1 # 空腹１人目
      tx["tx1"] = "\"Hey, earth to #{target}!\n Haven't you forgotten something important for a while....?\n Answer me before I count to 5♪\n \\|5....\\|4....\\|3....\\|2....\\|1....\""
      tx["tx2"] = "\"....Bzzt! Time's up♪\n As a punishment, you have to be my meal, #{target}\\H\n Geez...you totally forget you had a contract with me....!\""
      tx["tx3"] = "\"I'm gonna punish you to make sure you don't forget it ever again, #{target}\\H\n Haaaa! You better prepare yourself! \\H\""
      tx["tx4"] = "#{speaker}'s eyes have an eerie shine to them!\n#{master} has nowhere to escape....!" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "\"Hey, wait up! I'm not letting you get a head start!\n I said wait, #{myname}!\""
      tx["tx2"] = "\"Lemme join in too♪\n You're not gonna refuse or anything, are you, #{target}? \\H\""
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "\"#{giggle}\n On that note, I'm gonna join in too♪\""
      tx["tx2"] = "\"Perfect timing!\n Why don't we all have a meal together\\H\""
    end

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    case $msg.talk_step
    when 1 # 空腹１人目
      tx["tx1"] = "\"Hey, earth to #{target}!\n Haven't you forgotten something important for a while....?\n Answer me before I count to 5♪\n \\|5....\\|4....\\|3....\\|2....\\|1....\""
      tx["tx2"] = "\"....Bzzt! Time's up♪\n As a punishment, you have to be my meal, #{target}\\H\n Geez...you totally forget you had a contract with me....!\""
      tx["tx3"] = "\"I'm gonna punish you to make sure you don't forget it ever again, #{target}\\H\n Haaaa! You better prepare yourself! \\H\""
      tx["tx4"] = "#{speaker} is going mad from the hunger!\n#{master} has nowhere to escape....!" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "\"Hey, wait up! I'm not letting you get a head start!\n I said wait, #{myname}!\""
      tx["tx2"] = "\"Lemme join in too♪\n You're not gonna refuse or anything, are you, #{target}? \\H\""
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "\"#{giggle}\n On that note, I'm gonna join in too♪\""
      tx["tx2"] = "\"Perfect timing!\n Why don't we all have a meal together\\H\""
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
    tx["tx1"] = "\"I'll make something that'll pump you up\\H\""
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
      tx["tx1"] = "\"I'll make something that'll pump you up\\H\n ....How do you use this?\""
    #サラダやサンドイッチが作れるレベル
    when 50..149
      tx["tx1"] = "\"I'll make something that'll pump you up\\H\""
    #マリネやスープが作れるレベル
    when 150..349
      tx["tx1"] = "\"I'll make something that'll pump you up\\H\""
    #メインディッシュが作れるレベル
    when 350..999
      tx["tx1"] = "\"I'll make something that'll pump you up\\H\""
    end
    #格納
    ms.push(tx)
  end



#=======================================================================================================================
#★ランクアップ(対応しない夢魔は項目ごと消去推奨----------------------------------------------------------------------#
when "Rank Up"
  case $msg.talk_step
  when 1 #ランクアップ前口上
    tx["tx1"] = "\"#{giggle}\n You wanna see me all grown-up?\n I think that's doable by now\\H\""
  when 2 #ランクアップ開始
    tx["tx1"] = "\"Then take a look....\\H\n Nnn....aah....aaah....\\H\""
  when 3 #ランクアップ終了
    tx["tx1"] = "\"#{giggle}\"" #ここは表示されない。ランクアップ後の姿で設定する。
  when 4 #ランクアップしない
    tx["tx1"] = "\"You're fine with how I am now?\n Nfufu, if you say so, #{target}♪\""
  end
  #格納
  ms.push(tx)
#---------------------------------------------------------------------------------------------------------------------#
end
#######################################################################################################################
 end #def
end #class
