=begin
#######################################################################################################################
 ●『デビル（緑）』絶頂口上（対パートナー）
 ●性格：勝ち気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,09.05     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

#######################################################################################################################
####################################★絶頂：絶頂する(した)パートナーに向けた口上群#####################################
#######################################################################################################################
class MsgDevil_A < MsgBase
 def msg_female_ecstasy_05
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "\"#{giggle}\""
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
  tx["tx1"] = "\"#{giggle_s} 'Bout to cum again?\n Then what should I do 'bout it....? \\H\""
  tx["tx1"] = "\"#{giggle_s} What's the matter?\n I won't know unless you tell me nice and clear\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle_s} 'Bout to cum?\n I don't mind gals that get aroused easily\\H\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "\"Whoa there....\n I ain't letting you go just because you try to.\n Just stay still and let us make you cum\\H\""
  tx["tx1"] = "\"Ah, why you!\n Not when I'm at the best part!\n ....Damn, you need to be better at reading the mood.\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ドロウネクター
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインサート
  elsif $msg.t_enemy.dildo_insert?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "\"#{giggle_s} Maybe I should tone down the mean-spiritedness\\H\n Time for you to cum nice and neatly\\H\""
  tx["tx1"] = "\"#{giggle_s} Maybe I should tone down the mean-spiritedness\\H\n Time for you to cum nice and neatly\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"With that settled....time to make you cum♪\n Taste my skill in all its glory\\H\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "\"#{giggle}\n How was it? Did that leave you satisfied?\""
  tx["tx1"] = "\"#{giggle}\n How was it? Did that leave you satisfied?\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle}\n How was it? Did that leave you satisfied?\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "\"#{giggle_s} Is this what my opponent's supposed to be?\n Shouldn't you to try a bit better than that?\""
  tx["tx1"] = "\"Tch, so you're just an another cherry-picker.\n Augh, don't you waste my time like that!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ドロウネクター
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインサート
  elsif $msg.t_enemy.dildo_insert?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(非ホールド時はホールド解除と同じstep)
  tx["tx1"] = "\"....Have a break for now.\n I'll face you properly\n when you're able to get up again\\H\""
  tx["tx1"] = "\"....Have a break for now.\n I'll face you properly\n when you're able to get up again\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"....Have a break for now.\n I'll face you properly\n when you're able to get up again\\H\"" if $game_switches[97] == true #連携が発生していた場合
  tx["tx1"] = "\"....Have a break for now.\n I'll face you properly\n when you're able to get up again\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" and $game_switches[97] == true #連携が発生していた場合パターンB
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"You get some sleep.\n #{myname}'ll see to it that\n #{myname} keep you company, #{partner}\\H\""
  tx["tx1"] = "\"You get some sleep.\n #{myname}'ll see to it that\n #{myname} keep you company, #{partner}\\H\"" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "\"You get some sleep.\n #{myname}'ll see to it that\n #{myname} keep you company, #{partner}\\H\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
end
#格納
ms.push(tx)


#★専用★==============================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
when 1 #初撃
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
end
#格納
ms.push(tx)

#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class











#######################################################################################################################
####################################★絶頂：絶頂する(した)パートナーに向けた口上群####################################
#######################################################################################################################
class MsgDevil_A < MsgBase
 def msg_female_bedin_ecstasy_05
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "「#{giggle}」"
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
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"#{giggle_s} 'Bout to cum again?\n Then what should I do 'bout it....? \\H\""
  tx["tx1"] = "\"#{giggle_s} What's the matter?\n I won't know unless you tell me nice and clear\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle_s} 'Bout to cum?\n I don't mind gals that get aroused easily\\H\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "\"Whoa there....\n I ain't letting you go just because you try to.\n Just stay still and let us make you cum\\H\""
  tx["tx1"] = "\"Ah, why you!\n Not when I'm at the best part!\n ....Damn, you need to be better at reading the mood.\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ドロウネクター
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインサート
  elsif $msg.t_enemy.dildo_insert?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "\"#{giggle_s} Maybe I should tone down the mean-spiritedness\\H\n Time for you to cum nice and neatly\\H\""
  tx["tx1"] = "\"#{giggle_s} Maybe I should tone down the mean-spiritedness\\H\n Time for you to cum nice and neatly\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"With that settled....time to make you cum♪\n Taste my skill in all its glory\\H\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "\"#{giggle}\n How was it? Did that leave you satisfied?\""
  tx["tx1"] = "\"#{giggle}\n How was it? Did that leave you satisfied?\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle}\n How was it? Did that leave you satisfied?\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "\"#{giggle_s} Is this what my opponent's supposed to be?\n Shouldn't you to try a bit better than that?\""
  tx["tx1"] = "\"Tch, so you're just an another cherry-picker.\n Augh, don't you waste my time like that!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ドロウネクター
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインサート
  elsif $msg.t_enemy.dildo_insert?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(非ホールド時はホールド解除と同じstep)
  tx["tx1"] = "\"....Have a break for now.\n I'll face you properly\n when you're able to get up again\\H\""
  tx["tx1"] = "\"....Have a break for now.\n I'll face you properly\n when you're able to get up again\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"....Have a break for now.\n I'll face you properly\n when you're able to get up again\\H\"" if $game_switches[97] == true #連携が発生していた場合
  tx["tx1"] = "\"....Have a break for now.\n I'll face you properly\n when you're able to get up again\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" and $game_switches[97] == true #連携が発生していた場合パターンB
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"Ah....my bad, I overdid it.\n ....And thanks for waiting, #{partner}.\n Now it's your turn to be left moaning\\H\""
  tx["tx1"] = "\"Ah....my bad, I overdid it.\n ....And thanks for waiting, #{partner}.\n Now it's your turn to be left moaning\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Ah....my bad, I overdid it.\n ....And thanks for waiting, #{partner}.\n Now it's your turn to be left moaning\\H\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
end
#格納
ms.push(tx)


#★専用★==============================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
when 1 #初撃
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
end
#格納
ms.push(tx)















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#====================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"#{giggle_s} 'Bout to cum again?\n Then what should I do 'bout it....? \\H\""
  tx["tx1"] = "\"#{giggle_s} What's the matter?\n I won't know unless you tell me nice and clear\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle_s} 'Bout to cum?\n I don't mind gals that get aroused easily\\H\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "\"Whoa there....\n I ain't letting you go just because you try to.\n Just stay still and let us make you cum\\H\""
  tx["tx1"] = "\"Ah, why you!\n Not when I'm at the best part!\n ....Damn, you need to be better at reading the mood.\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ドロウネクター
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインサート
  elsif $msg.t_enemy.dildo_insert?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "\"#{giggle_s} Maybe I should tone down the mean-spiritedness\\H\n Time for you to cum nice and neatly\\H\""
  tx["tx1"] = "\"#{giggle_s} Maybe I should tone down the mean-spiritedness\\H\n Time for you to cum nice and neatly\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"With that settled....time to make you cum♪\n Taste my skill in all its glory\\H\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "\"#{giggle}\n How was it? Did that leave you satisfied?\""
  tx["tx1"] = "\"#{giggle}\n How was it? Did that leave you satisfied?\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle}\n How was it? Did that leave you satisfied?\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "\"#{giggle_s} Is this what my opponent's supposed to be?\n Shouldn't you to try a bit better than that?\""
  tx["tx1"] = "\"Tch, so you're just an another cherry-picker.\n Augh, don't you waste my time like that!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ドロウネクター
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインサート
  elsif $msg.t_enemy.dildo_insert?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(非ホールド時はホールド解除と同じstep)
  tx["tx1"] = "\"....Have a break for now.\n I'll face you properly\n when you're able to get up again\\H\""
  tx["tx1"] = "\"....Have a break for now.\n I'll face you properly\n when you're able to get up again\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"....Have a break for now.\n I'll face you properly\n when you're able to get up again\\H\"" if $game_switches[97] == true #連携が発生していた場合
  tx["tx1"] = "\"....Have a break for now.\n I'll face you properly\n when you're able to get up again\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" and $game_switches[97] == true #連携が発生していた場合パターンB
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"Ah....my bad, I overdid it.\n ....And thanks for waiting, #{partner}.\n Now it's your turn to be left moaning\\H\""
  tx["tx1"] = "\"Ah....my bad, I overdid it.\n ....And thanks for waiting, #{partner}.\n Now it's your turn to be left moaning\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Ah....my bad, I overdid it.\n ....And thanks for waiting, #{partner}.\n Now it's your turn to be left moaning\\H\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
end
#格納
ms.push(tx)


#★専用★==============================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
when 1 #初撃
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
end
#格納
ms.push(tx)














#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"#{giggle_s} 'Bout to cum again?\n Then what should I do 'bout it....? \\H\""
  tx["tx1"] = "\"#{giggle_s} What's the matter?\n I won't know unless you tell me nice and clear\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle_s} 'Bout to cum?\n I don't mind gals that get aroused easily\\H\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "\"Whoa there....\n I ain't letting you go just because you try to.\n Just stay still and let us make you cum\\H\""
  tx["tx1"] = "\"Ah, why you!\n Not when I'm at the best part!\n ....Damn, you need to be better at reading the mood.\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ドロウネクター
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインサート
  elsif $msg.t_enemy.dildo_insert?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "\"#{giggle_s} Maybe I should tone down the mean-spiritedness\\H\n Time for you to cum nice and neatly\\H\""
  tx["tx1"] = "\"#{giggle_s} Maybe I should tone down the mean-spiritedness\\H\n Time for you to cum nice and neatly\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"With that settled....time to make you cum♪\n Taste my skill in all its glory\\H\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "\"#{giggle}\n How was it? Did that leave you satisfied?\""
  tx["tx1"] = "\"#{giggle}\n How was it? Did that leave you satisfied?\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle}\n How was it? Did that leave you satisfied?\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "\"#{giggle_s} Is this what my opponent's supposed to be?\n Shouldn't you to try a bit better than that?\""
  tx["tx1"] = "\"Tch, so you're just an another cherry-picker.\n Augh, don't you waste my time like that!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼フラッタナイズ
  elsif $msg.t_enemy.deepkiss?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ドロウネクター
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインサート
  elsif $msg.t_enemy.dildo_insert?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインマウス
  elsif $msg.t_enemy.dildo_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(非ホールド時はホールド解除と同じstep)
  tx["tx1"] = "\"....Have a break for now.\n I'll face you properly\n when you're able to get up again\\H\""
  tx["tx1"] = "\"....Have a break for now.\n I'll face you properly\n when you're able to get up again\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"....Have a break for now.\n I'll face you properly\n when you're able to get up again\\H\"" if $game_switches[97] == true #連携が発生していた場合
  tx["tx1"] = "\"....Have a break for now.\n I'll face you properly\n when you're able to get up again\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" and $game_switches[97] == true #連携が発生していた場合パターンB
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"Ah....my bad, I overdid it.\n ....And thanks for waiting, #{partner}.\n Now it's your turn to be left moaning\\H\""
  tx["tx1"] = "\"Ah....my bad, I overdid it.\n ....And thanks for waiting, #{partner}.\n Now it's your turn to be left moaning\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Ah....my bad, I overdid it.\n ....And thanks for waiting, #{partner}.\n Now it's your turn to be left moaning\\H\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
end
#格納
ms.push(tx)


#★専用★==============================================================================================================
  # ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
when 1 #初撃
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  case $msg.at_type
  #▼キス▼****************************************************************************************
  when "キス"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "手"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "口"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "胸"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "♀"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "足"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  when "ホールド援護"
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #  tx["tx1"] = "" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
end
#格納
ms.push(tx)






end

#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class
