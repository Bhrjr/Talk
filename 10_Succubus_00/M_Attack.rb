=begin
#######################################################################################################################
 ●『サキュバス（橙）』追撃口上（対主人公・通常戦闘中）
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end






#######################################################################################################################
######################################★追撃：主人公への追撃を行う口上群###############################################
#######################################################################################################################
class MsgSuccubus_A < MsgBase
 def msg_attack_00
#==================================================================================================================
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
#  tx["tx1"] = ""
#  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼口攻め▼****************************************************************************************
when "Mouth"
  tx["tx1"] = "\"Relax a little....\\H\n Let me give you a blowjob...\\H\""
  tx["tx1"] = "\"Ufufu, you like it?\n Then I won't hold anything back\\H\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Mmmm....slurp....mmguh....\\H\n Ufufu...tasty....\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"You must be tired from cumming just now....\\H\n I'll do the blowjob for you...\\H\"" if $msg.t_target.weaken? #対象が絶頂中
  tx["tx1"] = "\"Ufufu, it's so hard already....\\H\n Looks like you can go again and again....\\H\"" if $msg.t_target.weaken? and $game_variables[17] > 50 #対象が絶頂中・パターンB
#  tx["tx1"] = "" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼胸攻め▼****************************************************************************************
when "胸"
  case $msg.at_parts
  when "対象：ペニス" #パイズリ
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
#▼アソコ攻め▼****************************************************************************************
when "♀" #素股
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼足攻め▼****************************************************************************************
when "足" #足コキ
#  tx["tx1"] = ""
#  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
#  tx["tx1"] = "" if $msg.tag == "対象：睾丸" #袋攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ホールド援護▼****************************************************************************************
when "ホールド援護"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.at_parts == "対象：口" #援護キッス
#  tx["tx1"] = "" if $msg.at_parts == "対象：ペニス" #援護ペニス攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：睾丸" #援護睾丸攻め
#  tx["tx1"] = "" if $msg.at_parts == "対象：尻" #援護尻攻め
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_parts
#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class










#######################################################################################################################
######################################★追撃：主人公への追撃を行う口上群###############################################
#######################################################################################################################
class MsgSuccubus_A < MsgBase
 def msg_attack_hold_00
#==================================================================================================================
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
#▼インサート(♀)▼****************************************************************************************
when "♀ rubbing"
  tx["tx1"] = "\"*Giggle....\\H\n Is this your first time to feel like this?\""
  tx["tx2"] = "\"Get a good\n taste of my body\\H\""
  tx["tx1"] = "\"Can you see it, #{target}....?\n That is, where you and I are connected....\\H\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Ufufu....does it feel good?\n Give yourself in to me....\\H\"" if $msg.t_target.crisis? #対象がクライシス
  tx["tx1"] = "\"You came just now and yet it's so hard....\\H\n Looks like I'll get to have some fun too\\H\"" if $msg.t_target.weaken? #対象が絶頂中
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
#▼パイズリ▼****************************************************************************************
when "パイズリ"
#  tx["tx1"] = ""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼尻ディルド攻め▼****************************************************************************************
when "ディルド尻挿入"
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
#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class










#######################################################################################################################
####################################★追撃：主人公から追撃を受ける口上群###############################################
#######################################################################################################################
class MsgSuccubus_A < MsgBase
 def msg_attack_self_00
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"Sigh....mmm....\\H\n That's it....good....\\H\""
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
  tx["tx1"] = "\"Mmm....fuah....\\H\n That's it...you're good, #{target}....\\H\""
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
  tx["tx1"] = "\"Mmmm...aaa....sigh....\\H\n You've got it....I don't mind you being more forceful...mmm....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ヒップ▼****************************************************************************************
when "Hips"
  tx["tx1"] = "\"Aiee....not my ass....\\H\""
  tx["tx1"] = "\"Nnah....mmmm....\\H\n Come on....I said no....nnaaah....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クロッチ▼****************************************************************************************
when "Crotch"
  if $msg.t_enemy.nude?
    tx["tx1"] = "\"Yes....that's it, that feels good....\\H\n I don't mind you going harder....nnaaah....\\H\""
    tx["tx1"] = "\"Aaaah....\\H\n You're going so deep....mmmm....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
    tx["tx1"] = "\"Nha...aah....\\H\n That's amazing........\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  else
    tx["tx1"] = "\"Aaaannnh....\\H\n Ufufu, you want me to get you all stained....?\"" # 対象が着衣状態の時
    tx["tx1"] = "\"Mmmm....\\H\n But I'm fine with more direct touches....\\H\"" if $game_variables[17] > 50 # 対象が着衣状態の時・パターンB
    tx["tx1"] = "\"Aaaannnh....\\H\n Don't keep me in suspense like that....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス 対象が着衣状態の時
    tx["tx1"] = "\"Nha...aah....\\H\n That's amazing........\\H\"" if $msg.t_enemy.weaken? #自分が絶頂中
  end
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼スウィング系▼****************************************************************************************
when "Thrust","Piston"
  tx["tx1"] = "\"Aaanh……\\H\n You're going in so deep....nnnnhh....\\H\""
  tx["tx1"] = "\"Nnnhaaa...aa....\\H\n That's feels so good........\\H\""if $game_variables[17] > 50 #パターンB
  tx["tx1"] = "\"Yeah....that's it, it feels so good....\\H\n I don't mind you going harder....nnaah....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_type
#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class
