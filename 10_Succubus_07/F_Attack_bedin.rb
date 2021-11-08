=begin
#######################################################################################################################
 ●『サキュバス（橙）』追撃口上（対パートナー・ベッドイン中）
 ●性格：陽気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end






#######################################################################################################################
######################################★追撃：パートナーへの追撃を行う口上群###########################################
#######################################################################################################################
class MsgSuccubus_A < MsgBase 
 def msg_female_bedin_attack_07
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
  tx["tx1"] = "\"Ufufu....\\H\n How do you like this? \\H\""
  tx["tx1"] = "\"Oh my, you like it?\n Then I won't hold anything back\\H\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Ufufu, what a cute voice\\H\n I'll make you moan even more....\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"And to think you've just came....\\H\n Maybe I aroused you a little too much\\H\"" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"Nnn....*kiss...smooch, fwah....\\H\n I'm gonna intoxicate you with my lips....\\H\""
  tx["tx1"] = "\"...*Lick....*slurp....smooch....\\H\n Ufufu, keep twirling your tongue like that....yeah....\\H\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"...*Lick....*slurp....smooch....\\H\n That's it, you're...so good with your tongue...*giggle....\\H\"" if $game_variables[17] > 70 #パターンC
  tx["tx1"] = "\"Smooch...nnn....*lick....\\H\n Ufu....you've totally fallen for it...so adorable\\H\"" if $msg.t_enemy.crisis?
  tx["tx1"] = "\"...Smooch...smooch, puah...nnn....\\H\n Ufufu, I'll make you fall for it even more....\\H\"" if $msg.t_enemy.crisis? and $game_variables[17] > 50 #パターンB
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼手攻め▼****************************************************************************************
when "手"
  case $msg.at_parts
  when "対象：胸" #揉み
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "対象：アソコ" #手攻め
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
when "口"
  case $msg.at_parts
  when "対象：胸" #舐め
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "対象：アソコ" #クンニ
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
when "胸"
  case $msg.at_parts
  when "対象：胸" #胸合わせ
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "対象：口" #ぱふぱふ
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼足攻め▼****************************************************************************************
when "足" #足攻め
  case $msg.at_parts
  when "対象：胸" #胸踏み
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "対象：アソコ" #足攻め
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
when "ホールド援護"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.at_parts == "対象：口" #援護キッス
#  tx["tx1"] = "" if $msg.at_parts == "対象：胸" #援護胸攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：アソコ" #援護アソコ攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：陰核" #援護陰核攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：尻" #援護尻攻め
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
  tx["tx1"] = "\"Ufufu....\\H\n How do you like this? \\H\""
  tx["tx1"] = "\"Oh my, you like it?\n Then I won't hold anything back\\H\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Ufufu, what a cute voice\\H\n I'll make you moan even more....\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"And to think you've just came....\\H\n Maybe I aroused you a little too much\\H\"" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"Nnn....*kiss...smooch, fwah....\\H\n I'm gonna intoxicate you with my lips....\\H\""
  tx["tx1"] = "\"...*Lick....*slurp....smooch....\\H\n Ufufu, keep twirling your tongue like that....yeah....\\H\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"...*Lick....*slurp....smooch....\\H\n That's it, you're...so good with your tongue...*giggle....\\H\"" if $game_variables[17] > 70 #パターンC
  tx["tx1"] = "\"Smooch...nnn....*lick....\\H\n Ufu....you've totally fallen for it...so adorable\\H\"" if $msg.t_enemy.crisis?
  tx["tx1"] = "\"...Smooch...smooch, puah...nnn....\\H\n Ufufu, I'll make you fall for it even more....\\H\"" if $msg.t_enemy.crisis? and $game_variables[17] > 50 #パターンB
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼手攻め▼****************************************************************************************
when "手"
  case $msg.at_parts
  when "対象：胸" #揉み
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "対象：アソコ" #手攻め
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
when "口"
  case $msg.at_parts
  when "対象：胸" #舐め
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "対象：アソコ" #クンニ
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
when "胸"
  case $msg.at_parts
  when "対象：胸" #胸合わせ
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "対象：口" #ぱふぱふ
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼足攻め▼****************************************************************************************
when "足" #足攻め
  case $msg.at_parts
  when "対象：胸" #胸踏み
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "対象：アソコ" #足攻め
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
when "ホールド援護"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.at_parts == "対象：口" #援護キッス
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
  tx["tx1"] = "\"Ufufu....\\H\n How do you like this? \\H\""
  tx["tx1"] = "\"Oh my, you like it?\n Then I won't hold anything back\\H\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Ufufu, what a cute voice\\H\n I'll make you moan even more....\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"And to think you've just came....\\H\n Maybe I aroused you a little too much\\H\"" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"Nnn....*kiss...smooch, fwah....\\H\n I'm gonna intoxicate you with my lips....\\H\""
  tx["tx1"] = "\"...*Lick....*slurp....smooch....\\H\n Ufufu, keep twirling your tongue like that....yeah....\\H\"" if $game_variables[17] > 35 #パターンB
  tx["tx1"] = "\"...*Lick....*slurp....smooch....\\H\n That's it, you're...so good with your tongue...*giggle....\\H\"" if $game_variables[17] > 70 #パターンC
  tx["tx1"] = "\"Smooch...nnn....*lick....\\H\n Ufu....you've totally fallen for it...so adorable\\H\"" if $msg.t_enemy.crisis?
  tx["tx1"] = "\"...Smooch...smooch, puah...nnn....\\H\n Ufufu, I'll make you fall for it even more....\\H\"" if $msg.t_enemy.crisis? and $game_variables[17] > 50 #パターンB
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼手攻め▼****************************************************************************************
when "手"
  case $msg.at_parts
  when "対象：胸" #揉み
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "対象：アソコ" #手攻め
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
when "口"
  case $msg.at_parts
  when "対象：胸" #舐め
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "対象：アソコ" #クンニ
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
when "胸"
  case $msg.at_parts
  when "対象：胸" #胸合わせ
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "対象：口" #ぱふぱふ
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼足攻め▼****************************************************************************************
when "足" #足攻め
  case $msg.at_parts
  when "対象：胸" #胸踏み
 #  tx["tx1"] = ""
 #  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
 #  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
 #  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
 #  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  when "対象：アソコ" #足攻め
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
when "ホールド援護"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.at_parts == "対象：口" #援護キッス
#  tx["tx1"] = "" if $msg.at_parts == "対象：胸" #援護胸攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：アソコ" #援護アソコ攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：陰核" #援護陰核攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：尻" #援護尻攻め
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
class MsgSuccubus_A < MsgBase 
 def msg_female_bedin_attack_hold_07
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
  tx["tx1"] = "\"*Giggle....you're not resisting at all.\n Or maybe....you were looking forward to it?\\H\""
  tx["tx1"] = "\"*Giggle....♪\n Remember to savor my body....\\H\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Ufufu....looks like you're totally into it\\H\n You have to be more honest with yourself....\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"Ufufu....does it feel good?\n You should be giving yourself in to me....\\H\"" if $msg.t_target.crisis? and $game_variables[17] > 35 #対象がクライシス・パターンB
  tx["tx1"] = "\"Ufufu....looks like you're totally into it\\H\n You have to be more honest with yourself....\\H\"" if $msg.t_target.crisis? and $game_variables[17] > 70 #対象がクライシス・パターンC
  tx["tx1"] = "\"Can you even think of anything else by now....?\n You should be giving yourself in to me....\\H\"" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_parts
#▼シェルマッチ▼****************************************************************************************
when "貝合わせ"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼顔面騎乗▼****************************************************************************************
when "Pussy on top"
  tx["tx1"] = "\"Aha♪ I can feel your heavy breath\\H\n Guess that means you're enjoying it....\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
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
  tx["tx1"] = "\"#{kiss_l}\""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
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
  tx["tx1"] = "\"*Giggle....you're not resisting at all.\n Or maybe....you were looking forward to it?\\H\""
  tx["tx1"] = "\"*Giggle....♪\n Remember to savor my body....\\H\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Ufufu....looks like you're totally into it\\H\n You have to be more honest with yourself....\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"Ufufu....does it feel good?\n You should be giving yourself in to me....\\H\"" if $msg.t_target.crisis? and $game_variables[17] > 35 #対象がクライシス・パターンB
  tx["tx1"] = "\"Ufufu....looks like you're totally into it\\H\n You have to be more honest with yourself....\\H\"" if $msg.t_target.crisis? and $game_variables[17] > 70 #対象がクライシス・パターンC
  tx["tx1"] = "\"Can you even think of anything else by now....?\n You should be giving yourself in to me....\\H\"" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_parts
#▼シェルマッチ▼****************************************************************************************
when "貝合わせ"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼顔面騎乗▼****************************************************************************************
when "Pussy on top"
  tx["tx1"] = "\"Aha♪ I can feel your heavy breath\\H\n Guess that means you're enjoying it....\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
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
  tx["tx1"] = "\"#{kiss_l}\""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
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
  tx["tx1"] = "\"*Giggle....you're not resisting at all.\n Or maybe....you were looking forward to it?\\H\""
  tx["tx1"] = "\"*Giggle....♪\n Remember to savor my body....\\H\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Ufufu....looks like you're totally into it\\H\n You have to be more honest with yourself....\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"Ufufu....does it feel good?\n You should be giving yourself in to me....\\H\"" if $msg.t_target.crisis? and $game_variables[17] > 35 #対象がクライシス・パターンB
  tx["tx1"] = "\"Ufufu....looks like you're totally into it\\H\n You have to be more honest with yourself....\\H\"" if $msg.t_target.crisis? and $game_variables[17] > 70 #対象がクライシス・パターンC
  tx["tx1"] = "\"Can you even think of anything else by now....?\n You should be giving yourself in to me....\\H\"" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_parts
#▼シェルマッチ▼****************************************************************************************
when "貝合わせ"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼顔面騎乗▼****************************************************************************************
when "Pussy on top"
  tx["tx1"] = "\"Aha♪ I can feel your heavy breath\\H\n Guess that means you're enjoying it....\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
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
  tx["tx1"] = "\"#{kiss_l}\""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
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
class MsgSuccubus_A < MsgBase 
 def msg_female_bedin_attack_self_07
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
  tx["tx1"] = "\"Sigh....nnn....\\H\n That's it....good....\\H\""
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{pleasure_cr}」" if $msg.t_enemy.weaken? #自分が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キッス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"Nnn....fuah....\\H\n That's it...you're good, #{target}....\\H\""
  tx["tx1"] = "\"Smooch....*lick....*roll....\\H\n Hey....get your tongue....deeper in....\\H\""if $game_variables[17] > 50 #パターンB
  tx["tx1"] = "\"Mmph...smooch....*lick....\\H\n Ufufu....I'm gonna get intoxicated....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼バスト▼****************************************************************************************
when "Chest"
  tx["tx1"] = "\"Aha....\\H\n You like my breasts....? \\H\""
  tx["tx1"] = "\"Aaaah....you're not done yet....?\\H\n Feels like my boob's gonna get even bigger....\\H\""if $game_variables[17] > 50 #パターンB
  tx["tx1"] = "\"Nnnn...aaa....sigh....\\H\n You've got it....I don't mind you being more forceful...nnn....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ヒップ▼****************************************************************************************
when "Hips"
  tx["tx1"] = "\"Aiee....not my ass....\\H\""
  tx["tx1"] = "\"Nnah....nnnn....\\H\n Come on....I said no....nnaaah....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クロッチ▼****************************************************************************************
when "Crotch"
  if $msg.t_enemy.nude?
    tx["tx1"] = "\"Yes....that's it, that feels good....\\H\n I don't mind you going harder....nnaaah....\\H\""
    tx["tx1"] = "\"Aaaah....\\H\n You're going so deep....nnnn....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
    tx["tx1"] = "\"Nha...aah....\\H\n That's amazing........\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  else
    tx["tx1"] = "\"Aaaannnh....\\H\n Ufufu, you wanna get me all stained....?\"" # 対象が着衣状態の時
    tx["tx1"] = "\"Nnnn....\\H\n But I'm fine with more direct touches....\\H\"" if $game_variables[17] > 50 # 対象が着衣状態の時・パターンB
    tx["tx1"] = "\"Aaaannnh....\\H\n Don't keep me in suspense like that....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス 対象が着衣状態の時
    tx["tx1"] = "\"Nha...aah....\\H\n That's amazing........\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼スクラッチ系▼****************************************************************************************
when "Tribadism"
  tx["tx1"] = "\"Aaaannnh....\\H\n Didn't know you had that oomph in you, #{target}....\\H\""
  tx["tx1"] = "\"Nnn....aaahh....\\H\n More, let's mingle even more with each other....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Nha...aah....\\H\n That's amazing........\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
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
  tx["tx1"] = "\"Sigh....nnn....\\H\n That's it....good....\\H\""
#  tx["tx1"] = "\"#{pleasure_cr}\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "\"#{pleasure_cr}\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キッス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"Nnn....fuah....\\H\n That's it...you're good, #{target}....\\H\""
  tx["tx1"] = "\"Smooch....*lick....*roll....\\H\n Hey....get your tongue....deeper in....\\H\""if $game_variables[17] > 50 #パターンB
  tx["tx1"] = "\"Mmph...smooch....*lick....\\H\n Ufufu....I'm gonna get intoxicated....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼バスト▼****************************************************************************************
when "Chest"
  tx["tx1"] = "\"Aha....\\H\n You like my breasts....? \\H\""
  tx["tx1"] = "\"Aaaah....you're not done yet....?\\H\n Feels like my boob's gonna get even bigger....\\H\""if $game_variables[17] > 50 #パターンB
  tx["tx1"] = "\"Nnnn...aaa....sigh....\\H\n You've got it....I don't mind you being more forceful...nnn....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ヒップ▼****************************************************************************************
when "Hips"
  tx["tx1"] = "\"Aiee....not my ass....\\H\""
  tx["tx1"] = "\"Nnah....nnnn....\\H\n Come on....I said no....nnaaah....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クロッチ▼****************************************************************************************
when "Crotch"
  if $msg.t_enemy.nude?
    tx["tx1"] = "\"Yes....that's it, that feels good....\\H\n I don't mind you going harder....nnaaah....\\H\""
    tx["tx1"] = "\"Aaaah....\\H\n You're going so deep....nnnn....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
    tx["tx1"] = "\"Nha...aah....\\H\n That's amazing........\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  else
    tx["tx1"] = "\"Aaaannnh....\\H\n Ufufu, you wanna get me all stained....?\"" # 対象が着衣状態の時
    tx["tx1"] = "\"Nnnn....\\H\n But I'm fine with more direct touches....\\H\"" if $game_variables[17] > 50 # 対象が着衣状態の時・パターンB
    tx["tx1"] = "\"Aaaannnh....\\H\n Don't keep me in suspense like that....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス 対象が着衣状態の時
    tx["tx1"] = "\"Nha...aah....\\H\n That's amazing........\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼スクラッチ系▼****************************************************************************************
when "Tribadism"
  tx["tx1"] = "\"Aaaannnh....\\H\n Didn't know you had that oomph in you, #{target}....\\H\""
  tx["tx1"] = "\"Nnn....aaahh....\\H\n More, let's mingle even more with each other....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Nha...aah....\\H\n That's amazing........\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
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
  tx["tx1"] = "\"Sigh....nnn....\\H\n That's it....good....\\H\""
#  tx["tx1"] = "\"#{pleasure_cr}\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "\"#{pleasure_cr}\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キッス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"Nnn....fuah....\\H\n That's it...you're good, #{target}....\\H\""
  tx["tx1"] = "\"Smooch....*lick....*roll....\\H\n Hey....get your tongue....deeper in....\\H\""if $game_variables[17] > 50 #パターンB
  tx["tx1"] = "\"Mmph...smooch....*lick....\\H\n Ufufu....I'm gonna get intoxicated....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼バスト▼****************************************************************************************
when "Chest"
  tx["tx1"] = "\"Aha....\\H\n You like my breasts....? \\H\""
  tx["tx1"] = "\"Aaaah....you're not done yet....?\\H\n Feels like my boob's gonna get even bigger....\\H\""if $game_variables[17] > 50 #パターンB
  tx["tx1"] = "\"Nnnn...aaa....sigh....\\H\n You've got it....I don't mind you being more forceful...nnn....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ヒップ▼****************************************************************************************
when "Hips"
  tx["tx1"] = "\"Aiee....not my ass....\\H\""
  tx["tx1"] = "\"Nnah....nnnn....\\H\n Come on....I said no....nnaaah....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クロッチ▼****************************************************************************************
when "Crotch"
  if $msg.t_enemy.nude?
    tx["tx1"] = "\"Yes....that's it, that feels good....\\H\n I don't mind you going harder....nnaaah....\\H\""
    tx["tx1"] = "\"Aaaah....\\H\n You're going so deep....nnnn....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
    tx["tx1"] = "\"Nha...aah....\\H\n That's amazing........\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  else
    tx["tx1"] = "\"Aaaannnh....\\H\n Ufufu, you wanna get me all stained....?\"" # 対象が着衣状態の時
    tx["tx1"] = "\"Nnnn....\\H\n But I'm fine with more direct touches....\\H\"" if $game_variables[17] > 50 # 対象が着衣状態の時・パターンB
    tx["tx1"] = "\"Aaaannnh....\\H\n Don't keep me in suspense like that....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス 対象が着衣状態の時
    tx["tx1"] = "\"Nha...aah....\\H\n That's amazing........\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼スクラッチ系▼****************************************************************************************
when "Tribadism"
  tx["tx1"] = "\"Aaaannnh....\\H\n Didn't know you had that oomph in you, #{target}....\\H\""
  tx["tx1"] = "\"Nnn....aaahh....\\H\n More, let's mingle even more with each other....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Nha...aah....\\H\n That's amazing........\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_type





end
#====================================================================================================================
 end #def
end #class
