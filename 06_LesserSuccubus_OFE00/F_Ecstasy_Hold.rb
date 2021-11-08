=begin
#######################################################################################################################
 ●『レッサーサキュバス（桃）』ホールド絶頂口上（対パートナー）
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,09.05     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end






#######################################################################################################################
####################################★絶頂：絶頂する(した)パートナーに向けた口上群#####################################
#######################################################################################################################
class MsgLessersuccubus_B < MsgBase
 def msg_female_ecstasy_hold_00
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
#★専用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"Aha, 'bout to cum again?\n No need to hold back♪\""
  tx["tx1"] = "\"Aha, 'bout to cum again?\n What to do about that....? #{giggle}\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle}\n At your limits already, #{target}?\n Then time to make you cum♪\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  tx["tx1"] = "\"Huh? Are you close to cumming?\n But I thought we could play little longer? \\H\"" if $msg.t_target.ecstasy_count.size <= 0 and $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB・絶頂初回
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
when 2..4 #連携追撃
  tx["tx1"] = "\"#{giggle}\n You don't mind getting attacked in a row, do you?\n Then how'd you like this?\""
  tx["tx1"] = "\"Augh, but I was just at the best part!\n No butting in!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
    tx["tx1"] = "\"#{giggle}\n I'm not backing off until I see you cumming\\H\""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
    tx["tx1"] = "\"#{giggle}\n I'm not letting you go until I see you cumming\\H\""
    tx["tx1"] = "\"Augh, but I was just at the best part!\n Lemme take my time a little....!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
    tx["tx1"] = "\"#{giggle}\n I'm not letting you go until I see you cumming\\H\""
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
when 7 #本人追撃(一部のみ)
  tx["tx1"] = "\"Hang in there♪\n But for how long, I wonder?\""
  tx["tx1"] = "\"Why don't I tease you a tiny bit?\n #{giggle}\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  tx["tx1"] = "\"Hey now. Can't hold it back anymore, can you?\n Just let it all out\\H\""
  tx["tx1"] = "\"#{giggle}\n No holding back on my watch♪\n Just sit back and let it out like a good girl\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Nfufu, don't even think of holding it in\\H\n Just let it all out\\H\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
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
when 10 #余韻
  tx["tx1"] = "\"Aha, you came again, huh♪\n But you sure you're satisfied yet?\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "\"Aha, you came, huh♪\n What'd you think? I'd say I'm pretty good\\H\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
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
when 11..14 #連携余韻
  tx["tx1"] = "\"Aha, you came, huh?\n Then this time, you make me feel good\\H\""
  tx["tx1"] = "\"Augh, you came, #{target}....\n But I wanted to bully you some more....\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
    tx["tx1"] = "\"Aha, you came just now\\H\n I can see you twitching, you know? \\H\""
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
when 20 #続行(ホールド解除)
  tx["tx1"] = "\"#{giggle}\n You didn't think I'd be done with this, did you?\n Oh well, I'll let you rest a little♪\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx2"] = "\"Say....\n What'd you wanna do next? \\H\""
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
when 21 #続行(ホールド継続)
  tx["tx1"] = "\"#{giggle}\n You didn't think I'd be done with this, did you?\n I'll make you moan while holding you just like this\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx2"] = "\"Say....\n How many time you think you came? \\H\""
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
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"Ahaha, did I go a little too far?\n Then sleep well and have a nice dream\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
end
#格納
ms.push(tx)


#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class



#######################################################################################################################
####################################★絶頂：絶頂する(した)パートナーに向けた口上群#####################################
#######################################################################################################################
class MsgLessersuccubus_B < MsgBase
 def msg_female_bedin_ecstasy_hold_00
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
case $msg.talk_step
#★専用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"Aha, 'bout to cum again?\n No need to hold back♪\""
  tx["tx1"] = "\"Aha, 'bout to cum again?\n What to do about that....? #{giggle}\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle}\n At your limits already, #{target}?\n Then time to make you cum♪\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  tx["tx1"] = "\"Huh? Are you close to cumming?\n But I thought we could play little longer? \\H\"" if $msg.t_target.ecstasy_count.size <= 0 and $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB・絶頂初回
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
when 2..4 #連携追撃
  tx["tx1"] = "\"#{giggle}\n You don't mind getting attacked in a row, do you?\n Then how'd you like this?\""
  tx["tx1"] = "\"Augh, but I was just at the best part!\n No butting in!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
    tx["tx1"] = "\"#{giggle}\n I'm not backing off until I see you cumming\\H\""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
    tx["tx1"] = "\"#{giggle}\n I'm not letting you go until I see you cumming\\H\""
    tx["tx1"] = "\"Augh, but I was just at the best part!\n Lemme take my time a little....!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
    tx["tx1"] = "\"#{giggle}\n I'm not letting you go until I see you cumming\\H\""
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
when 7 #本人追撃(一部のみ)
  tx["tx1"] = "\"Hang in there♪\n But for how long, I wonder?\""
  tx["tx1"] = "\"Why don't I tease you a tiny bit?\n #{giggle}\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  tx["tx1"] = "\"Hey now. Can't hold it back anymore, can you?\n Just let it all out\\H\""
  tx["tx1"] = "\"#{giggle}\n No holding back on my watch♪\n Just sit back and let it out like a good girl\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Nfufu, don't even think of holding it in\\H\n Just let it all out\\H\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
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
when 10 #余韻
  tx["tx1"] = "\"Aha, you came again, huh♪\n But you sure you're satisfied yet?\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "\"Aha, you came, huh♪\n What'd you think? I'd say I'm pretty good\\H\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
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
when 11..14 #連携余韻
  tx["tx1"] = "\"Aha, you came, huh?\n Then this time, you make me feel good\\H\""
  tx["tx1"] = "\"Augh, you came, #{target}....\n But I wanted to bully you some more....\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
    tx["tx1"] = "\"Aha, you came just now\\H\n I can see you twitching, you know? \\H\""
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
when 20 #続行(ホールド解除)
  tx["tx1"] = "\"#{giggle}\n You didn't think I'd be done with this, did you?\n Oh well, I'll let you rest a little♪\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx2"] = "\"Say....\n What'd you wanna do next? \\H\""
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
when 21 #続行(ホールド継続)
  tx["tx1"] = "\"#{giggle}\n You didn't think I'd be done with this, did you?\n I'll make you moan while holding you just like this\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx2"] = "\"Say....\n How many time you think you came? \\H\""
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
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"Ahaha, did I go a little too far?\n Then sleep well and have a nice dream\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
end
#格納
ms.push(tx)
















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#====================================================================================================================
case $msg.talk_step
#★専用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"Aha, 'bout to cum again?\n No need to hold back♪\""
  tx["tx1"] = "\"Aha, 'bout to cum again?\n What to do about that....? #{giggle}\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle}\n At your limits already, #{target}?\n Then time to make you cum♪\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  tx["tx1"] = "\"Huh? Are you close to cumming?\n But I thought we could play little longer? \\H\"" if $msg.t_target.ecstasy_count.size <= 0 and $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB・絶頂初回
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
when 2..4 #連携追撃
  tx["tx1"] = "\"#{giggle}\n You don't mind getting attacked in a row, do you?\n Then how'd you like this?\""
  tx["tx1"] = "\"Augh, but I was just at the best part!\n No butting in!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
    tx["tx1"] = "\"#{giggle}\n I'm not backing off until I see you cumming\\H\""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
    tx["tx1"] = "\"#{giggle}\n I'm not letting you go until I see you cumming\\H\""
    tx["tx1"] = "\"Augh, but I was just at the best part!\n Lemme take my time a little....!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
    tx["tx1"] = "\"#{giggle}\n I'm not letting you go until I see you cumming\\H\""
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
when 7 #本人追撃(一部のみ)
  tx["tx1"] = "\"Hang in there♪\n But for how long, I wonder?\""
  tx["tx1"] = "\"Why don't I tease you a tiny bit?\n #{giggle}\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  tx["tx1"] = "\"Hey now. Can't hold it back anymore, can you?\n Just let it all out\\H\""
  tx["tx1"] = "\"#{giggle}\n No holding back on my watch♪\n Just sit back and let it out like a good girl\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Nfufu, don't even think of holding it in\\H\n Just let it all out\\H\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
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
when 10 #余韻
  tx["tx1"] = "\"Aha, you came again, huh♪\n But you sure you're satisfied yet?\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "\"Aha, you came, huh♪\n What'd you think? I'd say I'm pretty good\\H\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
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
when 11..14 #連携余韻
  tx["tx1"] = "\"Aha, you came, huh?\n Then this time, you make me feel good\\H\""
  tx["tx1"] = "\"Augh, you came, #{target}....\n But I wanted to bully you some more....\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
    tx["tx1"] = "\"Aha, you came just now\\H\n I can see you twitching, you know? \\H\""
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
when 20 #続行(ホールド解除)
  tx["tx1"] = "\"#{giggle}\n You didn't think I'd be done with this, did you?\n Oh well, I'll let you rest a little♪\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx2"] = "\"Say....\n What'd you wanna do next? \\H\""
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
when 21 #続行(ホールド継続)
  tx["tx1"] = "\"#{giggle}\n You didn't think I'd be done with this, did you?\n I'll make you moan while holding you just like this\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx2"] = "\"Say....\n How many time you think you came? \\H\""
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
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"Ahaha, did I go a little too far?\n Then sleep well and have a nice dream\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
end
#格納
ms.push(tx)















#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
case $msg.talk_step
#★専用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"Aha, 'bout to cum again?\n No need to hold back♪\""
  tx["tx1"] = "\"Aha, 'bout to cum again?\n What to do about that....? #{giggle}\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"#{giggle}\n At your limits already, #{target}?\n Then time to make you cum♪\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  tx["tx1"] = "\"Huh? Are you close to cumming?\n But I thought we could play little longer? \\H\"" if $msg.t_target.ecstasy_count.size <= 0 and $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB・絶頂初回
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
when 2..4 #連携追撃
  tx["tx1"] = "\"#{giggle}\n You don't mind getting attacked in a row, do you?\n Then how'd you like this?\""
  tx["tx1"] = "\"Augh, but I was just at the best part!\n No butting in!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
    tx["tx1"] = "\"#{giggle}\n I'm not backing off until I see you cumming\\H\""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
    tx["tx1"] = "\"#{giggle}\n I'm not letting you go until I see you cumming\\H\""
    tx["tx1"] = "\"Augh, but I was just at the best part!\n Lemme take my time a little....!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  #▼ヘブンリーフィール
  elsif $msg.t_enemy.tops_pahupahu?
    tx["tx1"] = "\"#{giggle}\n I'm not letting you go until I see you cumming\\H\""
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
when 7 #本人追撃(一部のみ)
  tx["tx1"] = "\"Hang in there♪\n But for how long, I wonder?\""
  tx["tx1"] = "\"Why don't I tease you a tiny bit?\n #{giggle}\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
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
  tx["tx1"] = "\"Hey now. Can't hold it back anymore, can you?\n Just let it all out\\H\""
  tx["tx1"] = "\"#{giggle}\n No holding back on my watch♪\n Just sit back and let it out like a good girl\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Nfufu, don't even think of holding it in\\H\n Just let it all out\\H\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
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
when 10 #余韻
  tx["tx1"] = "\"Aha, you came again, huh♪\n But you sure you're satisfied yet?\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "\"Aha, you came, huh♪\n What'd you think? I'd say I'm pretty good\\H\"" if $msg.t_target.ecstasy_count.size <= 1 #絶頂初回
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
when 11..14 #連携余韻
  tx["tx1"] = "\"Aha, you came, huh?\n Then this time, you make me feel good\\H\""
  tx["tx1"] = "\"Augh, you came, #{target}....\n But I wanted to bully you some more....\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼シェルマッチ
  if $msg.t_enemy.shellmatch?
    tx["tx1"] = "\"Aha, you came just now\\H\n I can see you twitching, you know? \\H\""
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
when 20 #続行(ホールド解除)
  tx["tx1"] = "\"#{giggle}\n You didn't think I'd be done with this, did you?\n Oh well, I'll let you rest a little♪\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx2"] = "\"Say....\n What'd you wanna do next? \\H\""
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
when 21 #続行(ホールド継続)
  tx["tx1"] = "\"#{giggle}\n You didn't think I'd be done with this, did you?\n I'll make you moan while holding you just like this\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx2"] = "\"Say....\n How many time you think you came? \\H\""
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
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"Ahaha, did I go a little too far?\n Then sleep well and have a nice dream\\H\""
#  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
end
#格納
ms.push(tx)







end

#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class
