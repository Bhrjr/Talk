=begin
#######################################################################################################################
 ●『インプ（緑）』追撃口上（対主人公・通常戦闘中）
 ●性格：勝ち気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end





#######################################################################################################################
######################################★追撃：主人公への追撃を行う口上群###############################################
#######################################################################################################################
class MsgImp_A < MsgBase
 def msg_attack_05
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"Ehehe, lemme do it for you♪\""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
  tx["tx1"] = "\"Hey, #{target}.\n You need to feel even better\\H\"" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_type
#▼キス▼****************************************************************************************
when "Kiss"
  tx["tx1"] = "\"Smooooch\\H\n Aha, we can have more smoochies if you want\\H\""
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
when "口"
#  tx["tx1"] = ""
#  tx["tx1"] = "" unless $msg.t_target.nude? # 対象が着衣状態の時
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
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
class MsgImp_A < MsgBase
 def msg_attack_hold_05
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"Ah, does it feel good when I do it like this?\n Then I'm gonna do more on you♪\""
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #格納
  ms.push(tx)
  #==================================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
case $msg.at_parts
#▼インサート(♀)▼****************************************************************************************
when "♀ rubbing"
  tx["tx1"] = "\"Ahaha, the horsie goes clippety-clop♪\""
  tx["tx1"] = "\"Ah-, nuh-uh. #{myname}'m the one that's doing it!\n You don't hafta move, #{target}!\"" if $game_variables[17] > 50 #パターンB
#  tx["tx1"] = "" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_target.crisis? #対象がクライシス
#  tx["tx1"] = "" if $msg.t_target.weaken? #対象が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼顔面騎乗▼****************************************************************************************
when "Pussy on top"
  tx["tx1"] = "\"Ahaha, the horsie goes clippety-clop♪\""
  tx["tx1"] = "\"Ah-, nuh-uh. #{myname}'m the one that's doing it!\n You don't hafta move, #{target}!\"" if $game_variables[17] > 50 #パターンB
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
class MsgImp_A < MsgBase
 def msg_attack_self_05
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"Nnnnhh\\H\n That tickles, #{target}....aannh\\H\""
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
  tx["tx1"] = "\"Smooch....\\H\n ....Fwah....\\H\""
  tx["tx1"] = "\"Mmm....*kiss*....smooch....\n Hey, #{target}....#{myname} love this....\\H\n Keep doing it....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼バスト▼****************************************************************************************
when "Chest"
  tx["tx1"] = "\"Aha, that tickles♪\n ....Annh\\H\""
  tx["tx1"] = "\"Mmmm....nfu....\\H\n You shouldn't play with it so much, #{target}....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼ヒップ▼****************************************************************************************
when "Hips"
  tx["tx1"] = "\"Aha, that tickles♪\n ....Annh\\H\""
  tx["tx1"] = "\"Mmmm....ahaa....\\H\n Don't just focus on my butt, #{target}....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼クロッチ▼****************************************************************************************
when "Crotch"
  tx["tx1"] = "\"Ahah, that tickles, #{target}♪\n ....Annh\\H\""
  tx["tx1"] = "\"Ahaha, you shouldn't grind it so much♪\n ....Annnh\\H\"" unless $msg.t_target.nude? # 対象が着衣状態の時
  tx["tx1"] = "\"Aah....nnnh........fuah....\\H\n Keep doing it, #{target}....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
#▼スウィング系▼****************************************************************************************
when "Thrust","Piston"
  tx["tx1"] = "\"G-Go slower, #{target}....!\""
  tx["tx1"] = "\"Auuugh....ooohh.......\\H\n #{target}....quit teasing me....\\H\"" if $msg.t_enemy.crisis? #自分がクライシス
#  tx["tx1"] = "" if $msg.t_enemy.weaken? #自分が絶頂中
  #-----------------------------------------------------
  #格納
  ms.push(tx)
end #case $msg.at_type
#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class
