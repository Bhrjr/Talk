=begin
#######################################################################################################################
 ●『サキュバス（橙）』マップ口上(イベント)
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





class MsgSuccubus_A < MsgBase
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
      tx["tx1"] = "\"Augh, hurry and and give it here\\H\""
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "\"#{pleasure_s}\n Ufufu....I'm covered with pure-whiteness now....\\H\""
      #------------------------------------------------------------------------------------------------------------------
    end

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    case $msg.talk_step
    when 1 #献上開始
       tx["tx1"] = "\"Augh, hurry and and give it here\\H\""
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "\"#{pleasure_s}\n Ufufu....I'm covered with pure-whiteness now....\\H\""
      #------------------------------------------------------------------------------------------------------------------
    end

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    case $msg.talk_step
    when 1 #献上開始
      tx["tx1"] = "\"Ufufu, now then....thanks for the grub\\H\""
      #------------------------------------------------------------------------------------------------------------------
    when 2 #献上終了
      tx["tx1"] = "\"Aah....you let out so much\\H\""
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
      tx["tx1"] = "\"Augh....my patience is at it's limit....\\H\n Hey....what say we have some fun right now?\n I'm so hungry....\\H\""
      tx["tx2"] = "\"Hey, you want me to do it with my mouth? Or with my hands?\n I'm willing to do whichever at your request....\""
      tx["tx3"] = "\"Hurry up and gimme your hot stuff, #{target}\\H\n Hey, hurry....\\H\""
      tx["tx4"] = "#{speaker} approaches quietly!\n#{master} has nowhere to escape....!" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "\"Come on, you can't just have him all to yourself.\n You're not the only one that's hungry....\\H\""
      tx["tx2"] = "\"Let's do halfsies at least\\H\n Forget about first come, first served.\""
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
      tx["tx1"] = "\"Can you like, not forget 'bout me?\n Each person get a third, you hear? \\H\""
      tx["tx2"] = "\"#{giggle}\n I know it's gonna be tough to deal with 3 girls at once, but good luck anyway\\H\""
    end

  #====================================================================================================================
  #◆【寵愛】状態◆
  elsif $msg.t_enemy.have_ability?("Affection")
  #====================================================================================================================
    case $msg.talk_step
    when 1 # 空腹１人目
      tx["tx1"] = "\"Augh....my patience is at it's limit....\\H\n Hey....what say we have some fun right now?\n I'm so hungry....\\H\""
      tx["tx2"] = "\"Hey, you want me to do it with my mouth? Or with my hands?\n I'm willing to do whichever at your request....\""
      tx["tx3"] = "\"Hurry up and gimme your hot stuff, #{target}\\H\n Hey, hurry....\\H\""
      tx["tx4"] = "#{speaker}'s eyes have an eerie shine to them!\n#{master} has nowhere to escape....!" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "\"Come on, you can't just have him all to yourself.\n You're not the only one that's hungry....\\H\""
      tx["tx2"] = "\"Let's do halfsies at least\\H\n Forget about first come, first served.\""
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
     tx["tx1"] = "\"Can you like, not forget 'bout me?\n Each person get a third, you hear? \\H\""
      tx["tx2"] = "\"#{giggle}\n I know it's gonna be tough to deal with 3 girls at once, but good luck anyway\\H\""
    end

  #====================================================================================================================
  #◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
  else
  #====================================================================================================================
    case $msg.talk_step
    when 1 # 空腹１人目
       tx["tx1"] = "\"Augh....my patience is at it's limit....\\H\n Hey....what say we have some fun right now?\n I'm so hungry....\\H\""
      tx["tx2"] = "\"Hey, you want me to do it with my mouth? Or with my hands?\n I'm willing to do whichever at your request....\""
      tx["tx3"] = "\"Hurry up and gimme your hot stuff, #{target}\\H\n Hey, hurry....\\H\""
      tx["tx4"] = "#{speaker} is going mad from the hunger!\n#{master} has nowhere to escape....!" + "TALKTEXT"
    #------------------------------------------------------------------------------------------------------------------
    when 2 # 空腹２人目
      tx["tx1"] = "\"Come on, you can't just have him all to yourself.\n You're not the only one that's hungry....\\H\""
      tx["tx2"] = "\"Let's do halfsies at least\\H\n Forget about first come, first served.\""
    #------------------------------------------------------------------------------------------------------------------
    when 3 # 空腹３人目
     tx["tx1"] = "\"Can you like, not forget 'bout me?\n Each person get a third, you hear? \\H\""
      tx["tx2"] = "\"#{giggle}\n I know it's gonna be tough to deal with 3 girls at once, but good luck anyway\\H\""
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
    tx["tx1"] = "\"Can't help it then.\n Just wait a bit, I'll get it ready right now\""
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
      tx["tx1"] = "\"That's weird....?\n How do you use this?\""
    #サラダやサンドイッチが作れるレベル
    when 50..149
      tx["tx1"] = "\"Oh, you're fine with me?#{myname}?\n Remember that I can't make anything really good.\""
    #マリネやスープが作れるレベル
    when 150..349
      tx["tx1"] = "\"Can't help it then.\n Just wait a bit, I'll get it ready right now\""
    #メインディッシュが作れるレベル
    when 350..999
      tx["tx1"] = "\"ふふ、任せなさい♪\n　腕によりをかけてあげるわ\\H\""
    end
    #格納
    ms.push(tx)
  end




#=======================================================================================================================
#★ランクアップ(対応しない夢魔は項目ごと消去推奨----------------------------------------------------------------------#
when "ランクアップ"
  case $msg.talk_step
  when 1 #ランクアップ前口上
    tx["tx1"] = "「#{giggle}\n　そろそろ#{myname}も新しい姿になろうかしら。\n　もっとも、#{target}が望めば、だけどね」"
    tx["tx1"] = "「ねぇ、#{target}……？\n　#{myname}、今ならもっと変われそうな気がする。\n　どうしよう……#{target}、決めて？」" if $msg.t_enemy.rankup_flag == true #レッサキュからランクアップしている場合
  when 2 #ランクアップ開始
    tx["tx1"] = "「じゃ、始めるわね。\n　#{target}はそこで見ていて……\\H」"
    tx["tx1"] = "「じゃ、始めるよ？\n　……大丈夫、どんな姿になっても、\n　#{myname}は#{target}のものだから……\\H」" if $msg.t_enemy.rankup_flag == true #レッサキュからランクアップしている場合
  when 3 #ランクアップ終了（レッサーサキュバスからランクアップした後の口上）
    tx["tx1"] = "「#{giggle}\n　どうかしら……変じゃない？\n　じゃ、今後ともよろしくね、#{target}\\H」"
  when 4 #ランクアップしない
    tx["tx1"] = "「ふふ、そう？\n　#{target}がそこまで言うなら、\n　暫くはこのままでいてあげる\\H」"
    tx["tx1"] = "「ふふっ、そう？\n　#{target}がそこまで言うなら、\n　暫くはこのままでいてあげる\\H」" if $msg.t_enemy.rankup_flag == true #レッサキュからランクアップしている場合
  end
  #格納
  ms.push(tx)
#---------------------------------------------------------------------------------------------------------------------#
end
#######################################################################################################################
 end #def
end #class
