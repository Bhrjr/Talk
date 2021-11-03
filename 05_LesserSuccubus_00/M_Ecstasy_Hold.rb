=begin
#######################################################################################################################
 ●『レッサーサキュバス（橙）』ホールド絶頂口上（対主人公）
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,09.05     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end






#######################################################################################################################
####################################★絶頂：絶頂する(した)主人公に向けた口上群#########################################
#######################################################################################################################
class MsgLessersuccubus_A < MsgBase
 def msg_ecstasy_hold_00
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
  tx["tx1"] = "\"Ufufu, 'bout to cum again?\n You get turned on so easily, #{target}♪\""
  tx["tx1"] = "\"Oh, 'bout to cum again?\n But I wanted you to hang on a little more!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Ufufu, you're 'bout to cum, right?\n You can just let it all out♪\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "\"#{giggle}\n You don't mind getting attacked at the same time, do you?\""
  tx["tx1"] = "\"Augh, but I was just at the best part!\n Can you stop butting in!?\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
  #  tx["tx1"] = ""
    tx["tx1"] = "\"Augh, but I was just at the best part!\n I'm the one that's gonna make you cum!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
    tx["tx1"] = "\"#{giggle}\n You know you're breathing heavily?\n It's not 'cause you're in pain or anything, is it?\""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 7 #本人追撃(一部のみ)
  tx["tx1"] = "\"Now now, you don't hafta hold it in♪\n　Let it all out\\H\""
  tx["tx1"] = "\"There's no need to hold it all in♪\n For a #{target} that doesn't know when to give up....here's this\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "\"#{giggle}\n Just stay still and behave like a good boy\\H\""
  tx["tx1"] = "\"You're hanging in there alright, #{target}\\H\n But for how long, I wonder?\n ....Hup♪\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Are you near your limits, #{target}?\n Mind if I make you cum?\n ....Hup♪\"" if $game_switches[97] == true #連携が発生していた場合
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "\"Oh wow, it's still coming out....\\H\n How much were you saving up?\n Pervy #{target}♪\""
  tx["tx1"] = "\"Oh wow, there's so much....\\H\n How much were you saving up?\n Pervy #{target}♪\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Aha, there's so much....\\H\n Were you saving it up? \\H\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
    tx["tx1"] = "\"#{giggle}\n You let out so much of your hot stuff\\H\n There's too much for me to hold it in……\\H\""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "\"Aha, did it feel nice?\n We can always take turns\\H\""
  tx["tx1"] = "\"Augh, it ended....\n Gee, I'm gonna have frustrations like this.\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
    tx["tx1"] = "\"#{giggle}\n You let out so much of your hot stuff\\H\n There's too much for me to hold it in....\\H\""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(ホールド解除)
  tx["tx1"] = "\"....Oh wow, it's still rock solid.\n Maybe you hadn't had enough?\\H\n Nfufu, but after we take a break.\""
  tx["tx1"] = "\"#{giggle}\n You didn't think I'd be done with this, did you?\n I'll make you feel even better\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx2"] = "\"Say, #{target}....\n What'd you wanna do next? \\H\""
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 21 #続行(ホールド継続)
  tx["tx1"] = "\"....Oh wow, it's still rock solid.\n Maybe you hadn't had enough?\\H\n Nfufu, then what say we keep going?\""
  tx["tx1"] = "\"#{giggle}\n You didn't think I'd be done with this, did you?\n I'll make you feel even better while holding you just like this\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx2"] = "\"Say, #{target}....\n How many time you think you came? \\H\""
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "\"#{giggle}\n You really at your limits now, #{target}?\n But I'm still not satisfied.\""
  tx["tx1"] = "\"#{giggle}\n Nearing  your limits, #{target}?\n But I'm still not satisfied.\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  tx["tx2"] = "\"And now it's my turn to be satisfied\\H\n Ahahahaha....\\H\""
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
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
####################################★絶頂：絶頂する(した)主人公に向けた口上群#########################################
#######################################################################################################################
class MsgLessersuccubus_A < MsgBase
 def msg_bedin_ecstasy_hold_00
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
  tx["tx1"] = "\"Ufufu, 'bout to cum again?\n You get turned on so easily, #{target}♪\""
  tx["tx1"] = "\"Oh, 'bout to cum again?\n But I wanted you to hang on a little more!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Ufufu, you're 'bout to cum, right?\n You can just let it all out♪\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "\"#{giggle}\n You don't mind getting attacked at the same time, do you?\""
  tx["tx1"] = "\"Augh, but I was just at the best part!\n Can you stop butting in!?\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
  #  tx["tx1"] = ""
    tx["tx1"] = "\"Augh, but I was just at the best part!\n I'm the one that's gonna make you cum!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
    tx["tx1"] = "\"#{giggle}\n You know you're breathing heavily?\n It's not 'cause you're in pain or anything, is it?\""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 7 #本人追撃(一部のみ)
  tx["tx1"] = "\"Now now, you don't hafta hold it in♪\n　Let it all out\\H\""
  tx["tx1"] = "\"There's no need to hold it all in♪\n For a #{target} that doesn't know when to give up....here's this\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "\"#{giggle}\n Just stay still and behave like a good boy\\H\""
  tx["tx1"] = "\"You're hanging in there alright, #{target}\\H\n But for how long, I wonder?\n ....Hup♪\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Are you near your limits, #{target}?\n Mind if I make you cum?\n ....Hup♪\"" if $game_switches[97] == true #連携が発生していた場合
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "\"Oh wow, it's still coming out....\\H\n How much were you saving up?\n Pervy #{target}♪\""
  tx["tx1"] = "\"Oh wow, there's so much....\\H\n How much were you saving up?\n Pervy #{target}♪\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "\"Aha, there's so much....\\H\n Were you saving it up? \\H\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
    tx["tx1"] = "\"#{giggle}\n You let out so much of your hot stuff\\H\n There's too much for me to hold it in……\\H\""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "\"Aha, did it feel nice?\n We can always take turns\\H\""
  tx["tx1"] = "\"Augh, it ended....\n Gee, I'm gonna have frustrations like this.\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
    tx["tx1"] = "\"#{giggle}\n You let out so much of your hot stuff\\H\n There's too much for me to hold it in....\\H\""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(ホールド解除)
  tx["tx1"] = "\"....Oh wow, it's still rock solid.\n Maybe you hadn't had enough?\\H\n Nfufu, but after we take a break.\""
  tx["tx1"] = "\"#{giggle}\n You didn't think I'd be done with this, did you?\n I'll make you feel even better\\H\"" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx2"] = "\"Say, #{target}....\n What'd you wanna do next? \\H\""
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 21 #続行(ホールド継続)
  tx["tx1"] = "「……あれ、まだ硬いままだねぇ。\n　……やり足りなかったかな？\\H\n　ふふ、それじゃ、このまま続けちゃう？」"
  tx["tx1"] = "「#{giggle}\n　まさかこれで終わりと思ってないよね？\n　このままも～っと気持ちよくしてあげる\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx2"] = "「ね、#{target}……。\n　何回くらいイってみたい？\\H」"
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "「#{giggle}\n　#{target}は今度こそ限界かな？\n　でもね、#{myname}は満足してないんだぁ」"
  tx["tx1"] = "「#{giggle}\n　#{target}はもう限界かな？\n　でもね、#{myname}は満足してないんだぁ」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  tx["tx2"] = "「今度は#{myname}が満足する番ね\\H\n　あははははっ……\\H」"
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
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
elsif $msg.t_enemy.have_ability?("寵愛")
#====================================================================================================================
case $msg.talk_step
#★専用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "「うふふっ、またイっちゃいそう？\n　感じやすいんだね#{target}♪」"
  tx["tx1"] = "「あれ、またイっちゃいそうなの？\n　もう少し頑張って欲しかったな～」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「うふふっ、もうイきそうなんでしょ？\n　いいんだよ～、イっちゃっても♪」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "「#{giggle}\n　同時に攻められるのもいいでしょ？」"
  tx["tx1"] = "「あぁん、今いい所なのに！\n　横入りは止めてよね～？」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
  #  tx["tx1"] = ""
    tx["tx1"] = "「あぁん、今いい所なのに！\n　#{myname}がイかせるんだから！」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
    tx["tx1"] = "「#{giggle}\n　息が荒くなってきた？\n　これ、苦しいからってだけじゃないよね？」"
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 7 #本人追撃(一部のみ)
  tx["tx1"] = "「ほらほら、我慢しなくていいから♪\n　いっぱい出してぇ\\H」"
  tx["tx1"] = "「我慢なんかしなくていいのに♪\n　往生際の悪い#{target}は……こうよっ\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "「#{giggle}\n　このまま大人しくイっちゃいなさ～い\\H」"
  tx["tx1"] = "「結構頑張るね、#{target}\\H\n　でも、いつまで我慢できるかな～？\n　……えいっ♪」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「#{target}はもう限界っぽいかな？\n　イかせちゃうけど、みんないいよね～？\n　……えいっ♪」" if $game_switches[97] == true #連携が発生していた場合
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "「わぁお、まだまだ出てる……\\H\n　どれだけ溜め込んでたの？\n　えっちな#{target}♪」"
  tx["tx1"] = "「わぁお、すっごい量……\\H\n　どれだけ溜め込んでたの？\n　えっちな#{target}♪」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「あはぁ、すっごい量……\\H\n　溜まってたのかな？\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
    tx["tx1"] = "「#{giggle}\n　熱いのがいっぱい出たね\\H\n　多すぎて溢れてきちゃいそう……\\H」"
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "「あはっ、気持ちよかったぁ？\n　代わる代わるされるのもいいでしょ\\H」"
  tx["tx1"] = "「あぁん、終わっちゃった……。\n　も～、これじゃ欲求不満になっちゃうよぉ」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
    tx["tx1"] = "「#{giggle}\n　熱いのがいっぱい出たね\\H\n　多すぎて溢れてきちゃいそう……\\H」"
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(ホールド解除)
  tx["tx1"] = "「……あれ、まだ硬いままだねぇ。\n　……やり足りなかったかな？\\H\n　ふふ、少し休んでからね？」"
  tx["tx1"] = "「#{giggle}\n　まさかこれで終わりと思ってないよね？\n　もっと気持ちよくしてあげるんだから\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx2"] = "「ね、#{target}……。\n　次はどんな事してほしい？\\H」"
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 21 #続行(ホールド継続)
  tx["tx1"] = "「……あれ、まだ硬いままだねぇ。\n　……やり足りなかったかな？\\H\n　ふふ、それじゃ、このまま続けちゃう？」"
  tx["tx1"] = "「#{giggle}\n　まさかこれで終わりと思ってないよね？\n　このままも～っと気持ちよくしてあげる\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx2"] = "「ね、#{target}……。\n　何回くらいイってみたい？\\H」"
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "「#{giggle}\n　#{target}は今度こそ限界かな？\n　でもね、#{myname}は満足してないんだぁ」"
  tx["tx1"] = "「#{giggle}\n　#{target}はもう限界かな？\n　でもね、#{myname}は満足してないんだぁ」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  tx["tx2"] = "「今度は#{myname}が満足する番ね\\H\n　あははははっ……\\H」"
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
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
  tx["tx1"] = "「うふふっ、またイっちゃいそう？\n　感じやすいんだね#{target}♪」"
  tx["tx1"] = "「あれ、またイっちゃいそうなの？\n　もう少し頑張って欲しかったな～」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「うふふっ、もうイきそうなんでしょ？\n　いいんだよ～、イっちゃっても♪」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "「#{giggle}\n　同時に攻められるのもいいでしょ？」"
  tx["tx1"] = "「あぁん、今いい所なのに！\n　横入りは止めてよね～？」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
  #  tx["tx1"] = ""
    tx["tx1"] = "「あぁん、今いい所なのに！\n　#{myname}がイかせるんだから！」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
    tx["tx1"] = "「#{giggle}\n　息が荒くなってきた？\n　これ、苦しいからってだけじゃないよね？」"
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 7 #本人追撃(一部のみ)
  tx["tx1"] = "「ほらほら、我慢しなくていいから♪\n　いっぱい出してぇ\\H」"
  tx["tx1"] = "「我慢なんかしなくていいのに♪\n　往生際の悪い#{target}は……こうよっ\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 9 #とどめ
  tx["tx1"] = "「#{giggle}\n　このまま大人しくイっちゃいなさ～い\\H」"
  tx["tx1"] = "「結構頑張るね、#{target}\\H\n　でも、いつまで我慢できるかな～？\n　……えいっ♪」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「#{target}はもう限界っぽいかな？\n　イかせちゃうけど、みんないいよね～？\n　……えいっ♪」" if $game_switches[97] == true #連携が発生していた場合
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  tx["tx1"] = "「わぁお、まだまだ出てる……\\H\n　どれだけ溜め込んでたの？\n　えっちな#{target}♪」"
  tx["tx1"] = "「わぁお、すっごい量……\\H\n　どれだけ溜め込んでたの？\n　えっちな#{target}♪」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「あはぁ、すっごい量……\\H\n　溜まってたのかな？\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
    tx["tx1"] = "「#{giggle}\n　熱いのがいっぱい出たね\\H\n　多すぎて溢れてきちゃいそう……\\H」"
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "「あはっ、気持ちよかったぁ？\n　代わる代わるされるのもいいでしょ\\H」"
  tx["tx1"] = "「あぁん、終わっちゃった……。\n　も～、これじゃ欲求不満になっちゃうよぉ」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
    tx["tx1"] = "「#{giggle}\n　熱いのがいっぱい出たね\\H\n　多すぎて溢れてきちゃいそう……\\H」"
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼エンブレイス
  elsif $msg.t_enemy.tops_binder?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 20 #続行(ホールド解除)
  tx["tx1"] = "「……あれ、まだ硬いままだねぇ。\n　……やり足りなかったかな？\\H\n　ふふ、少し休んでからね？」"
  tx["tx1"] = "「#{giggle}\n　まさかこれで終わりと思ってないよね？\n　もっと気持ちよくしてあげるんだから\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx2"] = "「ね、#{target}……。\n　次はどんな事してほしい？\\H」"
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 21 #続行(ホールド継続)
  tx["tx1"] = "「……あれ、まだ硬いままだねぇ。\n　……やり足りなかったかな？\\H\n　ふふ、それじゃ、このまま続けちゃう？」"
  tx["tx1"] = "「#{giggle}\n　まさかこれで終わりと思ってないよね？\n　このままも～っと気持ちよくしてあげる\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx2"] = "「ね、#{target}……。\n　何回くらいイってみたい？\\H」"
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  #▼ディルドインバック
  elsif $msg.t_enemy.dildo_analsex?
  #  tx["tx1"] = ""
  #  tx["tx1"] = "" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "「#{giggle}\n　#{target}は今度こそ限界かな？\n　でもね、#{myname}は満足してないんだぁ」"
  tx["tx1"] = "「#{giggle}\n　#{target}はもう限界かな？\n　でもね、#{myname}は満足してないんだぁ」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  tx["tx2"] = "「今度は#{myname}が満足する番ね\\H\n　あははははっ……\\H」"
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
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
  #▼ペリスコープ
  elsif $msg.t_enemy.tops_paizuri?
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
  #▼オーラルアクセプト
  elsif $msg.t_enemy.mouth_oralsex?
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
