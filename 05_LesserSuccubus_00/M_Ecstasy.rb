=begin
#######################################################################################################################
 ●『レッサーサキュバス（橙）』絶頂口上（対主人公）
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
 def msg_ecstasy_00
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
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "\"Ufufu, 'bout to cum again?\n You get turned on so easily, #{target}♪」"
  tx["tx1"] = "\"Oh, 'bout to cum again?\n But I wanted you to hang on a little more!」" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  tx["tx1"] = "「Ufufu, you're 'bout to cum, right?\n You can just let it all out♪」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#----------------------------------------------------------------------------------------------------------------------
when 2..4 #連携追撃
  tx["tx1"] = "「#{giggle}\n You don't mind getting attacked at the same time, do you?」"
  tx["tx1"] = "\"Augh, but I was just at the best part!\n Can you stop butting in!?\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#  tx["tx1"] = "" if @doppel_cp == true #仕掛け手が同種族
#  tx["tx1"] = "" if @doppel_cp == true and $msg.t_enemy.ecstasy_emotion == "怒" #仕掛け手が同種族・パターンB
  #▼アクセプト
  if $msg.t_enemy.vagina_insert?
  #  tx["tx1"] = ""
    tx["tx1"] = "\"Augh, but I was just at the best part!\n I'm gonna make him cum!\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
  #▼エキサイトビュー
  elsif $msg.t_enemy.vagina_riding?
    tx["tx1"] = "「#{giggle}\n You know you're breathing heavily?\n It's not 'cause you're in pain or anything, is it?」"
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
  if $game_switches[97] == true #連携が発生していた場合
    tx["tx1"] = "\"#{giggle}\n No holding back on my watch♪\n Just sit back and let it out like a good boy\\H\""
    tx["tx1"] = "\"Nnn,\n you should be nearing your limits, #{target}.\n I'll make you cum while holding you just like this\\H\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
#    tx["tx1"] = "「」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#    tx["tx1"] = "「」" unless $msg.t_target.nude? #対象が着衣状態
  else
    tx["tx1"] = "\"Don't you worry, I'll make you cum as many times I can♪\n Make sure to squirt it all on me\\H\""
    tx["tx1"] = "\"Oh well, can't help it if I'm doing it on #{myname}\\H\n I'll give you a good time and make you cum♪\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
    tx["tx1"] = "\"You're hanging in there alright, #{target}\\H\n But wonder how long you can hold out for?\n ....Hap♪\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#    tx["tx1"] = "「」" unless $msg.t_target.nude? #対象が着衣状態
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  if $game_switches[97] == true #連携が発生していた場合
    tx["tx1"] = "\"Oh wow, it's still coming out....\\H\n How much were you saving up?\n Pervy #{target}♪\""
    tx["tx1"] = "\"Oh wow, there's so much....\\H\n How much were you saving up?\n Pervy #{target}♪\"" if $msg.t_enemy.ecstasy_emotion == "Angry" #パターンB
    tx["tx1"] = "\"Aha, there's so much....\\H\n Were you saving it up? \\H\"" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
    tx["tx1"] = "「Ufufuめん♪\n　下着汚しちゃったねぇ\\H」" unless $msg.t_target.nude? #対象が着衣状態
  else
    tx["tx1"] = "「わぁお、まだまだ出てる……\\H\n　どれだけ溜め込んでたの？\n　えっちな#{target}♪」"
    tx["tx1"] = "「わぁお、すっごい量……\\H\n　どれだけ溜め込んでたの？\n　えっちな#{target}♪」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
    tx["tx1"] = "「あはぁ、すっごい量……\\H\n　溜まってたのかな？\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
    tx["tx1"] = "「うふっ、ごめんごめん♪\n　下着汚しちゃったねぇ\\H」" unless $msg.t_target.nude? #対象が着衣状態
  end
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "「あはっ、気持ちよかったぁ？\n　代わる代わるされるのもいいでしょ\\H」"
  tx["tx1"] = "「あぁん、終わっちゃった……。\n　も～、これじゃ欲求不満になっちゃうよぉ」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
when 20 #続行(非ホールド時はホールド解除と同じstep)
  if $game_switches[97] == true #連携が発生していた場合
    tx["tx1"] = "「……あれ、まだ硬いままだねぇ。\n　……やり足りなかったかな？\\H\n　じゃ、次は#{myname}もお願いしようかな？♪」"
    tx["tx1"] = "「#{giggle}\n　まさかこれで終わりと思ってないよね？\n　今度は#{myname}を気持ちよくしてね\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
    tx["tx1"] = "「うふふっ……次は#{myname}の番だからね？\n　ほら、交代交代\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
    tx["tx1"] = "「下着の上からじゃ物足りなかったでしょ？\n　今度は裸で……ね\\H」" unless $msg.t_target.nude? #対象が着衣状態
    tx["tx2"] = "「ね、#{target}……。\n　次はどんな事してほしい？\\H」"
  else
    tx["tx1"] = "「……あれ、まだ硬いままだねぇ。\n　……やり足りなかったかな？\\H\n　ふふ、少し休んでからね？」"
    tx["tx1"] = "「#{giggle}\n　まさかこれで終わりと思ってないよね？\n　もっと気持ちよくしてあげるんだから\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
    tx["tx1"] = "「下着の上からじゃ物足りなかったでしょ？\n　今度はお互い裸で……ね\\H」" unless $msg.t_target.nude? #対象が着衣状態
    tx["tx2"] = "「ね、#{target}……。\n　次はどんな事してほしい？\\H」"
#    tx["tx1"] = "「」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "「#{giggle}\n　#{target}は今度こそ限界かな？\n　でもね、#{myname}は満足してないんだぁ」"
  tx["tx1"] = "「#{giggle}\n　#{target}はもう限界かな？\n　でもね、#{myname}は満足してないんだぁ」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  tx["tx2"] = "「今度は#{myname}が満足する番ね\\H\n　あははははっ……\\H」"
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
####################################★絶頂：絶頂する(した)主人公に向けた口上群#########################################
#######################################################################################################################
class MsgLessersuccubus_A < MsgBase
 def msg_bedin_ecstasy_00
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
if $msg.t_enemy.have_ability?("大切な人")
#====================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "「うふふっ、またイっちゃいそう？\n　感じやすいんだね#{target}♪」"
  tx["tx1"] = "「あれ、またイっちゃいそうなの？\n　もう少し頑張って欲しかったな～」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「うふふっ、もうイきそうなんでしょ？\n　いいんだよ～、イっちゃっても♪」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
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
when 9 #とどめ
  if $game_switches[97] == true #連携が発生していた場合
    tx["tx1"] = "「#{giggle}\n　我慢してもだ～め♪\n　大人しくイっちゃいなさ～い\\H」"
    tx["tx1"] = "「ん～、\n　#{target}はもう限界っぽいよ？\n　このまま#{myname}がイかせちゃうね\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#    tx["tx1"] = "「」" unless $msg.t_target.nude? #対象が着衣状態
  else
    tx["tx1"] = "「いいよぉ、何度でもイかせてあげちゃう♪\n　#{myname}にいっぱいかけてぇ\\H」"
    tx["tx1"] = "「ま、#{myname}相手じゃ仕方ないか\\H\n　じゃ、気持ちよくイかせてあげる♪」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
    tx["tx1"] = "「結構頑張るね、#{target}\\H\n　でも、いつまで我慢できるかな～？\n　……えいっ♪」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#    tx["tx1"] = "「」" unless $msg.t_target.nude? #対象が着衣状態
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  if $game_switches[97] == true #連携が発生していた場合
    tx["tx1"] = "「わぁお、まだまだ出てる……\\H\n　どれだけ溜め込んでたの？\n　えっちな#{target}♪」"
    tx["tx1"] = "「わぁお、すっごい量……\\H\n　どれだけ溜め込んでたの？\n　えっちな#{target}♪」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
    tx["tx1"] = "「あはぁ、すっごい量……\\H\n　溜まってたのかな？\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
    tx["tx1"] = "「うふっ、ごめんごめん♪\n　下着汚しちゃったねぇ\\H」" unless $msg.t_target.nude? #対象が着衣状態
  else
    tx["tx1"] = "「わぁお、まだまだ出てる……\\H\n　どれだけ溜め込んでたの？\n　えっちな#{target}♪」"
    tx["tx1"] = "「わぁお、すっごい量……\\H\n　どれだけ溜め込んでたの？\n　えっちな#{target}♪」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
    tx["tx1"] = "「あはぁ、すっごい量……\\H\n　溜まってたのかな？\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
    tx["tx1"] = "「うふっ、ごめんごめん♪\n　下着汚しちゃったねぇ\\H」" unless $msg.t_target.nude? #対象が着衣状態
  end
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "「あはっ、気持ちよかったぁ？\n　代わる代わるされるのもいいでしょ\\H」"
  tx["tx1"] = "「あぁん、終わっちゃった……。\n　も～、これじゃ欲求不満になっちゃうよぉ」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
when 20 #続行(非ホールド時はホールド解除と同じstep)
  if $game_switches[97] == true #連携が発生していた場合
    tx["tx1"] = "「……あれ、まだ硬いままだねぇ。\n　……やり足りなかったかな？\\H\n　じゃ、次は#{myname}もお願いしようかな？♪」"
    tx["tx1"] = "「#{giggle}\n　まさかこれで終わりと思ってないよね？\n　今度は#{myname}を気持ちよくしてね\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
    tx["tx1"] = "「うふふっ……次は#{myname}の番だからね？\n　ほら、交代交代\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
    tx["tx1"] = "「下着の上からじゃ物足りなかったでしょ？\n　今度は裸で……ね\\H」" unless $msg.t_target.nude? #対象が着衣状態
    tx["tx2"] = "「ね、#{target}……。\n　次はどんな事してほしい？\\H」"
  else
    tx["tx1"] = "「……あれ、まだ硬いままだねぇ。\n　……やり足りなかったかな？\\H\n　ふふ、少し休んでからね？」"
    tx["tx1"] = "「#{giggle}\n　まさかこれで終わりと思ってないよね？\n　もっと気持ちよくしてあげるんだから\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
    tx["tx1"] = "「下着の上からじゃ物足りなかったでしょ？\n　今度はお互い裸で……ね\\H」" unless $msg.t_target.nude? #対象が着衣状態
    tx["tx2"] = "「ね、#{target}……。\n　次はどんな事してほしい？\\H」"
#    tx["tx1"] = "「」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "「#{giggle}\n　#{target}は今度こそ限界かな？\n　でもね、#{myname}は満足してないんだぁ」"
  tx["tx1"] = "「#{giggle}\n　#{target}はもう限界かな？\n　でもね、#{myname}は満足してないんだぁ」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  tx["tx2"] = "「今度は#{myname}が満足する番ね\\H\n　あははははっ……\\H」"
end
#格納
ms.push(tx)















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("寵愛")
#====================================================================================================================
#----------------------------------------------------------------------------------------------------------------------
case $msg.talk_step
#★汎用★==============================================================================================================
when 1 #初撃
  tx["tx1"] = "「うふふっ、またイっちゃいそう？\n　感じやすいんだね#{target}♪」"
  tx["tx1"] = "「あれ、またイっちゃいそうなの？\n　もう少し頑張って欲しかったな～」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「うふふっ、もうイきそうなんでしょ？\n　いいんだよ～、イっちゃっても♪」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
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
when 9 #とどめ
  if $game_switches[97] == true #連携が発生していた場合
    tx["tx1"] = "「#{giggle}\n　我慢してもだ～め♪\n　大人しくイっちゃいなさ～い\\H」"
    tx["tx1"] = "「ん～、\n　#{target}はもう限界っぽいよ？\n　このまま#{myname}がイかせちゃうね\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#    tx["tx1"] = "「」" unless $msg.t_target.nude? #対象が着衣状態
  else
    tx["tx1"] = "「いいよぉ、何度でもイかせてあげちゃう♪\n　#{myname}にいっぱいかけてぇ\\H」"
    tx["tx1"] = "「ま、#{myname}相手じゃ仕方ないか\\H\n　じゃ、気持ちよくイかせてあげる♪」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
    tx["tx1"] = "「結構頑張るね、#{target}\\H\n　でも、いつまで我慢できるかな～？\n　……えいっ♪」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#    tx["tx1"] = "「」" unless $msg.t_target.nude? #対象が着衣状態
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  if $game_switches[97] == true #連携が発生していた場合
    tx["tx1"] = "「わぁお、まだまだ出てる……\\H\n　どれだけ溜め込んでたの？\n　えっちな#{target}♪」"
    tx["tx1"] = "「わぁお、すっごい量……\\H\n　どれだけ溜め込んでたの？\n　えっちな#{target}♪」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
    tx["tx1"] = "「あはぁ、すっごい量……\\H\n　溜まってたのかな？\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
    tx["tx1"] = "「うふっ、ごめんごめん♪\n　下着汚しちゃったねぇ\\H」" unless $msg.t_target.nude? #対象が着衣状態
  else
    tx["tx1"] = "「わぁお、まだまだ出てる……\\H\n　どれだけ溜め込んでたの？\n　えっちな#{target}♪」"
    tx["tx1"] = "「わぁお、すっごい量……\\H\n　どれだけ溜め込んでたの？\n　えっちな#{target}♪」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
    tx["tx1"] = "「あはぁ、すっごい量……\\H\n　溜まってたのかな？\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
    tx["tx1"] = "「うふっ、ごめんごめん♪\n　下着汚しちゃったねぇ\\H」" unless $msg.t_target.nude? #対象が着衣状態
  end
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "「あはっ、気持ちよかったぁ？\n　代わる代わるされるのもいいでしょ\\H」"
  tx["tx1"] = "「あぁん、終わっちゃった……。\n　も～、これじゃ欲求不満になっちゃうよぉ」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
when 20 #続行(非ホールド時はホールド解除と同じstep)
  if $game_switches[97] == true #連携が発生していた場合
    tx["tx1"] = "「……あれ、まだ硬いままだねぇ。\n　……やり足りなかったかな？\\H\n　じゃ、次は#{myname}もお願いしようかな？♪」"
    tx["tx1"] = "「#{giggle}\n　まさかこれで終わりと思ってないよね？\n　今度は#{myname}を気持ちよくしてね\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
    tx["tx1"] = "「うふふっ……次は#{myname}の番だからね？\n　ほら、交代交代\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
    tx["tx1"] = "「下着の上からじゃ物足りなかったでしょ？\n　今度は裸で……ね\\H」" unless $msg.t_target.nude? #対象が着衣状態
    tx["tx2"] = "「ね、#{target}……。\n　次はどんな事してほしい？\\H」"
  else
    tx["tx1"] = "「……あれ、まだ硬いままだねぇ。\n　……やり足りなかったかな？\\H\n　ふふ、少し休んでからね？」"
    tx["tx1"] = "「#{giggle}\n　まさかこれで終わりと思ってないよね？\n　もっと気持ちよくしてあげるんだから\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
    tx["tx1"] = "「下着の上からじゃ物足りなかったでしょ？\n　今度はお互い裸で……ね\\H」" unless $msg.t_target.nude? #対象が着衣状態
    tx["tx2"] = "「ね、#{target}……。\n　次はどんな事してほしい？\\H」"
#    tx["tx1"] = "「」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "「#{giggle}\n　#{target}は今度こそ限界かな？\n　でもね、#{myname}は満足してないんだぁ」"
  tx["tx1"] = "「#{giggle}\n　#{target}はもう限界かな？\n　でもね、#{myname}は満足してないんだぁ」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  tx["tx2"] = "「今度は#{myname}が満足する番ね\\H\n　あははははっ……\\H」"
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
  tx["tx1"] = "「うふふっ、またイっちゃいそう？\n　感じやすいんだね#{target}♪」"
  tx["tx1"] = "「あれ、またイっちゃいそうなの？\n　もう少し頑張って欲しかったな～」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
  tx["tx1"] = "「うふふっ、もうイきそうなんでしょ？\n　いいんだよ～、イっちゃっても♪」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
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
when 9 #とどめ
  if $game_switches[97] == true #連携が発生していた場合
    tx["tx1"] = "「#{giggle}\n　我慢してもだ～め♪\n　大人しくイっちゃいなさ～い\\H」"
    tx["tx1"] = "「ん～、\n　#{target}はもう限界っぽいよ？\n　このまま#{myname}がイかせちゃうね\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
#    tx["tx1"] = "「」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#    tx["tx1"] = "「」" unless $msg.t_target.nude? #対象が着衣状態
  else
    tx["tx1"] = "「いいよぉ、何度でもイかせてあげちゃう♪\n　#{myname}にいっぱいかけてぇ\\H」"
    tx["tx1"] = "「ま、#{myname}相手じゃ仕方ないか\\H\n　じゃ、気持ちよくイかせてあげる♪」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
    tx["tx1"] = "「結構頑張るね、#{target}\\H\n　でも、いつまで我慢できるかな～？\n　……えいっ♪」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
#    tx["tx1"] = "「」" unless $msg.t_target.nude? #対象が着衣状態
  end
#----------------------------------------------------------------------------------------------------------------------
when 10 #余韻
  if $game_switches[97] == true #連携が発生していた場合
    tx["tx1"] = "「わぁお、まだまだ出てる……\\H\n　どれだけ溜め込んでたの？\n　えっちな#{target}♪」"
    tx["tx1"] = "「わぁお、すっごい量……\\H\n　どれだけ溜め込んでたの？\n　えっちな#{target}♪」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
    tx["tx1"] = "「あはぁ、すっごい量……\\H\n　溜まってたのかな？\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
    tx["tx1"] = "「うふっ、ごめんごめん♪\n　下着汚しちゃったねぇ\\H」" unless $msg.t_target.nude? #対象が着衣状態
  else
    tx["tx1"] = "「わぁお、まだまだ出てる……\\H\n　どれだけ溜め込んでたの？\n　えっちな#{target}♪」"
    tx["tx1"] = "「わぁお、すっごい量……\\H\n　どれだけ溜め込んでたの？\n　えっちな#{target}♪」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
    tx["tx1"] = "「あはぁ、すっごい量……\\H\n　溜まってたのかな？\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
    tx["tx1"] = "「うふっ、ごめんごめん♪\n　下着汚しちゃったねぇ\\H」" unless $msg.t_target.nude? #対象が着衣状態
  end
#----------------------------------------------------------------------------------------------------------------------
when 11..14 #連携余韻
  tx["tx1"] = "「あはっ、気持ちよかったぁ？\n　代わる代わるされるのもいいでしょ\\H」"
  tx["tx1"] = "「あぁん、終わっちゃった……。\n　も～、これじゃ欲求不満になっちゃうよぉ」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
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
when 20 #続行(非ホールド時はホールド解除と同じstep)
  if $game_switches[97] == true #連携が発生していた場合
    tx["tx1"] = "「……あれ、まだ硬いままだねぇ。\n　……やり足りなかったかな？\\H\n　じゃ、次は#{myname}もお願いしようかな？♪」"
    tx["tx1"] = "「#{giggle}\n　まさかこれで終わりと思ってないよね？\n　今度は#{myname}を気持ちよくしてね\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
    tx["tx1"] = "「うふふっ……次は#{myname}の番だからね？\n　ほら、交代交代\\H」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
    tx["tx1"] = "「下着の上からじゃ物足りなかったでしょ？\n　今度は裸で……ね\\H」" unless $msg.t_target.nude? #対象が着衣状態
    tx["tx2"] = "「ね、#{target}……。\n　次はどんな事してほしい？\\H」"
  else
    tx["tx1"] = "「……あれ、まだ硬いままだねぇ。\n　……やり足りなかったかな？\\H\n　ふふ、少し休んでからね？」"
    tx["tx1"] = "「#{giggle}\n　まさかこれで終わりと思ってないよね？\n　もっと気持ちよくしてあげるんだから\\H」" if $msg.t_enemy.ecstasy_emotion == "怒" #パターンB
    tx["tx1"] = "「下着の上からじゃ物足りなかったでしょ？\n　今度はお互い裸で……ね\\H」" unless $msg.t_target.nude? #対象が着衣状態
    tx["tx2"] = "「ね、#{target}……。\n　次はどんな事してほしい？\\H」"
#    tx["tx1"] = "「」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  end
#----------------------------------------------------------------------------------------------------------------------
when 30 #ゲームオーバー(失神)
  tx["tx1"] = "「#{giggle}\n　#{target}は今度こそ限界かな？\n　でもね、#{myname}は満足してないんだぁ」"
  tx["tx1"] = "「#{giggle}\n　#{target}はもう限界かな？\n　でもね、#{myname}は満足してないんだぁ」" if $msg.t_target.ecstasy_count.size <= 0 #絶頂初回
  tx["tx2"] = "「今度は#{myname}が満足する番ね\\H\n　あははははっ……\\H」"
end
#格納
ms.push(tx)






end

#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class
