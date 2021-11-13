=begin
#######################################################################################################################
 ●『サキュバスロード（橙）』追撃口上（対主人公・ベッドイン中）
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2017,06/27     パイズリ・ペリスコープ口上追加
#######################################################################################################################
=end





#######################################################################################################################
######################################★追撃：主人公への追撃を行う口上群###############################################
#######################################################################################################################
class MsgSuccubuslord_A < MsgBase 
 def msg_bedin_attack_00
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"Let me fulfill your\n desires with my body, #{target}\\H\n Just relax and leave your body to me....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"#{kiss_l}\n ....#{giggle_s}\\H I'm going to suck out both your reason and mind and\n make you unable to think of anything other than pleasure\\H\""
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼手攻め▼****************************************************************************************
when "手"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼口攻め▼****************************************************************************************
when "口"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼胸攻め▼****************************************************************************************
when "breasts"
  case $msg.at_parts
  when "Target: Penis" #パイズリ
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
    tx["tx1"] = "\"....With these breasts of mine,\n I'm going to thoroughly provide love to your precious area, #{target}\\H\n Just relax and surrender your body to the soft sensation....\\H\""
    tx["tx1"] = "\"Aaaanh, jumping up from just sticking it in.... #{giggle_s} What a wild child\\H\n Your little fellow here filled with desires,\n I'm going to gently wrap it in pleasure and mesmerize it in ecstasy\\H\"" if $game_variables[17] > 50 #ランダム分岐
    if $msg.t_target.crisis? #対象がクライシス
      tx["tx1"] = "\"#{giggle} To be utterly mesmerized like that....\\H\n Alright then, make this breast all sticky and stained if that's what you want....\\H Release your boiling hot cloudiness as you desire\\H\""
      tx["tx1"] = "\"....#{giggle_s}\\H So hard and hard....\n My breasts' going to melt from the animal-like passion....\\H\n As you wish, I'll have even your heart fascinated....\\H\"" if $game_variables[17] > 50 #ランダム分岐
    end
  when "対象：口" #ぱふぱふ
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼アソコ攻め▼****************************************************************************************
when "♀" #素股
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼足攻め▼****************************************************************************************
when "足" #足コキ
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ホールド援護▼****************************************************************************************
when "ホールド援護"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.at_parts == "対象：口" #援護キッス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.at_parts == "対象：ペニス" #援護ペニス攻め
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.at_parts == "対象：睾丸" #援護睾丸攻め
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.at_parts == "対象：尻" #援護尻攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts
















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"Let me fulfill your\n desires with my body, #{target}\\H\n Just relax and leave your body to me....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"#{kiss_l}\n ....#{giggle_s}\\H I'm going to suck out both your reason and mind and\n make you unable to think of anything other than pleasure\\H\""
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼手攻め▼****************************************************************************************
when "手"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼口攻め▼****************************************************************************************
when "口"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼胸攻め▼****************************************************************************************
when "breasts"
  case $msg.at_parts
  when "Target: Penis" #パイズリ
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
    tx["tx1"] = "\"....With these breasts of mine,\n I'm going to thoroughly provide love to your precious area, #{target}\\H\n Just relax and surrender your body to the soft sensation....\\H\""
    tx["tx1"] = "\"Aaaanh, jumping up from just sticking it in.... #{giggle_s} What a wild child\\H\n Your little fellow here filled with desires,\n I'm going to gently wrap it in pleasure and mesmerize it in ecstasy\\H\"" if $game_variables[17] > 50 #ランダム分岐
    if $msg.t_target.crisis? #対象がクライシス
      tx["tx1"] = "\"#{giggle} To be utterly mesmerized like that....\\H\n Alright then, make this breast all sticky and stained if that's what you want....\\H Release your boiling hot cloudiness as you desire\\H\""
      tx["tx1"] = "\"....#{giggle_s}\\H So hard and hard....\n My breasts' going to melt from the animal-like passion....\\H\n As you wish, I'll have even your heart fascinated....\\H\"" if $game_variables[17] > 50 #ランダム分岐
    end
  when "対象：口" #ぱふぱふ
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼アソコ攻め▼****************************************************************************************
when "♀" #素股
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼足攻め▼****************************************************************************************
when "足" #足コキ
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ホールド援護▼****************************************************************************************
when "ホールド援護"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.at_parts == "対象：口" #援護キッス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.at_parts == "対象：ペニス" #援護ペニス攻め
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.at_parts == "対象：睾丸" #援護睾丸攻め
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.at_parts == "対象：尻" #援護尻攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts














#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"Let me fulfill your\n desires with my body, #{target}\\H\n Just relax and leave your body to me....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"#{kiss_l}\n ....#{giggle_s}\\H I'm going to suck out both your reason and mind and\n make you unable to think of anything other than pleasure\\H\""
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼手攻め▼****************************************************************************************
when "手"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼口攻め▼****************************************************************************************
when "口"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼胸攻め▼****************************************************************************************
when "breasts"
  case $msg.at_parts
  when "Target: Penis" #パイズリ
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
    tx["tx1"] = "\"....With these breasts of mine,\n I'm going to thoroughly provide love to your precious area, #{target}\\H\n Just relax and surrender your body to the soft sensation....\\H\""
    tx["tx1"] = "\"Aaaanh, jumping up from just sticking it in.... #{giggle_s} What a wild child\\H\n Your little fellow here filled with desires,\n I'm going to gently wrap it in pleasure and mesmerize it in ecstasy\\H\"" if $game_variables[17] > 50 #ランダム分岐
    if $msg.t_target.crisis? #対象がクライシス
      tx["tx1"] = "\"#{giggle} To be utterly mesmerized like that....\\H\n Alright then, make this breast all sticky and stained if that's what you want....\\H Release your boiling hot cloudiness as you desire\\H\""
      tx["tx1"] = "\"....#{giggle_s}\\H So hard and hard....\n My breasts' going to melt from the animal-like passion....\\H\n As you wish, I'll have even your heart fascinated....\\H\"" if $game_variables[17] > 50 #ランダム分岐
    end
  when "対象：口" #ぱふぱふ
#    tx["tx1"] = "「#{giggle_s}……\\H」"
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#    tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼アソコ攻め▼****************************************************************************************
when "♀" #素股
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼足攻め▼****************************************************************************************
when "足" #足コキ
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ホールド援護▼****************************************************************************************
when "ホールド援護"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.at_parts == "対象：口" #援護キッス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.at_parts == "対象：ペニス" #援護ペニス攻め
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.at_parts == "対象：睾丸" #援護睾丸攻め
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.at_parts == "対象：尻" #援護尻攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts







end
#====================================================================================================================
 end #def
end #class




















#######################################################################################################################
######################################★追撃：主人公への追撃を行う口上群###############################################
#######################################################################################################################
class MsgSuccubuslord_A < MsgBase 
 def msg_bedin_attack_hold_00
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"#{giggle} I need you to be more intoxicated in it....\\H\n Enough that you're engulfed by the pleasure touching this body\n and don't wish to separate from me....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_parts
#▼インサート(♀)▼****************************************************************************************
when "♀挿入：アソコ側"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼顔面騎乗▼****************************************************************************************
when "騎乗：アソコ側"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ぱふぱふ▼****************************************************************************************
when "ぱふぱふ"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼パイズリ▼****************************************************************************************
when "Paizuri"
#  tx["tx1"] = ""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
  case $msg.t_enemy.initiative_level
  when 3 #ホールドレベル3
    if $msg.t_target.crisis? #対象がクライシス
      tx["tx1"] = "\"Gettting sticky with droll every time your face is pulled out from the cleavage....\n #{giggle_s}.... It's like I'm getting soiled by a male arousal\\H\n Smearing it and giving it a glossy sheen....what a great salve\\H\""
      tx["tx1"] = "\"I've gotten all slimy from your drool and\n pushing you down just makes you slouch back....gasping so candidly and stimulatingly like that\\H\n #{giggle_s} ....Such a perverse and marvelous look....\\H\"" if $game_variables[17] > 33 #ランダム分岐
      tx["tx1"] = "\"Every rub from my breasts makes slimy noises....\n Ufufu....looks like you need something indecent like this as paybacks.\n With these shameful breasts, I'm going to indulge even your heart in pleasure....\\H\"" if $game_variables[17] > 66 #ランダム分岐
      if $msg.t_target.critical == true #SS時
        tx["tx1"] = "\"#{giggle_s} ....No need to desperately try and fight it.\n I'm going to stroke it as hard as I can to erode even your reasoning\\H\n Enjoy the pleasure of being crushed and teased by the breasts....\\H\""
        tx["tx1"] = "\"Your tiny mouth keeps staying open....and the drools won't stop\\H\n .....Ufufu, reacting sensitively to breathing even, what a fickle manhood\\H\n I'll pamper you by using my lips and breathing as well....smooch\\H\"" if $game_variables[17] > 33 #ランダム分４岐
        tx["tx1"] = "\"Shaking your hips in delight every time I squeeze it firmly....\n Nfufu, so you like to be teased lightly like this\\H\n Get a good taste of it....the sensation of your favorite breasts....\\H\"" if $game_variables[17] > 66 #ランダム分岐
      end
    else #非クライシス
      tx["tx1"] = "\"Being covered gently by warmth feels irresistible, right?\n While presing it from both sides, I'm going to stroke it good so\n you can get a good feel of the soft soft sensation....\\H\""
      tx["tx1"] = "\"Burying it in breasts, pressing it tight, and confining it....\n I'm going to tighten it little by little and slowly corner you....\\H\n #{giggle_s} ....That twitch just now must've meant you were enjoying it\\H\"" if $game_variables[17] > 33 #ランダム分岐
      tx["tx1"] = "\"Having confined it within my breasts, every gentle squeeze makes it\n stiffly bend back and swell up feverishly....\\H\n #{giggle_s} ....I feel like my breasts' going to melt with it....\\H\"" if $game_variables[17] > 66 #ランダム分岐
      if $msg.t_target.critical == true #SS時
        tx["tx1"] = "\"#{giggle} Let me be a bit cruel to you now\\H\n In order to wring it out from the base to the tip with my breasts....\\H\n Enjoy the feel, look and sound....of being crushed by the breasts\\H\""
        tx["tx1"] = "\"This manhood that's so greedly bent that it can't fit into my cleavage,\n I'm going to tease its tip that's sore and swollen....nnnhh\\H\n *Kiss, *lick....nfufu, doesn't it feel like your waist is going to melt? \\H\"" if $game_variables[17] > 33 #ランダム分岐
        tx["tx1"] = "\"Can you taste more of my body on your own?\n I'm going to embrace your whole waist and press it tight\\H\n ....#{giggle_s} What a nice cry....it's going to mesmerize me....\\H\"" if $game_variables[17] > 66 #ランダム分岐
      end
    end
  when 2 #ホールドレベル2
    tx["tx1"] = "\"Sticking it in gently and rubbing it softly.... #{giggle_s}\\H\n I want you to get a full taste of my breasts' warmth and be enthralled by it\\H\n ....Ufufu, it's still getting harder....you want more? \\H\""
    tx["tx1"] = "\"Just relax and....I'm going to thoroughly loosen up your body\\H\n Covering it in my soft breasts and shaking it gently....\n Doesn't it feel like you're swimming in a sweet nap....? \\H\"" if $game_variables[17] > 50 #ランダム分岐
    tx["tx1"] = "\"#{giggle} You've been worn down by the pleasure, haven't you?\n Unable to escape while having your precious area seized by my cleavage,\n the helpless feeling of getting gently teased....doesn't it arouse you? \\H\"" if $msg.t_target.critical == true #ホールドレベル1→2
  else #ホールドレベル1
    tx["tx1"] = "\"Struggling like that won't let you savor it in full.\n Just hold still and surrender your body to your desire welling up....\n Immerse yourself in the ecstasy gently entangling you....\\H\""
    tx["tx1"] = "\"Nnn....oh no, I'm not letting you go so easily.\n Your shaft down here tells me it hasn't had enough and\n is pleading for more hug, #{target}....\\H\"" if $game_variables[17] > 50 #ランダム分岐
  end
  tx["tx1"] = "\"#{giggle_s} ....Maybe I should've been gentler for now?\n I'll wrap it slowly like this until you settle down\\H\n Don't you worry, you'll want to do it again in no time....\\H\"" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼尻ディルド攻め▼****************************************************************************************
when "ディルド尻挿入"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼キッス▼****************************************************************************************
when "キッス"
#  tx["tx1"] = "「#{kiss_l}」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"#{giggle} I need you to be more intoxicated in it....\\H\n Enough that you're engulfed by the pleasure touching this body\n and don't wish to separate from me....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_parts
#▼インサート(♀)▼****************************************************************************************
when "♀挿入：アソコ側"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼顔面騎乗▼****************************************************************************************
when "騎乗：アソコ側"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ぱふぱふ▼****************************************************************************************
when "ぱふぱふ"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼パイズリ▼****************************************************************************************
when "Paizuri"
#  tx["tx1"] = ""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
  case $msg.t_enemy.initiative_level
  when 3 #ホールドレベル3
    if $msg.t_target.crisis? #対象がクライシス
      tx["tx1"] = "\"Gettting sticky with droll every time your face is pulled out from the cleavage....\n #{giggle_s}.... It's like I'm getting soiled by a male arousal\\H\n Smearing it and giving it a glossy sheen....what a great salve\\H\""
      tx["tx1"] = "\"I've gotten all slimy from your drool and\n pushing you down just makes you slouch back....gasping so candidly and stimulatingly like that\\H\n #{giggle_s} ....Such a perverse and marvelous look....\\H\"" if $game_variables[17] > 33 #ランダム分岐
      tx["tx1"] = "\"Every rub from my breasts makes slimy noises....\n Ufufu....looks like you need something indecent like this as paybacks.\n With these shameful breasts, I'm going to indulge even your heart in pleasure....\\H\"" if $game_variables[17] > 66 #ランダム分岐
      if $msg.t_target.critical == true #SS時
        tx["tx1"] = "\"#{giggle_s} ....No need to desperately try and fight it.\n I'm going to stroke it as hard as I can to erode even your reasoning\\H\n Enjoy the pleasure of being crushed and teased by the breasts....\\H\""
        tx["tx1"] = "\"Your tiny mouth keeps staying open....and the drools won't stop\\H\n .....Ufufu, reacting sensitively to breathing even, what a fickle manhood\\H\n I'll pamper you by using my lips and breathing as well....smooch\\H\"" if $game_variables[17] > 33 #ランダム分４岐
        tx["tx1"] = "\"Shaking your hips in delight every time I squeeze it firmly....\n Nfufu, so you like to be teased lightly like this\\H\n Get a good taste of it....the sensation of your favorite breasts....\\H\"" if $game_variables[17] > 66 #ランダム分岐
      end
    else #非クライシス
      tx["tx1"] = "\"Being covered gently by warmth feels irresistible, right?\n While presing it from both sides, I'm going to stroke it good so\n you can get a good feel of the soft soft sensation....\\H\""
      tx["tx1"] = "\"Burying it in breasts, pressing it tight, and confining it....\n I'm going to tighten it little by little and slowly corner you....\\H\n #{giggle_s} ....That twitch just now must've meant you were enjoying it\\H\"" if $game_variables[17] > 33 #ランダム分岐
      tx["tx1"] = "\"Having confined it within my breasts, every gentle squeeze makes it\n stiffly bend back and swell up feverishly....\\H\n #{giggle_s} ....I feel like my breasts' going to melt with it....\\H\"" if $game_variables[17] > 66 #ランダム分岐
      if $msg.t_target.critical == true #SS時
        tx["tx1"] = "\"#{giggle} Let me be a bit cruel to you now\\H\n In order to wring it out from the base to the tip with my breasts....\\H\n Enjoy the feel, look and sound....of being crushed by the breasts\\H\""
        tx["tx1"] = "\"This manhood that's so greedly bent that it can't fit into my cleavage,\n I'm going to tease its tip that's sore and swollen....nnnhh\\H\n *Kiss, *lick....nfufu, doesn't it feel like your waist is going to melt? \\H\"" if $game_variables[17] > 33 #ランダム分岐
        tx["tx1"] = "\"Can you taste more of my body on your own?\n I'm going to embrace your whole waist and press it tight\\H\n ....#{giggle_s} What a nice cry....it's going to mesmerize me....\\H\"" if $game_variables[17] > 66 #ランダム分岐
      end
    end
  when 2 #ホールドレベル2
    tx["tx1"] = "\"Sticking it in gently and rubbing it softly.... #{giggle_s}\\H\n I want you to get a full taste of my breasts' warmth and be enthralled by it\\H\n ....Ufufu, it's still getting harder....you want more? \\H\""
    tx["tx1"] = "\"Just relax and....I'm going to thoroughly loosen up your body\\H\n Covering it in my soft breasts and shaking it gently....\n Doesn't it feel like you're swimming in a sweet nap....? \\H\"" if $game_variables[17] > 50 #ランダム分岐
    tx["tx1"] = "\"#{giggle} You've been worn down by the pleasure, haven't you?\n Unable to escape while having your precious area seized by my cleavage,\n the helpless feeling of getting gently teased....doesn't it arouse you? \\H\"" if $msg.t_target.critical == true #ホールドレベル1→2
  else #ホールドレベル1
    tx["tx1"] = "\"Struggling like that won't let you savor it in full.\n Just hold still and surrender your body to your desire welling up....\n Immerse yourself in the ecstasy gently entangling you....\\H\""
    tx["tx1"] = "\"Nnn....oh no, I'm not letting you go so easily.\n Your shaft down here tells me it hasn't had enough and\n is pleading for more hug, #{target}....\\H\"" if $game_variables[17] > 50 #ランダム分岐
  end
  tx["tx1"] = "\"#{giggle_s} ....Maybe I should've been gentler for now?\n I'll wrap it slowly like this until you settle down\\H\n Don't you worry, you'll want to do it again in no time....\\H\"" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼尻ディルド攻め▼****************************************************************************************
when "ディルド尻挿入"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼キッス▼****************************************************************************************
when "キッス"
#  tx["tx1"] = "「#{kiss_l}」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts













#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"#{giggle} I need you to be more intoxicated in it....\\H\n Enough that you're engulfed by the pleasure touching this body\n and don't wish to separate from me....\\H\""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_parts
#▼インサート(♀)▼****************************************************************************************
when "♀挿入：アソコ側"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼顔面騎乗▼****************************************************************************************
when "騎乗：アソコ側"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ぱふぱふ▼****************************************************************************************
when "ぱふぱふ"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼パイズリ▼****************************************************************************************
when "Paizuri"
#  tx["tx1"] = ""
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
  case $msg.t_enemy.initiative_level
  when 3 #ホールドレベル3
    if $msg.t_target.crisis? #対象がクライシス
      tx["tx1"] = "\"Gettting sticky with droll every time your face is pulled out from the cleavage....\n #{giggle_s}.... It's like I'm getting soiled by a male arousal\\H\n Smearing it and giving it a glossy sheen....what a great salve\\H\""
      tx["tx1"] = "\"I've gotten all slimy from your drool and\n pushing you down just makes you slouch back....gasping so candidly and stimulatingly like that\\H\n #{giggle_s} ....Such a perverse and marvelous look....\\H\"" if $game_variables[17] > 33 #ランダム分岐
      tx["tx1"] = "\"Every rub from my breasts makes slimy noises....\n Ufufu....looks like you need something indecent like this as paybacks.\n With these shameful breasts, I'm going to indulge even your heart in pleasure....\\H\"" if $game_variables[17] > 66 #ランダム分岐
      if $msg.t_target.critical == true #SS時
        tx["tx1"] = "\"#{giggle_s} ....No need to desperately try and fight it.\n I'm going to stroke it as hard as I can to erode even your reasoning\\H\n Enjoy the pleasure of being crushed and teased by the breasts....\\H\""
        tx["tx1"] = "\"Your tiny mouth keeps staying open....and the drools won't stop\\H\n .....Ufufu, reacting sensitively to breathing even, what a fickle manhood\\H\n I'll pamper you by using my lips and breathing as well....smooch\\H\"" if $game_variables[17] > 33 #ランダム分４岐
        tx["tx1"] = "\"Shaking your hips in delight every time I squeeze it firmly....\n Nfufu, so you like to be teased lightly like this\\H\n Get a good taste of it....the sensation of your favorite breasts....\\H\"" if $game_variables[17] > 66 #ランダム分岐
      end
    else #非クライシス
      tx["tx1"] = "\"Being covered gently by warmth feels irresistible, right?\n While presing it from both sides, I'm going to stroke it good so\n you can get a good feel of the soft soft sensation....\\H\""
      tx["tx1"] = "\"Burying it in breasts, pressing it tight, and confining it....\n I'm going to tighten it little by little and slowly corner you....\\H\n #{giggle_s} ....That twitch just now must've meant you were enjoying it\\H\"" if $game_variables[17] > 33 #ランダム分岐
      tx["tx1"] = "\"Having confined it within my breasts, every gentle squeeze makes it\n stiffly bend back and swell up feverishly....\\H\n #{giggle_s} ....I feel like my breasts' going to melt with it....\\H\"" if $game_variables[17] > 66 #ランダム分岐
      if $msg.t_target.critical == true #SS時
        tx["tx1"] = "\"#{giggle} Let me be a bit cruel to you now\\H\n In order to wring it out from the base to the tip with my breasts....\\H\n Enjoy the feel, look and sound....of being crushed by the breasts\\H\""
        tx["tx1"] = "\"This manhood that's so greedly bent that it can't fit into my cleavage,\n I'm going to tease its tip that's sore and swollen....nnnhh\\H\n *Kiss, *lick....nfufu, doesn't it feel like your waist is going to melt? \\H\"" if $game_variables[17] > 33 #ランダム分岐
        tx["tx1"] = "\"Can you taste more of my body on your own?\n I'm going to embrace your whole waist and press it tight\\H\n ....#{giggle_s} What a nice cry....it's going to mesmerize me....\\H\"" if $game_variables[17] > 66 #ランダム分岐
      end
    end
  when 2 #ホールドレベル2
    tx["tx1"] = "\"Sticking it in gently and rubbing it softly.... #{giggle_s}\\H\n I want you to get a full taste of my breasts' warmth and be enthralled by it\\H\n ....Ufufu, it's still getting harder....you want more? \\H\""
    tx["tx1"] = "\"Just relax and....I'm going to thoroughly loosen up your body\\H\n Covering it in my soft breasts and shaking it gently....\n Doesn't it feel like you're swimming in a sweet nap....? \\H\"" if $game_variables[17] > 50 #ランダム分岐
    tx["tx1"] = "\"#{giggle} You've been worn down by the pleasure, haven't you?\n Unable to escape while having your precious area seized by my cleavage,\n the helpless feeling of getting gently teased....doesn't it arouse you? \\H\"" if $msg.t_target.critical == true #ホールドレベル1→2
  else #ホールドレベル1
    tx["tx1"] = "\"Struggling like that won't let you savor it in full.\n Just hold still and surrender your body to your desire welling up....\n Immerse yourself in the ecstasy gently entangling you....\\H\""
    tx["tx1"] = "\"Nnn....oh no, I'm not letting you go so easily.\n Your shaft down here tells me it hasn't had enough and\n is pleading for more hug, #{target}....\\H\"" if $game_variables[17] > 50 #ランダム分岐
  end
  tx["tx1"] = "\"#{giggle_s} ....Maybe I should've been gentler for now?\n I'll wrap it slowly like this until you settle down\\H\n Don't you worry, you'll want to do it again in no time....\\H\"" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼尻ディルド攻め▼****************************************************************************************
when "ディルド尻挿入"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼キッス▼****************************************************************************************
when "キッス"
#  tx["tx1"] = "「#{kiss_l}」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts





end
#====================================================================================================================
 end #def
end #class




















#######################################################################################################################
######################################★追撃：主人公への追撃を行う口上群###############################################
#######################################################################################################################
class MsgSuccubuslord_A < MsgBase 
 def msg_bedin_attack_self_00
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#====================================================================================================================
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"#{pleasure_s}\n Ufufu, talk about being aggressive....\\H\""
  tx["tx1"] = "\"#{pleasure_l}\n That feels so nice; I want more....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"#{pleasure_cr}\n Oh, #{target}....\\H\n You're more, relentless....nnh\\H Than you, look....\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キッス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"#{kiss_l} #{giggle}\n Make me in ecstasy, will you....\\H\""
  tx["tx1"] = "\"#{kiss_l}\n More, please....\\H\n Make me intoxicated....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼バスト▼****************************************************************************************
when "バスト"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ヒップ▼****************************************************************************************
when "ヒップ"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クロッチ▼****************************************************************************************
when "クロッチ"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼スウィング系▼****************************************************************************************
when "スウィング","ヘヴィスウィング"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_type















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#====================================================================================================================
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"#{pleasure_s}\n Ufufu, talk about being aggressive....\\H\""
  tx["tx1"] = "\"#{pleasure_l}\n That feels so nice; I want more....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"#{pleasure_cr}\n Oh, #{target}....\\H\n You're more, relentless....nnh\\H Than you, look....\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キッス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"#{kiss_l} #{giggle}\n Make me in ecstasy, will you....\\H\""
  tx["tx1"] = "\"#{kiss_l}\n More, please....\\H\n Make me intoxicated....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼バスト▼****************************************************************************************
when "バスト"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ヒップ▼****************************************************************************************
when "ヒップ"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クロッチ▼****************************************************************************************
when "クロッチ"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼スウィング系▼****************************************************************************************
when "スウィング","ヘヴィスウィング"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_type














#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"#{pleasure_s}\n Ufufu, talk about being aggressive....\\H\""
  tx["tx1"] = "\"#{pleasure_l}\n That feels so nice; I want more....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"#{pleasure_cr}\n Oh, #{target}....\\H\n You're more, relentless....nnh\\H Than you, look....\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キッス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"#{kiss_l} #{giggle}\n Make me in ecstasy, will you....\\H\""
  tx["tx1"] = "\"#{kiss_l}\n More, please....\\H\n Make me intoxicated....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼バスト▼****************************************************************************************
when "バスト"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ヒップ▼****************************************************************************************
when "ヒップ"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クロッチ▼****************************************************************************************
when "クロッチ"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼スウィング系▼****************************************************************************************
when "スウィング","ヘヴィスウィング"
#  tx["tx1"] = "「#{giggle_s}……\\H」"
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "「#{giggle_s}……\\H」" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_type





end
#====================================================================================================================
 end #def
end #class
