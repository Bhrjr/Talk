=begin
#######################################################################################################################
 ●『サキュバスロード（橙）』レジスト実行口上（衣装関連・対パートナー）
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 2016,07/25     仮稿流し込み。
#######################################################################################################################
=end





#######################################################################################################################
#########################################★脱衣：パートナーがメインの口上群################################################
#######################################################################################################################
class MsgSuccubuslord_A < MsgBase
 def msg_female_undress_07
#=======================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #レジスト成功
                              tx["md"] = "2" if $msg.tag == "夢魔がパートナーを脱衣" #脱衣できなかった
                              tx["md"] = "3" if $msg.tag == "パートナーが夢魔を脱衣" #相手を脱衣させた
                            when 3 #レジスト失敗
                              tx["md"] = "3" if $msg.tag == "夢魔がパートナーを脱衣" #脱衣させられた
                              tx["md"] = "2" if $msg.tag == "パートナーが夢魔を脱衣" #相手を脱衣できなかった
                            end
case $msg.tag
#====================================================================================================================
#■夢魔がパートナーを脱衣させる
#====================================================================================================================
when "夢魔がパートナーを脱衣"
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "「一緒に楽しみましょう？」"
  #  tx["tx1"] = "" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 2 #パートナーが抵抗した
    tx["tx1"] = "「つれないわね……」"
  #  tx["tx1"] = "" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  when 3 #パートナーが脱衣した
    tx["tx1"] = "「綺麗で素敵なカラダね……\\H\n　せっかくのひとときだもの、\n　心の底から楽しまなくちゃ損だわ\\H」"
    #▼自ら受け入れた場合
    tx["tx1"] = "「#{giggle_s}\\H\n　相手が乗り気だと\n　#{myname}も嬉しいわ……\\H」" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが夢魔を脱衣させる
#====================================================================================================================
when "パートナーが夢魔を脱衣"
  case $msg.talk_step
  when 1 #脱衣開始
    tx["tx1"] = "「#{giggle_s}、脱がしてくれるの？」"
  #  tx["tx1"] = "" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 2 #夢魔を脱衣させた
    tx["tx1"] = "「#{giggle_s}、ありがとう。\n　それじゃあ、続きをしましょうか\\H」"
  #  tx["tx1"] = "" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  when 3 #夢魔に抵抗された
    tx["tx1"] = "「そうおざなりじゃ嫌よ」"
    #途中で行動をキャンセルした場合
    tx["tx1"] = "「あら……？\n　いったいどういうつもりかしら」" if $game_switches[89] == true
  #---------------------------------------------------
  end
  #格納
  ms.push(tx)
#====================================================================================================================
#■パートナーが自ら脱衣する
#====================================================================================================================
when "パートナーが自ら脱衣"
  tx["tx1"] = "「#{giggle_s}、待ちきれなかった？」"
  tx["tx1"] = "「#{giggle_s}、待ってたわよ\\H」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#====================================================================================================================
#■夢魔が自ら脱衣する
#====================================================================================================================
when "夢魔が自ら脱衣"
  #------------------------------------------------------------------------------------------------------------------
  tx["tx1"] = "「ふふっ、お待たせ\\H」"
  tx["tx1"] = "「さあ、もっと熱くまぐわいましょう\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
  #---------------------------------------------------
  #格納
  tx["md"] = "3"
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #case $msg.tag
#----------------------------------------------------------------------------------------------------------------------
 end #def
end #class










#######################################################################################################################
#####################################★脱衣：パートナーがメインの口上群(ベッドイン)########################################
#######################################################################################################################
class MsgSuccubuslord_A < MsgBase
 def msg_female_bedin_undress_07
#====================================================================================================================
# ☆事前設定☆
                            #空ハッシュ挿入
                            tx={}
                            #ムード格納(個別変更の場合は口上単位で修正する)
                            case $msg.talk_step
                            when 2 #レジスト成功
                              tx["md"] = "2" if $msg.tag == "夢魔がパートナーを脱衣" #脱衣できなかった
                              tx["md"] = "3" if $msg.tag == "パートナーが夢魔を脱衣" #相手を脱衣させた
                            when 3 #レジスト失敗
                              tx["md"] = "3" if $msg.tag == "夢魔がパートナーを脱衣" #脱衣させられた
                              tx["md"] = "2" if $msg.tag == "パートナーが夢魔を脱衣" #相手を脱衣できなかった
                            end
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("大切な人")
#====================================================================================================================
  case $msg.tag
  #====================================================================================================================
  #■夢魔がパートナーを脱衣させる
  #====================================================================================================================
  when "夢魔がパートナーを脱衣"
    case $msg.talk_step
    when 1 #脱衣開始
      tx["tx1"] = "「一緒に楽しみましょう？」"
    #  tx["tx1"] = "" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    #---------------------------------------------------
    when 2 #パートナーが抵抗した
      tx["tx1"] = "「つれないわね……」"
    #  tx["tx1"] = "" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    #---------------------------------------------------
    when 3 #パートナーが脱衣した
      tx["tx1"] = "「綺麗で素敵なカラダね……\\H\n　せっかくのひとときだもの、\n　心の底から楽しまなくちゃ損だわ\\H」"
      #▼自ら受け入れた場合
      tx["tx1"] = "「#{giggle_s}\\H\n　相手が乗り気だと\n　#{myname}も嬉しいわ……\\H」" if $game_switches[89] == true
    #---------------------------------------------------
    end
    #格納
    ms.push(tx)
  #====================================================================================================================
  #■パートナーが夢魔を脱衣させる
  #====================================================================================================================
  when "パートナーが夢魔を脱衣"
    case $msg.talk_step
    when 1 #脱衣開始
      tx["tx1"] = "「#{giggle_s}、脱がしてくれるの？」"
    #  tx["tx1"] = "" if $msg.t_target.nude? #アクターが先に脱いでいた
    #---------------------------------------------------
    when 2 #夢魔を脱衣させた
      tx["tx1"] = "「#{giggle_s}、ありがとう。\n　それじゃあ、続きをしましょうか\\H」"
    #  tx["tx1"] = "" if $msg.t_target.nude? #アクターが先に脱いでいた
    #---------------------------------------------------
    when 3 #夢魔に抵抗された
      tx["tx1"] = "「そうおざなりじゃ嫌よ」"
      #途中で行動をキャンセルした場合
      tx["tx1"] = "「あら……？\n　いったいどういうつもりかしら」" if $game_switches[89] == true
    #---------------------------------------------------
    end
    #格納
    ms.push(tx)
  #====================================================================================================================
  #■パートナーが自ら脱衣する
  #====================================================================================================================
  when "パートナーが自ら脱衣"
    tx["tx1"] = "「#{giggle_s}、待ちきれなかった？」"
    tx["tx1"] = "「#{giggle_s}、待ってたわよ\\H」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    #---------------------------------------------------
    #格納
    tx["md"] = "3"
    ms.push(tx)
  #====================================================================================================================
  #■夢魔が自ら脱衣する
  #====================================================================================================================
  when "夢魔が自ら脱衣"
    #------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ふふっ、お待たせ\\H」"
    tx["tx1"] = "「さあ、もっと熱くまぐわいましょう\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
    #---------------------------------------------------
    #格納
    tx["md"] = "3"
    ms.push(tx)
  #----------------------------------------------------------------------------------------------------------------------
  end #case $msg.tag










#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("寵愛")
#====================================================================================================================
  case $msg.tag
  #====================================================================================================================
  #■夢魔がパートナーを脱衣させる
  #====================================================================================================================
  when "夢魔がパートナーを脱衣"
    case $msg.talk_step
    when 1 #脱衣開始
      tx["tx1"] = "「一緒に楽しみましょう？」"
    #  tx["tx1"] = "" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    #---------------------------------------------------
    when 2 #パートナーが抵抗した
      tx["tx1"] = "「つれないわね……」"
    #  tx["tx1"] = "" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    #---------------------------------------------------
    when 3 #パートナーが脱衣した
      tx["tx1"] = "「綺麗で素敵なカラダね……\\H\n　せっかくのひとときだもの、\n　心の底から楽しまなくちゃ損だわ\\H」"
      #▼自ら受け入れた場合
      tx["tx1"] = "「#{giggle_s}\\H\n　相手が乗り気だと\n　#{myname}も嬉しいわ……\\H」" if $game_switches[89] == true
    #---------------------------------------------------
    end
    #格納
    ms.push(tx)
  #====================================================================================================================
  #■パートナーが夢魔を脱衣させる
  #====================================================================================================================
  when "パートナーが夢魔を脱衣"
    case $msg.talk_step
    when 1 #脱衣開始
      tx["tx1"] = "「#{giggle_s}、脱がしてくれるの？」"
    #  tx["tx1"] = "" if $msg.t_target.nude? #アクターが先に脱いでいた
    #---------------------------------------------------
    when 2 #夢魔を脱衣させた
      tx["tx1"] = "「#{giggle_s}、ありがとう。\n　それじゃあ、続きをしましょうか\\H」"
    #  tx["tx1"] = "" if $msg.t_target.nude? #アクターが先に脱いでいた
    #---------------------------------------------------
    when 3 #夢魔に抵抗された
      tx["tx1"] = "「そうおざなりじゃ嫌よ」"
      #途中で行動をキャンセルした場合
      tx["tx1"] = "「あら……？\n　いったいどういうつもりかしら」" if $game_switches[89] == true
    #---------------------------------------------------
    end
    #格納
    ms.push(tx)
  #====================================================================================================================
  #■パートナーが自ら脱衣する
  #====================================================================================================================
  when "パートナーが自ら脱衣"
    tx["tx1"] = "「#{giggle_s}、待ちきれなかった？」"
    tx["tx1"] = "「#{giggle_s}、待ってたわよ\\H」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    #---------------------------------------------------
    #格納
    tx["md"] = "3"
    ms.push(tx)
  #====================================================================================================================
  #■夢魔が自ら脱衣する
  #====================================================================================================================
  when "夢魔が自ら脱衣"
    #------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ふふっ、お待たせ\\H」"
    tx["tx1"] = "「さあ、もっと熱くまぐわいましょう\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
    #---------------------------------------------------
    #格納
    tx["md"] = "3"
    ms.push(tx)
  #----------------------------------------------------------------------------------------------------------------------
  end #case $msg.tag










#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
  case $msg.tag
  #====================================================================================================================
  #■夢魔がパートナーを脱衣させる
  #====================================================================================================================
  when "夢魔がパートナーを脱衣"
    case $msg.talk_step
    when 1 #脱衣開始
      tx["tx1"] = "「一緒に楽しみましょう？」"
    #  tx["tx1"] = "" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    #---------------------------------------------------
    when 2 #パートナーが抵抗した
      tx["tx1"] = "「つれないわね……」"
    #  tx["tx1"] = "" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    #---------------------------------------------------
    when 3 #パートナーが脱衣した
      tx["tx1"] = "「綺麗で素敵なカラダね……\\H\n　せっかくのひとときだもの、\n　心の底から楽しまなくちゃ損だわ\\H」"
      #▼自ら受け入れた場合
      tx["tx1"] = "「#{giggle_s}\\H\n　相手が乗り気だと\n　#{myname}も嬉しいわ……\\H」" if $game_switches[89] == true
    #---------------------------------------------------
    end
    #格納
    ms.push(tx)
  #====================================================================================================================
  #■パートナーが夢魔を脱衣させる
  #====================================================================================================================
  when "パートナーが夢魔を脱衣"
    case $msg.talk_step
    when 1 #脱衣開始
      tx["tx1"] = "「#{giggle_s}、脱がしてくれるの？」"
    #  tx["tx1"] = "" if $msg.t_target.nude? #アクターが先に脱いでいた
    #---------------------------------------------------
    when 2 #夢魔を脱衣させた
      tx["tx1"] = "「#{giggle_s}、ありがとう。\n　それじゃあ、続きをしましょうか\\H」"
    #  tx["tx1"] = "" if $msg.t_target.nude? #アクターが先に脱いでいた
    #---------------------------------------------------
    when 3 #夢魔に抵抗された
      tx["tx1"] = "「そうおざなりじゃ嫌よ」"
      #途中で行動をキャンセルした場合
      tx["tx1"] = "「あら……？\n　いったいどういうつもりかしら」" if $game_switches[89] == true
    #---------------------------------------------------
    end
    #格納
    ms.push(tx)
  #====================================================================================================================
  #■パートナーが自ら脱衣する
  #====================================================================================================================
  when "パートナーが自ら脱衣"
    tx["tx1"] = "「#{giggle_s}、待ちきれなかった？」"
    tx["tx1"] = "「#{giggle_s}、待ってたわよ\\H」" if $msg.t_enemy.nude? #夢魔が先に脱いでいた
    #---------------------------------------------------
    #格納
    tx["md"] = "3"
    ms.push(tx)
  #====================================================================================================================
  #■夢魔が自ら脱衣する
  #====================================================================================================================
  when "夢魔が自ら脱衣"
    #------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ふふっ、お待たせ\\H」"
    tx["tx1"] = "「さあ、もっと熱くまぐわいましょう\\H」" if $msg.t_target.nude? #アクターが先に脱いでいた
    #---------------------------------------------------
    #格納
    tx["md"] = "3"
    ms.push(tx)
  #----------------------------------------------------------------------------------------------------------------------
  end #case $msg.tag
end
#######################################################################################################################
  end #def
end #class
