=begin
#######################################################################################################################
 ●『サキュバス（桃）』夢魔絶頂口上（対パートナー）
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,08/20     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end






#######################################################################################################################
####################################★絶頂：パートナーに絶頂させられた場合の口上群#####################################
#######################################################################################################################
class MsgSuccubus_B < MsgBase
 def msg_female_ecstasy_self_00
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"#{pleasure_l}\n #{pleasure_cr}\""
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"#{pleasure_l}\n Good....that's it....\\H\n More....! \\H\""
  tx["tx1"] = "\"#{pleasure_l}\n Nooo....you're making me squeal....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{pleasure_l}\n That's good....gimme more....! \\H\"" if $msg.t_enemy.ecstasy_count.size <= 0 #絶頂初回
when 9 #とどめ
  tx["tx1"] = "\"N-No, c-cumming again....! \\H\n #{pleasure_cr}\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "\"N-No, I'm gonna cum soon....! \\H\n #{pleasure_cr}\"" if $msg.t_enemy.ecstasy_count.size <= 0 #絶頂初回
when 10 #余韻
  tx["tx1"] = "\"Pant....pant....\\H\n That was nice....\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx2"] = "\"....Ufufu, I know you can still keep going.\n I aught to....pay you back for that\\H\""
  tx["tx1"] = "\"Pant....pant....\n That was nice....\\H\"" if $msg.t_enemy.ecstasy_count.size <= 1 #絶頂初回
  tx["tx2"] = "\"Hey....let's do that again....\\H\n #{myname}'ll be taking the initiative next....yeah? \\H\"" if $msg.t_enemy.ecstasy_count.size <= 1 #絶頂初回
end
#格納
ms.push(tx)

#★専用★=============================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.talk_step
when 1 #初撃
  if $msg.t_enemy.ecstasy_emotion == "怒"
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  else #パターンB
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  end
when 9 #とどめ
  if $msg.t_enemy.ecstasy_emotion == "怒"
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  else #パターンB
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  end
when 10 #余韻
  if $msg.t_enemy.ecstasy_emotion == "怒"
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  else #パターンB
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  end
end
#格納
ms.push(tx)

#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class













#######################################################################################################################
####################################★絶頂：パートナーに絶頂させられた場合の口上群#####################################
#######################################################################################################################
class MsgSuccubus_B < MsgBase
 def msg_female_bedin_ecstasy_self_00
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"#{pleasure_l}\n #{pleasure_cr}\""
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#====================================================================================================================
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"#{pleasure_l}\n Good....that's it....\\H\n More....! \\H\""
  tx["tx1"] = "\"#{pleasure_l}\n Nooo....you're making me squeal....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{pleasure_l}\n That's good....gimme more....! \\H\"" if $msg.t_enemy.ecstasy_count.size <= 0 #絶頂初回
when 9 #とどめ
  tx["tx1"] = "\"N-No, c-cumming again....! \\H\n #{pleasure_cr}\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "\"N-No, I'm gonna cum soon....! \\H\n #{pleasure_cr}\"" if $msg.t_enemy.ecstasy_count.size <= 0 #絶頂初回
when 10 #余韻
  tx["tx1"] = "\"Pant....pant....\\H\n That was nice....\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx2"] = "\"....Ufufu, I know you can still keep going.\n I aught to....pay you back for that\\H\""
  tx["tx1"] = "\"Pant....pant....\n That was nice....\\H\"" if $msg.t_enemy.ecstasy_count.size <= 1 #絶頂初回
  tx["tx2"] = "\"Hey....let's do that again....\\H\n #{myname}'ll be taking the initiative next....yeah? \\H\"" if $msg.t_enemy.ecstasy_count.size <= 1 #絶頂初回
end
#格納
ms.push(tx)

#★専用★=============================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.talk_step
when 1 #初撃
  if $msg.t_enemy.ecstasy_emotion == "怒"
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  else #パターンB
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  end
when 9 #とどめ
  if $msg.t_enemy.ecstasy_emotion == "怒"
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  else #パターンB
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  end
when 10 #余韻
  if $msg.t_enemy.ecstasy_emotion == "怒"
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  else #パターンB
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  end
end
#格納
ms.push(tx)















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#====================================================================================================================
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"#{pleasure_l}\n Good....that's it....\\H\n More....! \\H\""
  tx["tx1"] = "\"#{pleasure_l}\n Nooo....you're making me squeal....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{pleasure_l}\n That's good....gimme more....! \\H\"" if $msg.t_enemy.ecstasy_count.size <= 0 #絶頂初回
when 9 #とどめ
  tx["tx1"] = "\"N-No, c-cumming again....! \\H\n #{pleasure_cr}\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "\"N-No, I'm gonna cum soon....! \\H\n #{pleasure_cr}\"" if $msg.t_enemy.ecstasy_count.size <= 0 #絶頂初回
when 10 #余韻
  tx["tx1"] = "\"Pant....pant....\\H\n That was nice....\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx2"] = "\"....Ufufu, I know you can still keep going.\n I aught to....pay you back for that\\H\""
  tx["tx1"] = "\"Pant....pant....\n That was nice....\\H\"" if $msg.t_enemy.ecstasy_count.size <= 1 #絶頂初回
  tx["tx2"] = "\"Hey....let's do that again....\\H\n #{myname}'ll be taking the initiative next....yeah? \\H\"" if $msg.t_enemy.ecstasy_count.size <= 1 #絶頂初回
end
#格納
ms.push(tx)

#★専用★=============================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.talk_step
when 1 #初撃
  if $msg.t_enemy.ecstasy_emotion == "怒"
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  else #パターンB
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  end
when 9 #とどめ
  if $msg.t_enemy.ecstasy_emotion == "怒"
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  else #パターンB
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  end
when 10 #余韻
  if $msg.t_enemy.ecstasy_emotion == "怒"
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  else #パターンB
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  end
end
#格納
ms.push(tx)














#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"#{pleasure_l}\n Good....that's it....\\H\n More....! \\H\""
  tx["tx1"] = "\"#{pleasure_l}\n Nooo....you're making me squeal....\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{pleasure_l}\n That's good....gimme more....! \\H\"" if $msg.t_enemy.ecstasy_count.size <= 0 #絶頂初回
when 9 #とどめ
  tx["tx1"] = "\"N-No, c-cumming again....! \\H\n #{pleasure_cr}\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "\"N-No, I'm gonna cum soon....! \\H\n #{pleasure_cr}\"" if $msg.t_enemy.ecstasy_count.size <= 0 #絶頂初回
when 10 #余韻
  tx["tx1"] = "\"Pant....pant....\\H\n That was nice....\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx2"] = "\"....Ufufu, I know you can still keep going.\n I aught to....pay you back for that\\H\""
  tx["tx1"] = "\"Pant....pant....\n That was nice....\\H\"" if $msg.t_enemy.ecstasy_count.size <= 1 #絶頂初回
  tx["tx2"] = "\"Hey....let's do that again....\\H\n #{myname}'ll be taking the initiative next....yeah? \\H\"" if $msg.t_enemy.ecstasy_count.size <= 1 #絶頂初回
end
#格納
ms.push(tx)

#★専用★=============================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.talk_step
when 1 #初撃
  if $msg.t_enemy.ecstasy_emotion == "怒"
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  else #パターンB
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  end
when 9 #とどめ
  if $msg.t_enemy.ecstasy_emotion == "怒"
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  else #パターンB
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  end
when 10 #余韻
  if $msg.t_enemy.ecstasy_emotion == "怒"
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  else #パターンB
  #  tx["tx1"] = "" if $msg.at_type == "キッス"
  #  tx["tx1"] = "" if $msg.at_type == "バスト"
  #  tx["tx1"] = "" if $msg.at_type == "ヒップ"
  #  tx["tx1"] = "" if $msg.at_type == "クロッチ"
  #  tx["tx1"] = "" if $msg.at_type == "スクラッチ"
  end
end
#格納
ms.push(tx)






#----------------------------------------------------------------------------------------------------------------------
end
 end #def
end #class
