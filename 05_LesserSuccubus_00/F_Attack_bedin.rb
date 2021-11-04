=begin
#######################################################################################################################
 ●『レッサーサキュバス（橙）』追撃口上（対パートナー・ベッドイン中）
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end






#######################################################################################################################
######################################★追撃：パートナーへの追撃を行う口上群###########################################
#######################################################################################################################
class MsgLessersuccubus_A < MsgBase 
 def msg_female_bedin_attack_00
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#====================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"Aha, #{target} doesn't lose either when it comes to lewdness\\H\n Okay then, I'll keep on going....\\H\""
  tx["tx1"] = "\"Ufufu, no running away♪\n Come on, make more cute noises for me\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"Ufufu, looking cute there\\H\n Makes me wanna keep at it....\\H\"" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"#{kiss_l}\n Ehehe, guess it won't hurt to do it with a girl\\H\""
  tx["tx1"] = "\"#{kiss_l}\n #{target} likes kissing too?\n Your face tells me you're fallen for me....\\H\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"#{kiss_l}\n Make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼手攻め▼****************************************************************************************
when "Hands"
  case $msg.at_parts
  when "Target: Breasts" #揉み
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "Target: Pussy" #手攻め
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼口攻め▼****************************************************************************************
when "Mouth"
  case $msg.at_parts
  when "Target: Breasts" #舐め
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "Target: Pussy" #クンニ
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼胸攻め▼****************************************************************************************
when "breasts"
  case $msg.at_parts
  when "Target: Breasts" #胸合わせ
    tx["tx1"] = "\"#{pleasure_s}\n Rubbing boobs together sure feels nice\\H\""
    tx["tx1"] = "\"#{pleasure_s}\n Guess you like it when our boobies rub together\\H\n Then let's keep at it♪\"" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "Target: Mouth" #ぱふぱふ
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼足攻め▼****************************************************************************************
when "Feet" #足攻め
  case $msg.at_parts
  when "Target: Breasts" #胸踏み
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "Target: Pussy" #足攻め
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ホールド援護▼****************************************************************************************
when "Hold Support"
  tx["tx1"] = "\"#{giggle}\n Count me in♪\""
  tx["tx1"] = "\"#{kiss_s}\n Ehe, you're full of openings♪\n #{kiss_l}\"" if $msg.at_parts == "Target: Mouth" #援護キッス
#  tx["tx1"] = "" if $msg.at_parts == "Target: Breasts" #援護胸攻め
#  tx["tx1"] = "" if $msg.at_parts == "Target: Pussy" #援護アソコ攻め
#  tx["tx1"] = "" if $msg.at_parts == "Target: Clitoris" #援護陰核攻め
#  tx["tx1"] = "" if $msg.at_parts == "Target: Ass" #援護尻攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#====================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"Aha, #{target} doesn't lose either when it comes to lewdness\\H\n Okay then, I'll keep on going....\\H\""
  tx["tx1"] = "\"Ufufu, no running away♪\n Come on, make more cute noises for me\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"Ufufu, looking cute there\\H\n Makes me wanna keep at it....\\H\"" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"#{kiss_l}\n Ehehe, guess it won't hurt to do it with a girl\\H\""
  tx["tx1"] = "\"#{kiss_l}\n #{target} likes kissing too?\n Your face tells me you're fallen for me....\\H\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"#{kiss_l}\n Make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼手攻め▼****************************************************************************************
when "Hands"
  case $msg.at_parts
  when "Target: Breasts" #揉み
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "Target: Pussy" #手攻め
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼口攻め▼****************************************************************************************
when "Mouth"
  case $msg.at_parts
  when "Target: Breasts" #舐め
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "Target: Pussy" #クンニ
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼胸攻め▼****************************************************************************************
when "breasts"
  case $msg.at_parts
  when "Target: Breasts" #胸合わせ
    tx["tx1"] = "\"#{pleasure_s}\n Rubbing boobs together sure feels nice\\H\""
    tx["tx1"] = "\"#{pleasure_s}\n Guess you like it when our boobies rub together\\H\n Then let's keep at it♪\"" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "Target: Mouth" #ぱふぱふ
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼足攻め▼****************************************************************************************
when "Feet" #足攻め
  case $msg.at_parts
  when "Target: Breasts" #胸踏み
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "Target: Pussy" #足攻め
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ホールド援護▼****************************************************************************************
when "Hold Support"
  tx["tx1"] = "\"#{giggle}\n Count me in♪\""
  tx["tx1"] = "\"#{kiss_s}\n Ehe, you're full of openings♪\n #{kiss_l}\"" if $msg.at_parts == "対象：口" #援護キッス
#  tx["tx1"] = "" if $msg.at_parts == "対象：胸" #援護胸攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：アソコ" #援護アソコ攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：陰核" #援護陰核攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：尻" #援護尻攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts














#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"Aha, #{target} doesn't lose either when it comes to lewdness\\H\n Okay then, I'll keep on going....\\H\""
  tx["tx1"] = "\"Ufufu, no running away♪\n Come on, make more cute noises for me\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"Ufufu, looking cute there\\H\n Makes me wanna keep at it....\\H\"" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"#{kiss_l}\n Ehehe, guess it won't hurt to do it with a girl\\H\""
  tx["tx1"] = "\"#{kiss_l}\n #{target} likes kissing too?\n Your face tells me you're fallen for me....\\H\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"#{kiss_l}\n Make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼手攻め▼****************************************************************************************
when "Hands"
  case $msg.at_parts
  when "Target: Breasts" #揉み
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "Target: Pussy" #手攻め
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼口攻め▼****************************************************************************************
when "Mouth"
  case $msg.at_parts
  when "Target: Breasts" #舐め
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "Target: Pussy" #クンニ
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼胸攻め▼****************************************************************************************
when "breasts"
  case $msg.at_parts
  when "Target: Breasts" #胸合わせ
    tx["tx1"] = "\"#{pleasure_s}\n Rubbing boobs together sure feels nice\\H\""
    tx["tx1"] = "\"#{pleasure_s}\n Guess you like it when our boobies rub together\\H\n Then let's keep at it♪\"" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "Target: Mouth" #ぱふぱふ
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼足攻め▼****************************************************************************************
when "Feet" #足攻め
  case $msg.at_parts
  when "Target: Breasts" #胸踏み
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "Target: Pussy" #足攻め
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ホールド援護▼****************************************************************************************
when "Hold Support"
  tx["tx1"] = "\"#{giggle}\n Count me in♪\""
  tx["tx1"] = "\"#{kiss_s}\n Ehe, you're full of openings♪\n #{kiss_l}\"" if $msg.at_parts == "Target: Mouth" #援護キッス
#  tx["tx1"] = "" if $msg.at_parts == "Target: Breasts" #援護胸攻め
#  tx["tx1"] = "" if $msg.at_parts == "Target: Pussy" #援護アソコ攻め
#  tx["tx1"] = "" if $msg.at_parts == "Target: Clitoris" #援護陰核攻め
#  tx["tx1"] = "" if $msg.at_parts == "Target: Ass" #援護尻攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts






end
#====================================================================================================================
 end #def
end #class




















#######################################################################################################################
######################################★追撃：パートナーへの追撃を行う口上群###########################################
#######################################################################################################################
class MsgLessersuccubus_A < MsgBase 
 def msg_female_bedin_attack_hold_00
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#====================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"You can always push me away, you know?\n Or maybe....\n you prefer it this way? \\H\""
  tx["tx1"] = "\"Ahaha, coming already?\n Then I better take some requests♪\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"#{giggle}\n No sleeping on my watch\\H\n I'm not letting you fall asleep just yet....\\H\"" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_parts
#▼シェルマッチ▼****************************************************************************************
when "Tribadism"
  tx["tx1"] = "\"#{pleasure_l}\n Doesn't rubbing our pussies together feel nice? \\H\""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"#{pleasure_l}\n Coming already?\n In that case, go a bit harder, please\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"#{giggle}\n I'm not letting you fall asleep\\H\n Let's keep up the fun\\H\"" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼顔面騎乗▼****************************************************************************************
when "Pussy on top"
  tx["tx1"] = "\"#{giggle}\n This makes you excited, right?\\H\n Hey, keep licking it\\H\""
  tx["tx1"] = "\"#{pleasure_l}\n Hey, keep licking it....\\H\n #{pleasure_s}\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ぱふぱふ▼****************************************************************************************
when "ぱふぱふ"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クンニ▼****************************************************************************************
when "クンニ"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ディルド攻め▼****************************************************************************************
when "ディルド♀挿入","ディルド口挿入","ディルド尻挿入"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼キッス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"#{kiss_l}\n Ehehe, guess it won't hurt to do it with a girl\\H\""
  tx["tx1"] = "\"#{kiss_l}\n #{target} likes kissing too?\n Your face tells me you're fallen for me....\\H\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"#{kiss_l}\n Make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#====================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"You can always push me away, you know?\n Or maybe....\n you prefer it this way? \\H\""
  tx["tx1"] = "\"Ahaha, coming already?\n Then I better take some requests♪\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"#{giggle}\n No sleeping on my watch\\H\n I'm not letting you fall asleep just yet....\\H\"" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_parts
#▼シェルマッチ▼****************************************************************************************
when "Tribadism"
  tx["tx1"] = "\"#{pleasure_l}\n Doesn't rubbing our pussies together feel nice? \\H\""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"#{pleasure_l}\n Coming already?\n In that case, go a bit harder, please\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"#{giggle}\n I'm not letting you fall asleep\\H\n Let's keep up the fun\\H\"" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼顔面騎乗▼****************************************************************************************
when "Pussy on top"
  tx["tx1"] = "\"#{giggle}\n This makes you excited, right?\\H\n Hey, keep licking it\\H\""
  tx["tx1"] = "\"#{pleasure_l}\n Hey, keep licking it....\\H\n #{pleasure_s}\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ぱふぱふ▼****************************************************************************************
when "ぱふぱふ"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クンニ▼****************************************************************************************
when "クンニ"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ディルド攻め▼****************************************************************************************
when "ディルド♀挿入","ディルド口挿入","ディルド尻挿入"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼キッス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"#{kiss_l}\n Ehehe, guess it won't hurt to do it with a girl\\H\""
  tx["tx1"] = "\"#{kiss_l}\n #{target} likes kissing too?\n Your face tells me you're fallen for me....\\H\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"#{kiss_l}\n Make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts














#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"You can always push me away, you know?\n Or maybe....\n you prefer it this way? \\H\""
  tx["tx1"] = "\"Ahaha, coming already?\n Then I better take some requests♪\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"#{giggle}\n No sleeping on my watch\\H\n I'm not letting you fall asleep just yet....\\H\"" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_parts
#▼シェルマッチ▼****************************************************************************************
when "Tribadism"
  tx["tx1"] = "\"#{pleasure_l}\n Doesn't rubbing our pussies together feel nice? \\H\""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"#{pleasure_l}\n Coming already?\n In that case, go a bit harder, please\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"#{giggle}\n I'm not letting you fall asleep\\H\n Let's keep up the fun\\H\"" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼顔面騎乗▼****************************************************************************************
when "Pussy on top"
  tx["tx1"] = "\"#{giggle}\n This makes you excited, right?\\H\n Hey, keep licking it\\H\""
  tx["tx1"] = "\"#{pleasure_l}\n Hey, keep licking it....\\H\n #{pleasure_s}\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ぱふぱふ▼****************************************************************************************
when "ぱふぱふ"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クンニ▼****************************************************************************************
when "クンニ"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ディルド攻め▼****************************************************************************************
when "ディルド♀挿入","ディルド口挿入","ディルド尻挿入"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼キッス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"#{kiss_l}\n Ehehe, guess it won't hurt to do it with a girl\\H\""
  tx["tx1"] = "\"#{kiss_l}\n #{target} likes kissing too?\n Your face tells me you're fallen for me....\\H\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"#{kiss_l}\n Make sure you get a good taste of me....\\H\"" if $game_variables[17] > 70 #パターンC
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts





end
#====================================================================================================================
 end #def
end #class




















#######################################################################################################################
######################################★追撃：パートナーへの追撃を行う口上群###########################################
#######################################################################################################################
class MsgLessersuccubus_A < MsgBase 
 def msg_female_bedin_attack_self_00
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#====================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"N-Not there!\n #{pleasure_s}\""
  tx["tx1"] = "\"E-Eyaugh....I'm gonna come....!\n #{pleasure_cr}\"" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"#{pleasure_l}\n W-Wait, lemme rest a little....\\H\n #{pleasure_cr}\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キッス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"#{kiss_l}\n #{target}, you're too good at kissing....\\H\""
  tx["tx1"] = "\"#{kiss_l}\n More....keep kissing me....\\H\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼バスト▼****************************************************************************************
when "Chest"
  tx["tx1"] = "\"#{pleasure_l}\n You can't play with my boobs like that....\\H\""
  tx["tx1"] = "\"No, no....!\n My boobies are getting turned on....!\\H\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Pant....pant....\\H\n P-Please forget about my boobs already....\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ヒップ▼****************************************************************************************
when "Hips"
  tx["tx1"] = "\"Aiee...\\H\n Y-You shouldn't mess with that...!\""
  tx["tx1"] = "\"W-Why....?\n My ass feels so good....\\H\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Aiee...ee....\\H\n P-Please forget about my ass already....\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クロッチ▼****************************************************************************************
when "Crotch"
  if $msg.t_enemy.nude?
    tx["tx1"] = "\"Aaah....\\H\n If you mess around that...deep....\\H\""
    tx["tx1"] = "\"N-No...oo....\\H\n I feel like I'm in heaven....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
    tx["tx1"] = "\"Aaahh...ah....\\H\n G-Go easy on me already.......\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  else
    tx["tx1"] = "\"Nooo....\\H\n I'm getting stained....\\H\"" # 対象が着衣状態の時
    tx["tx1"] = "\"Aha...\\H\n E-Enough with that spot...! Nnguh....!\\H\"" if $msg.t_enemy.crisis? #自分がクライシス 対象が着衣状態の時
    tx["tx1"] = "\"Aaa...a....\\H\n Q-Quit messing with that spot.......\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中 対象が着衣状態の時
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼スクラッチ系▼****************************************************************************************
when "Tribadism"
  tx["tx1"] = "\"N-Noo....\\H\n If you scrape it like that....\\H\""
  tx["tx1"] = "\"#{pleasure_l}\n W-Wait, if you go that rough....!\n #{pleasure_s}\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_type














#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#====================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"N-Not there!\n #{pleasure_s}\""
  tx["tx1"] = "\"E-Eyaugh....I'm gonna come....!\n #{pleasure_cr}\"" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"#{pleasure_l}\n W-Wait, lemme rest a little....\\H\n #{pleasure_cr}\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キッス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"#{kiss_l}\n #{target}, you're too good at kissing....\\H\""
  tx["tx1"] = "\"#{kiss_l}\n More....keep kissing me....\\H\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼バスト▼****************************************************************************************
when "Chest"
  tx["tx1"] = "\"#{pleasure_l}\n You can't play with my boobs like that....\\H\""
  tx["tx1"] = "\"No, no....!\n My boobies are getting turned on....!\\H\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Pant....pant....\\H\n P-Please forget about my boobs already....\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ヒップ▼****************************************************************************************
when "Hips"
  tx["tx1"] = "\"Aiee...\\H\n Y-You shouldn't mess with that...!\""
  tx["tx1"] = "\"W-Why....?\n My ass feels so good....\\H\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Aiee...ee....\\H\n P-Please forget about my ass already....\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クロッチ▼****************************************************************************************
when "Crotch"
  if $msg.t_enemy.nude?
    tx["tx1"] = "\"Aaah....\\H\n If you mess around that...deep....\\H\""
    tx["tx1"] = "\"N-No...oo....\\H\n I feel like I'm in heaven....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
    tx["tx1"] = "\"Aaahh...ah....\\H\n G-Go easy on me already.......\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  else
    tx["tx1"] = "\"Nooo....\\H\n I'm getting stained....\\H\"" # 対象が着衣状態の時
    tx["tx1"] = "\"Aha...\\H\n E-Enough with that spot...! Nnguh....!\\H\"" if $msg.t_enemy.crisis? #自分がクライシス 対象が着衣状態の時
    tx["tx1"] = "\"Aaa...a....\\H\n Q-Quit messing with that spot.......\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中 対象が着衣状態の時
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼スクラッチ系▼****************************************************************************************
when "スクラッチ"
  tx["tx1"] = "\"N-Noo....\\H\n If you scrape it like that....\\H\""
  tx["tx1"] = "\"#{pleasure_l}\n W-Wait, if you go that rough....!\n #{pleasure_s}\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_type














#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"N-Not there!\n #{pleasure_s}\""
  tx["tx1"] = "\"E-Eyaugh....I'm gonna come....!\n #{pleasure_cr}\"" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"#{pleasure_l}\n W-Wait, lemme rest a little....\\H\n #{pleasure_cr}\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キッス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"#{kiss_l}\n #{target}, you're too good at kissing....\\H\""
  tx["tx1"] = "\"#{kiss_l}\n More....keep kissing me....\\H\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼バスト▼****************************************************************************************
when "Chest"
  tx["tx1"] = "\"#{pleasure_l}\n You can't play with my boobs like that....\\H\""
  tx["tx1"] = "\"No, no....!\n My boobies are getting turned on....!\\H\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Pant....pant....\\H\n P-Please forget about my boobs already....\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ヒップ▼****************************************************************************************
when "Hips"
  tx["tx1"] = "\"Aiee...\\H\n Y-You shouldn't mess with that...!\""
  tx["tx1"] = "\"W-Why....?\n My ass feels so good....\\H\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Aiee...ee....\\H\n P-Please forget about my ass already....\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クロッチ▼****************************************************************************************
when "Crotch"
  if $msg.t_enemy.nude?
    tx["tx1"] = "\"Aaah....\\H\n If you mess around that...deep....\\H\""
    tx["tx1"] = "\"N-No...oo....\\H\n I feel like I'm in heaven....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
    tx["tx1"] = "\"Aaahh...ah....\\H\n G-Go easy on me already.......\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  else
    tx["tx1"] = "\"Nooo....\\H\n I'm getting stained....\\H\"" # 対象が着衣状態の時
    tx["tx1"] = "\"Aha...\\H\n E-Enough with that spot...! Nnguh....!\\H\"" if $msg.t_enemy.crisis? #自分がクライシス 対象が着衣状態の時
    tx["tx1"] = "\"Aaa...a....\\H\n Q-Quit messing with that spot.......\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中 対象が着衣状態の時
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼スクラッチ系▼****************************************************************************************
when "Tribadism"
  tx["tx1"] = "\"N-Noo....\\H\n If you scrape it like that....\\H\""
  tx["tx1"] = "\"#{pleasure_l}\n W-Wait, if you go that rough....!\n #{pleasure_s}\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_type




end
#====================================================================================================================
 end #def
end #class
