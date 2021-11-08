=begin
#######################################################################################################################
 ●『サキュバスロード（橙）』夢魔絶頂口上（対主人公）
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





#######################################################################################################################
####################################★絶頂：主人公に絶頂させられた場合の口上群#########################################
#######################################################################################################################
class MsgSuccubuslord_A < MsgBase
 def msg_ecstasy_self_00
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "「#{pleasure_l}\n　#{pleasure_cr}」"
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
  tx["tx1"] = "「#{pleasure_l}\n　そうよ、もっと、このまま最後まで……\\H」"
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.ecstasy_count.size <= 0 #絶頂初回
when 9 #とどめ
  tx["tx1"] = "「遠慮なんて、しないで……\\H　啼かせて……、\n　#{myname}の、カラダ、満たして……\\H\n　#{pleasure_cr}」"
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.ecstasy_count.size <= 0 #絶頂初回
when 10 #余韻
  tx["tx1"] = "「#{pleasure_l}\n　ふふ……イかされ、ちゃったわね……\\H\n　素敵よ、#{target}……\\H」"
#  tx["tx1"] = "「#{pleasure_l}」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{pleasure_l}」" if $msg.t_enemy.ecstasy_count.size <= 1 #絶頂初回
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
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  else #パターンB
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  end
when 9 #とどめ
  if $msg.t_enemy.ecstasy_emotion == "怒"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  else #パターンB
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  end
when 10 #余韻
  if $msg.t_enemy.ecstasy_emotion == "怒"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  else #パターンB
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  end
end
#格納
ms.push(tx)

#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class













#######################################################################################################################
####################################★絶頂：主人公に絶頂させられた場合の口上群#########################################
#######################################################################################################################
class MsgSuccubuslord_A < MsgBase
 def msg_bedin_ecstasy_self_00
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "「#{pleasure_l}\n　#{pleasure_cr}」"
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
if $msg.t_enemy.have_ability?("大切な人")
#====================================================================================================================
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "「#{pleasure_l}\n　そうよ、もっと、このまま最後まで……\\H」"
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.ecstasy_count.size <= 0 #絶頂初回
when 9 #とどめ
  tx["tx1"] = "「遠慮なんて、しないで……\\H　啼かせて……、\n　#{myname}の、カラダ、満たして……\\H\n　#{pleasure_cr}」"
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.ecstasy_count.size <= 0 #絶頂初回
when 10 #余韻
  tx["tx1"] = "「#{pleasure_l}\n　ふふ……イかされ、ちゃったわね……\\H\n　素敵よ、#{target}……\\H」"
#  tx["tx1"] = "「#{pleasure_l}」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{pleasure_l}」" if $msg.t_enemy.ecstasy_count.size <= 1 #絶頂初回
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
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  else #パターンB
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  end
when 9 #とどめ
  if $msg.t_enemy.ecstasy_emotion == "怒"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  else #パターンB
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  end
when 10 #余韻
  if $msg.t_enemy.ecstasy_emotion == "怒"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  else #パターンB
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  end
end
#格納
ms.push(tx)















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("寵愛")
#====================================================================================================================
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "「#{pleasure_l}\n　そうよ、もっと、このまま最後まで……\\H」"
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.ecstasy_count.size <= 0 #絶頂初回
when 9 #とどめ
  tx["tx1"] = "「遠慮なんて、しないで……\\H　啼かせて……、\n　#{myname}の、カラダ、満たして……\\H\n　#{pleasure_cr}」"
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.ecstasy_count.size <= 0 #絶頂初回
when 10 #余韻
  tx["tx1"] = "「#{pleasure_l}\n　ふふ……イかされ、ちゃったわね……\\H\n　素敵よ、#{target}……\\H」"
#  tx["tx1"] = "「#{pleasure_l}」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{pleasure_l}」" if $msg.t_enemy.ecstasy_count.size <= 1 #絶頂初回
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
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  else #パターンB
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  end
when 9 #とどめ
  if $msg.t_enemy.ecstasy_emotion == "怒"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  else #パターンB
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  end
when 10 #余韻
  if $msg.t_enemy.ecstasy_emotion == "怒"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  else #パターンB
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
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
  tx["tx1"] = "「#{pleasure_l}\n　そうよ、もっと、このまま最後まで……\\H」"
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.ecstasy_count.size <= 0 #絶頂初回
when 9 #とどめ
  tx["tx1"] = "「遠慮なんて、しないで……\\H　啼かせて……、\n　#{myname}の、カラダ、満たして……\\H\n　#{pleasure_cr}」"
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.ecstasy_count.size <= 0 #絶頂初回
when 10 #余韻
  tx["tx1"] = "「#{pleasure_l}\n　ふふ……イかされ、ちゃったわね……\\H\n　素敵よ、#{target}……\\H」"
#  tx["tx1"] = "「#{pleasure_l}」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "「#{pleasure_l}」" if $msg.t_enemy.ecstasy_count.size <= 1 #絶頂初回
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
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  else #パターンB
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  end
when 9 #とどめ
  if $msg.t_enemy.ecstasy_emotion == "怒"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  else #パターンB
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  end
when 10 #余韻
  if $msg.t_enemy.ecstasy_emotion == "怒"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  else #パターンB
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "キッス"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "バスト"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "ヒップ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "クロッチ"
#    tx["tx1"] = "「#{pleasure_cr}」" if $msg.at_type == "スウィング" or $msg.at_type == "ヘヴィスウィング"
  end
end
#格納
ms.push(tx)






#----------------------------------------------------------------------------------------------------------------------
end
 end #def
end #class
