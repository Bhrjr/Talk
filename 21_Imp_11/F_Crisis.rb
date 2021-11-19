=begin
#######################################################################################################################
 ●『インプ（緑）』クライシス口上(対パートナー)
 ●性格：虚勢
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end






#######################################################################################################################
######################################★クライシス：パートナーがメインの口上群#############################################
#######################################################################################################################
class MsgImp_A < MsgBase
 def msg_female_crisis_11
#=======================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            tx["md"] = "3"
#----------------------------------------------------------------------------------------------------------------------
#■パートナーがクライシス状態になる
case $msg.tag
#夢魔の攻めでパートナーがクライシス
when "User solo"
  tx["tx1"] = "\"Ehehe, did that feel nice?\n Wasn't #{myname} I pretty good? ♪\""
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "アクター両者"
  tx["tx1"] = "\"W-Why you....\n #{myname}'m not losing to you....you hear....\\H\""
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "アクターリバウンド自爆"
  tx["tx1"] = "\"Huuh??? You're gonna finish already??\n Ehe, then lemme help you with that♪\""
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "アクター自慰"
  tx["tx1"] = "\"Hey hey, does it feel nice when you do it like that?\n Tell me♪」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "Enemy solo"
  tx["tx1"] = "\"Eyyargh....no....\\H\n If you go any further.....aieee\\H\""
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "エネミー両者"
  tx["tx1"] = "\"や、やだぁ……っ……\\H\n　そんなにしちゃ……\n　#{pleasure_s}」"
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "エネミーリバウンド自爆"
  tx["tx1"] = "「#{target}、#{myname}ね……\n　なんだか、からだがふわふわしてきた……\\H」"
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "エネミー自慰"
  tx["tx1"] = "「ん……ふぅ……\\H\n　どうしよ……とまんなくなっちゃった……\\H」"
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "エネミー仲間攻め"
  tx["tx1"] = "「わぁっ？\n　な、なんで#{myname}のとこに来るのっ……\n　#{pleasure_s}」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
  end #case $msg.tag
 end #def
end #class


#######################################################################################################################
##################################★クライシス：パートナーがメインの口上群（ベッドイン）###################################
#######################################################################################################################
class MsgImp_A < MsgBase
 def msg_female_bedin_crisis_11
#=======================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            tx["md"] = "3"
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("大切な人")
#====================================================================================================================
#■パートナーがクライシス状態になる
case $msg.tag
#夢魔の攻めでパートナーがクライシス
when "アクター単独"
  tx["tx1"] = "「えへへっ、気持ちよかったぁ？\n　#{myname}、上手だったでしょ♪」"
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "アクター両者"
  tx["tx1"] = "「こ、このぉ～……\n　#{myname}負けないんだからぁ……っ……\\H」"
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "アクターリバウンド自爆"
  tx["tx1"] = "「あれれ～、もうおしまいかな～？\n　えへっ、それじゃ#{myname}が手伝ってあげる♪」"
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "アクター自慰"
  tx["tx1"] = "「ねぇねぇ、そうやったら気持ちいいの？\n　#{myname}にも教えてよ♪」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "エネミー単独"
  tx["tx1"] = "「やぁん……ダメだよぉ……\\H\n　それ以上されたら……ひゃんっ\\H」"
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "エネミー両者"
  tx["tx1"] = "「や、やだぁ……っ……\\H\n　そんなにしちゃ……\n　#{pleasure_s}」"
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "エネミーリバウンド自爆"
  tx["tx1"] = "「#{target}、#{myname}ね……\n　なんだか、からだがふわふわしてきた……\\H」"
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "エネミー自慰"
  tx["tx1"] = "「ん……ふぅ……\\H\n　どうしよ……とまんなくなっちゃった……\\H」"
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "エネミー仲間攻め"
  tx["tx1"] = "「わぁっ？\n　な、なんで#{myname}のとこに来るのっ……\n　#{pleasure_s}」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("寵愛")
#====================================================================================================================
#■パートナーがクライシス状態になる
case $msg.tag
#夢魔の攻めでパートナーがクライシス
when "アクター単独"
  tx["tx1"] = "「えへへっ、気持ちよかったぁ？\n　#{myname}、上手だったでしょ♪」"
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "アクター両者"
  tx["tx1"] = "「こ、このぉ～……\n　#{myname}負けないんだからぁ……っ……\\H」"
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "アクターリバウンド自爆"
  tx["tx1"] = "「あれれ～、もうおしまいかな～？\n　えへっ、それじゃ#{myname}が手伝ってあげる♪」"
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "アクター自慰"
  tx["tx1"] = "「ねぇねぇ、そうやったら気持ちいいの？\n　#{myname}にも教えてよ♪」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "エネミー単独"
  tx["tx1"] = "「やぁん……ダメだよぉ……\\H\n　それ以上されたら……ひゃんっ\\H」"
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "エネミー両者"
  tx["tx1"] = "「や、やだぁ……っ……\\H\n　そんなにしちゃ……\n　#{pleasure_s}」"
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "エネミーリバウンド自爆"
  tx["tx1"] = "「#{target}、#{myname}ね……\n　なんだか、からだがふわふわしてきた……\\H」"
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "エネミー自慰"
  tx["tx1"] = "「ん……ふぅ……\\H\n　どうしよ……とまんなくなっちゃった……\\H」"
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "エネミー仲間攻め"
  tx["tx1"] = "「わぁっ？\n　な、なんで#{myname}のとこに来るのっ……\n　#{pleasure_s}」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag














#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
#■パートナーがクライシス状態になる
case $msg.tag
#夢魔の攻めでパートナーがクライシス
when "アクター単独"
  tx["tx1"] = "「えへへっ、気持ちよかったぁ？\n　#{myname}、上手だったでしょ♪」"
  #格納
  ms.push(tx)
#夢魔が既にクライシス、その夢魔から攻めを受けパートナーもクライシス
when "アクター両者"
  tx["tx1"] = "「こ、このぉ～……\n　#{myname}負けないんだからぁ……っ……\\H」"
  #格納
  ms.push(tx)
#パートナーがホールド等のリバウンドで自らクライシス
when "アクターリバウンド自爆"
  tx["tx1"] = "「あれれ～、もうおしまいかな～？\n　えへっ、それじゃ#{myname}が手伝ってあげる♪」"
  #格納
  ms.push(tx)
#パートナーが自慰行為等で自らクライシス
when "アクター自慰"
  tx["tx1"] = "「ねぇねぇ、そうやったら気持ちいいの？\n　#{myname}にも教えてよ♪」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
#■夢魔がクライシス状態になる
#パートナーの攻めで夢魔がクライシス
when "エネミー単独"
  tx["tx1"] = "「やぁん……ダメだよぉ……\\H\n　それ以上されたら……ひゃんっ\\H」"
  #格納
  ms.push(tx)
#パートナーが既にクライシス、そのパートナーから攻めを受け夢魔もクライシス
when "エネミー両者"
  tx["tx1"] = "「や、やだぁ……っ……\\H\n　そんなにしちゃ……\n　#{pleasure_s}」"
  #格納
  ms.push(tx)
#夢魔がホールド等のリバウンドで自らクライシス
when "エネミーリバウンド自爆"
  tx["tx1"] = "「#{target}、#{myname}ね……\n　なんだか、からだがふわふわしてきた……\\H」"
  #格納
  ms.push(tx)
#夢魔が自慰行為等で自らクライシス
when "エネミー自慰"
  tx["tx1"] = "「ん……ふぅ……\\H\n　どうしよ……とまんなくなっちゃった……\\H」"
  #格納
  ms.push(tx)
#夢魔が味方夢魔から攻められてクライシス
when "エネミー仲間攻め"
  tx["tx1"] = "「わぁっ？\n　な、なんで#{myname}のとこに来るのっ……\n　#{pleasure_s}」"
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag






#----------------------------------------------------------------------------------------------------------------------
end
 end #def
end #class