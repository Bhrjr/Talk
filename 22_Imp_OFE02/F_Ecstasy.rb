=begin
#######################################################################################################################
 ●『インプ（白）』絶頂口上（対パートナー）
 ●性格：高慢
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,09.05     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

#######################################################################################################################
####################################★絶頂：絶頂する(した)パートナーに向けた口上群#####################################
#######################################################################################################################
class MsgImp_B < MsgBase
 def msg_female_ecstasy_02
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
  tx["tx1"] = "\"Huuuh? Gonna cum again, #{target}?\n Ahahah\\H\""
  tx["tx1"] = "\"Huuuh? Gonna cum again, #{target}?\n Ahahah\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Hehe, what's wrong, #{target}?\n Gonna cum soon?\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "\"Ahaha, playing with everybody sure is fun♪\n Don't you think so, #{target}?\""
  tx["tx1"] = "\"Man, she's supposed to play with me!\n Right, #{target}?\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  tx["tx1"] = "\"Then time to help you out again\\H\n Just let it out♪\""
  tx["tx1"] = "\"Then time to help you out again\\H\n Just let it out♪\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Aha, then lemme help you with that\\H\n Just let it out♪\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "\"Ahaha, #{myname} won again♪\n Hehe, what should we do now? Wanna go again? \\H\""
  tx["tx1"] = "\"Ahaha, #{myname} won again♪\n Hehe, what should we do now? Wanna go again? \\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Ahaha, #{myname} won♪\n Hey hey, let's go one more time\\H\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "\"Aha....\\H\n H-Huh? What's wrong, #{target}?\n ....Maybe I went too far?\""
  tx["tx1"] = "\"Ugh....but I was the one you played with....!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  tx["tx1"] = "\"#{giggle}\n Then let's go again after a quick rest♪\n Break time for me too\\H\""
  tx["tx1"] = "\"#{giggle}\n Then let's go again after a quick rest♪\n Break time for me too\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle}\n Then let's go again after a quick rest♪\n Break time for me too\\H\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"....Oh, you're going beddy-byes....?\n So lame....\""
  tx["tx1"] = "\"....Oh, you're going beddy-byes....?\n So lame....\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"....Oh, you're going beddy-byes....?\n So lame....\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
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
class MsgImp_B < MsgBase
 def msg_female_bedin_ecstasy_02
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
  tx["tx1"] = "\"Huuuh? Gonna cum again, #{target}?\n Ahahah\\H\""
  tx["tx1"] = "\"Huuuh? Gonna cum again, #{target}?\n Ahahah\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Hehe, what's wrong, #{target}?\n Gonna cum soon?\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "\"Ahaha, playing with everybody sure is fun♪\n Don't you think so, #{target}?\""
  tx["tx1"] = "\"Man, she's supposed to play with me!\n Right, #{target}?\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  tx["tx1"] = "\"Then time to help you out again\\H\n Just let it out♪\""
  tx["tx1"] = "\"Then time to help you out again\\H\n Just let it out♪\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Aha, then lemme help you with that\\H\n Just let it out♪\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "\"Ahaha, #{myname} won again♪\n Hehe, what should we do now? Wanna go again? \\H\""
  tx["tx1"] = "\"Ahaha, #{myname} won again♪\n Hehe, what should we do now? Wanna go again? \\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Ahaha, #{myname} won♪\n Hey hey, let's go one more time\\H\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "\"Aha....\\H\n H-Huh? What's wrong, #{target}?\n ....Maybe I went too far?\""
  tx["tx1"] = "\"Ugh....but I was the one you played with....!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  tx["tx1"] = "\"#{giggle}\n Then let's go again after a quick rest♪\n Break time for me too\\H\""
  tx["tx1"] = "\"#{giggle}\n Then let's go again after a quick rest♪\n Break time for me too\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle}\n Then let's go again after a quick rest♪\n Break time for me too\\H\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"....Oh, you're going beddy-byes....?\n So lame....\""
  tx["tx1"] = "\"....Oh, you're going beddy-byes....?\n So lame....\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"....Oh, you're going beddy-byes....?\n So lame....\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
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
  tx["tx1"] = "\"Huuuh? Gonna cum again, #{target}?\n Ahahah\\H\""
  tx["tx1"] = "\"Huuuh? Gonna cum again, #{target}?\n Ahahah\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Hehe, what's wrong, #{target}?\n Gonna cum soon?\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "\"Ahaha, playing with everybody sure is fun♪\n Don't you think so, #{target}?\""
  tx["tx1"] = "\"Man, she's supposed to play with me!\n Right, #{target}?\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  tx["tx1"] = "\"Then time to help you out again\\H\n Just let it out♪\""
  tx["tx1"] = "\"Then time to help you out again\\H\n Just let it out♪\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Then time to help you out again\\H\n Just let it out♪\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "\"Ahaha, #{myname} won again♪\n Hehe, what should we do now? Wanna go again? \\H\""
  tx["tx1"] = "\"Ahaha, #{myname} won again♪\n Hehe, what should we do now? Wanna go again? \\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Ahaha, #{myname} won♪\n Hey hey, let's go one more time\\H\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "\"Aha....\\H\n H-Huh? What's wrong, #{target}?\n ....Maybe I went too far?\""
  tx["tx1"] = "\"Ugh....but I was the one you played with....!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  tx["tx1"] = "\"#{giggle}\n Then let's go again after a quick rest♪\n Break time for me too\\H\""
  tx["tx1"] = "\"#{giggle}\n Then let's go again after a quick rest♪\n Break time for me too\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle}\n Then let's go again after a quick rest♪\n Break time for me too\\H\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"....Oh, you're going beddy-byes....?\n So lame....\""
  tx["tx1"] = "\"....Oh, you're going beddy-byes....?\n So lame....\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"....Oh, you're going beddy-byes....?\n So lame....\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
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
  tx["tx1"] = "\"Huuuh? Gonna cum again, #{target}?\n Ahahah\\H\""
  tx["tx1"] = "\"Huuuh? Gonna cum again, #{target}?\n Ahahah\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Hehe, what's wrong, #{target}?\n Gonna cum soon?\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "\"Ahaha, playing with everybody sure is fun♪\n Don't you think so, #{target}?\""
  tx["tx1"] = "\"Man, she's supposed to play with me!\n Right, #{target}?\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  tx["tx1"] = "\"Then time to help you out again\\H\n Just let it out♪\""
  tx["tx1"] = "\"Then time to help you out again\\H\n Just let it out♪\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Then time to help you out again\\H\n Just let it out♪\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "\"Ahaha, #{myname} won again♪\n Hehe, what should we do now? Wanna go again? \\H\""
  tx["tx1"] = "\"Ahaha, #{myname} won again♪\n Hehe, what should we do now? Wanna go again? \\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Ahaha, #{myname} won♪\n Hey hey, let's go one more time\\H\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "\"Aha....\\H\n H-Huh? What's wrong, #{target}?\n ....Maybe I went too far?\""
  tx["tx1"] = "\"Ugh....but I was the one you played with....!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  tx["tx1"] = "\"#{giggle}\n Then let's go again after a quick rest♪\n Break time for me too\\H\""
  tx["tx1"] = "\"#{giggle}\n Then let's go again after a quick rest♪\n Break time for me too\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle}\n Then let's go again after a quick rest♪\n Break time for me too\\H\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"....Oh, you're going beddy-byes....?\n So lame....\""
  tx["tx1"] = "\"....Oh, you're going beddy-byes....?\n So lame....\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"....Oh, you're going beddy-byes....?\n So lame....\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
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
