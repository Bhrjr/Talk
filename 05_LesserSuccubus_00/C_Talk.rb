=begin
#######################################################################################################################
 ●『レッサーサキュバス（橙）』トーク口上
 ●性格：好色
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

#######################################################################################################################
######################################★トーク：主人公への追撃を行う口上群#############################################
#######################################################################################################################
class MsgLessersuccubus_A < MsgBase
 def msg_talk_00
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
                          #ムードセット
                          case $msg.talk_step
                          when 0
                            tx["md"] = "22"
                            tx["md"] = "0" if $msg.tag == "Rejected"
                          when 1
                            tx["md"] = "0"
                            tx["md"] = "27" if $msg.tag == "Favor"
                          when 2..76
                            case $msg.tag
                            when "Caress - normal","Caress - intercourse","Leer","Show love"
                              tx["md"] = "24"
                            when "Player stripped","Succubus stripped"
                              tx["md"] = "23"
                            when "Energy-suck - mouth","Energy-suck - genitals"
                              tx["md"] = "25"
                            when "Mingle"
                              tx["md"] = "26"
                            end
                          when 77
                            tx["md"] = "20"
                          when 78
                            tx["md"] = "21"
                          when 79
                            tx["md"] = "27"
                          else
                            tx["md"] = "0"
                          end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "「#{giggle}」"
  #格納
  ms.push(tx)
  #==================================================================================================================
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
                          #ムードセット
                          case $msg.talk_step
                          when 0
                            tx["md"] = "22"
                            tx["md"] = "0" if $msg.tag == "Rejected"
                          when 1
                            tx["md"] = "0"
                            tx["md"] = "27" if $msg.tag == "Favor"
                          when 2..76
                            case $msg.tag
                            when "Caress - normal","Caress - intercourse","Leer","Show love"
                              tx["md"] = "24"
                            when "Player stripped","Succubus stripped"
                              tx["md"] = "23"
                            when "Energy-suck - mouth","Energy-suck - genitals"
                              tx["md"] = "25"
                            when "Mingle"
                              tx["md"] = "26"
                            end
                          when 77
                            tx["md"] = "20"
                          when 78
                            tx["md"] = "21"
                          when 79
                            tx["md"] = "27"
                          else
                            tx["md"] = "0"
                          end
case $msg.tag
#▼会話不成立時▼****************************************************************************************
#・アクタークライシス（非ホールド状態）
#・エネミークライシス（非ホールド状態）
#・絶頂中
#・会話回数が３回を越えた（非ベッドイン中）
when "Rejected"
  case $msg.at_type
  when "Succubus orgasming"
    # エネミーが絶頂直後の衰弱中
    tx["tx1"] = "\"Aaah....nnn....\\H\""
    #----------------------------
    tx["md"] = "28"
  when "Player CRISIS"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "\"*Giggle....♪\n Guess you can't wait?\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus CRISIS"
    # 夢魔がクライシス中に話しかけた場合
    tx["tx1"] = "\"Ahaa....\\H\n Hey....don't tease me like that....\\H\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus in ecstasy"
    # 夢魔が恍惚中の場合
    tx["tx1"] = "\"Aaah....nnn....\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Succubus running berserk"
    # 夢魔が暴走中の場合
    tx["tx1"] = "\"Ufufu....\n No running away....\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Excess moves"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "\"Hey....\n Can't you save the talking\n for....later? \\H\""
    #----------------------------
  end
  #格納
  ms.push(tx)




#▼前口上▼****************************************************************************************
#トークを仕掛けた場合、必ずムードと好感度が上がる。その部分の会話。
#これが表示された後、ランダムで要求その他の分岐に入る(入らない場合もある)
#会話に対して、好意的に返してくれる
when "Initial remarks"
#==================================================================================================================
  case $mood.point
  # 好感度がとても高い場合
  when 50..100
    tx["tx1"] = "\"Nnn....so happy\\H\""
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "\"Ufufu, gee, thanks\\H\""
  # 好感度が低い場合
  else
    tx["tx1"] = "\"Ufufu♪\n Wonder if it's alright to say that\\H\n How 'bout we get serious?\""
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "Favor"
  tx["tx1"] = "\"Nfufu, it's always nice to put it into words\\H\""
  tx["tx1"] = "\"Hey....#{target}....?\n ....No, never mind\\H\"" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "Player stripped"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n #{myname} have a request for you\\H\""
    tx["tx2"] = "\"I wanna see #{target} withouts clothes\\H\n Pretty please? \\H\"" 
    tx["tx2"] = "\"I wanna see #{target} withouts clothes\\H\n Not like I'm wearing clothes either, you know? \\H\""  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you big meanie!\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha, now that I'm looking at it up-close,\n it makes my heart pound\\H\""
    tx["tx1"] = "\"Whoa....\\H\n #{target}'s body....*gulp....\\H\"" if $msg.t_enemy.state?(32) #ドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼夢魔脱衣▼****************************************************************************************
#夢魔が自ら脱ぐ
when "Succubus stripped"
  case $msg.talk_step
  when 1 #夢魔脱衣
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n How 'bout I show you something nice?\""
    tx["tx2"] = "\"I'm gonna get naked now....\n Can you watch me from there, #{target}....? \\H\"" 
    tx["tx2"] = "\"I'm gonna get naked like you now....\n Can you watch me from there, #{target}....? \\H\""  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh come on! Why?\""
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha....\\H\n How is it? Does it make your heart race? \\H\""
    tx["tx1"] = "\"Aha....\\H\n You're looking at me like a perv, you know, #{target}?\n *Giggle\\H\"" if $game_actors[101].state?(32) #ドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼吸精▼****************************************************************************************
#精気を吸わせるよう要求される
when "Energy-suck - mouth","Energy-suck - genitals"
  case $msg.talk_step
  when 1 #吸精要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n I'm feeling hungry....\\H\""
    tx["tx2"] = "\"Can you give me some of #{target}'s energy?\"" 
    tx["tx2"] = "\"Can you give me some of #{target}'s energy?\n In exchange, I'll make you feel real good....\\H\""  if $msg.tag == "Energy-suck - genitals"
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh come on! It's not like I'm gonna hurt you!\n Geez....talk about a sissy.\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha....\\H\n #{giggle}\n Thanks for the grub, #{target}♪\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼愛撫▼****************************************************************************************
#愛撫を受け入れるよう要求する
when "Caress - normal"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n Can you leave everything to me for a bit?\""
    tx["tx2"] = "\"I'll make you feel like you're in heaven....\\H\"" 
    tx["tx2"] = "\"You can't take it anymore either, right, #{target}?\n Let me make you feel real good....\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you big meanie....\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"#{giggle} Did that hit the spot just now?\n Nfufu....so cute\\H\"" 
        tx["tx1"] = "\"#{giggle}\n Aren't you gonna resist me?\n Then I'll keep going\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle}\n I can see right through #{target}'s weak spots\\H\n I'm gonna keep going\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"#{target}, you like it when I do it like this?\n Nfufu....so cute\\H\"" 
        tx["tx1"] = "\"#{giggle}\n I know all of #{target}'s weak spots\\H\n How long can you hold out, I wonder♪\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"#{giggle}\n Did that hit the spot just now?\n Then as a follow-up....\\H\"" 
        tx["tx1"] = "\"#{giggle}\n Found #{target}'s weak spot\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle}\n So you like it when I do it like this\\H\n Then as a follow-up....\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"Hey....what'd you think?\n Does it make you squeal....? \\H\"" 
        tx["tx1"] = "\"#{giggle}\n Tell if if there's somewhere that feels good\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"Nfu....what'd you think?\n I can keep going if you don't mind it\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ehehe....were you satisfied by that?\\H\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼性交▼****************************************************************************************
#性交を受け入れるよう要求する
when "Caress - intercourse"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n Can you leave everything to me for a bit?\""
    tx["tx2"] = "\"Let me make you feel good\n with my body....\\H\"" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you big meanie....\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "\"#{pleasure_s}\n Your thing's stuffing my pussy....\\H\n More....I want more....\\H\"" 
      tx["tx1"] = "\"#{pleasure_s}\n How is it? Does it feel good? \\H\n I'll keep going, #{target}....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_s}\n Your thing's all the way inside....\\H\n #{pleasure_cr}\""  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "\"#{pleasure_s}\n Your thing's stuffing my pussy....\\H\n More....I want more....\\H\"" 
      tx["tx1"] = "\"#{giggle}\n How is it? Does it feel good? \\H\n I'll keep going, #{target}....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_s}\n You're so rough, #{target}....\\H\n Oh no....I can't stop....\\H\""  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "\"#{giggle}\n Your thing's moving in and out....\\H\n Hey....can you go harder? \\H\"" 
      tx["tx1"] = "\"#{pleasure_s}\n How is it? Does it feel good? \\H\n I'll keep going, #{target}....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Aha, you should be getting hooked on it\\H\n Let's keep it up\\H\""  if $game_actors[101].critical == true #攻守交替
    #▼Deffence
    else
      tx["tx1"] = "\"Hey....what'd you think?\n Does it make you squeal....? \\H\"" 
      tx["tx1"] = "\"#{pleasure_s}\n Don't move, okay, #{target}? \\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{giggle}\n Looks like I hit the mark just now♪\n Then let me keep going\\H\""  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ehehe....were you satisfied by that?\\H\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼奉仕▼****************************************************************************************
#自分に奉仕するよう要求する
when "Show love"
  case $msg.talk_step
  when 1 #奉仕開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n #{myname} have a request for you....\\H\""
    tx["tx2"] = "\"I wonder if you can\n make me squeal....?\"" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you meanie, #{target}....\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "\"#{pleasure_cr}\n #{target}, not there!\n That'll make me squeal....\\H\"" 
      tx["tx1"] = "\"#{pleasure_cr}\n That feels good, #{target}........!\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_cr}\n Don't just do it there, #{target}....!\\H\n #{pleasure_s}\""  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "\"#{pleasure_s}\n Hey, can you keep going....?\"" 
      tx["tx1"] = "\"#{pleasure_l}\n #{target}, more....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_s}\n That feels good, #{target}....\\H\n Keep going....\\H\""  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha....that was nice....\\H\n Ufufu, #{myname} better repay you next♪\""
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha....that was nice....\\H\n Ufu, you tired, #{target}?\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼視姦▼****************************************************************************************
#自慰を見ているように要求される
when "Leer"
  case $msg.talk_step
  when 1 #自慰開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n You like....lewd girls? \\H\""
    tx["tx2"] = "\"Starting now, I'm gonna do it by myself....\n Can you just sit back and watch me....? \\H\"" 
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you meanie, #{target}....\""
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "Target: Breasts","Target: Mouth"
      tx["tx1"] = "\"#{pleasure_l}\n #{target}....are you watching me....? \\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n You like to touch yourself like this, #{myname}....? \\H\n ....#{pleasure_s}\""  if $game_variables[17] > 50
    #▼アソコを弄る
    when "Target: Pussy","Target: Ass"
      tx["tx1"] = "\"#{pleasure_l}\n #{target}....are you watching me....? \\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n My pussy's getting all sticky....\\H\n ....#{pleasure_s}\""  if $game_variables[17] > 50
    #▼陰核を弄る
    when "Target: Clitoris","Target: Anus"
      tx["tx1"] = "\"#{pleasure_l}\n #{target}....are you watching me....? \\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n ....You can look only, you know? No touching allowed....\\H\n ....#{pleasure_s}\""  if $game_variables[17] > 50
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....Ehe, did it make your heart race?\""
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....Ehehe, did that make you excited?\n You're looking at me like a perv, #{target}\\H\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)


#▼交合▼****************************************************************************************
#自分にホールドを行うように要求する
when "Mingle"
  case $msg.at_parts
  when "Inserted"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey, #{target}....\n #{myname} can't bear it anymore....\\H\""
      tx["tx2"] = "\"Please fuck me....\n with #{target}'s hot dick....\\H\""  #正常位トラップ
      tx["tx2"] = "\"Please fuck me....\n with #{target}'s hot dick from behind....\\H\""  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Oh come on....\n You're a sissy, #{target}....\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Aaaah! \\H\n You're amazing, #{target}....\\H\""
    end
  when "Fellatio"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey, #{target}....\\H\n You like blowjobs? \\H\""
      tx["tx2"] = "\"Let me give you a good sucking\\H\n Ahhh~\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Oh come on....\n You don't like it?\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Mmph....\\H\n Nfufu....\\H\""
    end
  when "Paizuri"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey, #{target}....\\H\n I'm pretty confindent in my boobs\\H\""
      tx["tx2"] = "\"Wanna try fucking my boobs?\n Here you go\\H\""
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Oh come on....\n You don't like it?\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_s}\n #{target}'s dick's buried in my boobies\\H\""
    end
  when "Facesitted"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey, #{target}....\\H\n #{myname} have a request for you....\\H\""
      tx["tx2"] = "\"Lick my pussy for me....\\H\n You can do that, right....? \\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Oh, you big meanie....\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_s}\n #{target}'s tongue went right inside....\\H\""
    end
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)
#----------------------------------------------------------------------------------------------------------------------
end #msg.tag
end #def
end #class




#######################################################################################################################
######################################★トーク：主人公への追撃を行う口上群#############################################
#######################################################################################################################
class MsgLessersuccubus_A < MsgBase 
 def msg_bedin_talk_00
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
                          #ムードセット
                          case $msg.talk_step
                          when 0
                            tx["md"] = "22"
                            tx["md"] = "0" if $msg.tag == "Rejected"
                          when 1
                            tx["md"] = "0"
                            tx["md"] = "27" if $msg.tag == "Favor"
                          when 2..76
                            case $msg.tag
                            when "Caress - normal","Caress - intercourse","Leer","Show love"
                              tx["md"] = "24"
                            when "Player stripped","Succubus stripped"
                              tx["md"] = "23"
                            when "Energy-suck - mouth","Energy-suck - genitals"
                              tx["md"] = "25"
                            when "Mingle"
                              tx["md"] = "26"
                            end
                          when 77
                            tx["md"] = "20"
                          when 78
                            tx["md"] = "21"
                          when 79
                            tx["md"] = "27"
                          else
                            tx["md"] = "0"
                          end
  #==================================================================================================================
  #●基礎口上を設定(未設定項目or空白の口上が呼ばれた時に設定され、それ以外では表示されない)
  #==================================================================================================================
  tx["tx1"] = "「#{giggle}」"
  #格納
  ms.push(tx)
  #==================================================================================================================
#==================================================================================================================
# ☆事前設定☆
                          #空ハッシュ挿入
                          tx={}
                          #ムードセット
                          case $msg.talk_step
                          when 0
                            tx["md"] = "22"
                            tx["md"] = "0" if $msg.tag == "Rejected"
                          when 1
                            tx["md"] = "0"
                            tx["md"] = "27" if $msg.tag == "Favor"
                          when 2..76
                            case $msg.tag
                            when "Caress - normal","Caress - intercourse","Leer","Show love"
                              tx["md"] = "24"
                            when "Player stripped","Succubus stripped"
                              tx["md"] = "23"
                            when "Energy-suck - mouth","Energy-suck - genitals"
                              tx["md"] = "25"
                            when "Mingle"
                              tx["md"] = "26"
                            end
                          when 77
                            tx["md"] = "20"
                          when 78
                            tx["md"] = "21"
                          when 79
                            tx["md"] = "27"
                          else
                            tx["md"] = "0"
                          end
#====================================================================================================================
#★友好度の状態によって口上が変動
#====================================================================================================================





#====================================================================================================================
#◆【大事な人】状態◆
if $msg.t_enemy.have_ability?("Significant Other")
#====================================================================================================================
case $msg.tag
#▼会話不成立時▼****************************************************************************************
#・アクタークライシス（非ホールド状態）
#・エネミークライシス（非ホールド状態）
#・絶頂中
#・会話回数が３回を越えた（非ベッドイン中）
when "Rejected"
  case $msg.at_type
  when "Succubus orgasming"
    # エネミーが絶頂直後の衰弱中
    tx["tx1"] = "\"Aaah....nnn....\\H\""
    #----------------------------
    tx["md"] = "28"
  when "Player CRISIS"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "\"*Giggle....♪\n Guess you can't wait?\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus CRISIS"
    # 夢魔がクライシス中に話しかけた場合
    tx["tx1"] = "\"Ahaa....\\H\n Hey....don't tease me like that....\\H\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus in ecstasy"
    # 夢魔が恍惚中の場合
    tx["tx1"] = "\"Aaah....nnn....\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Succubus running berserk"
    # 夢魔が暴走中の場合
    tx["tx1"] = "\"Ufufu....\n No running away....\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Excess moves"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "\"Hey....\n Can't you save the talking\n for....later? \\H\""
    #----------------------------
  end
  #格納
  ms.push(tx)




#▼前口上▼****************************************************************************************
#トークを仕掛けた場合、必ずムードと好感度が上がる。その部分の会話。
#これが表示された後、ランダムで要求その他の分岐に入る(入らない場合もある)
#会話に対して、好意的に返してくれる
when "Initial remarks"
#==================================================================================================================
  case $mood.point
  # 好感度がとても高い場合
  when 50..100
    tx["tx1"] = "\"Nnn....so happy\\H\""
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "\"Ufufu, gee, thanks\\H\""
  # 好感度が低い場合
  else
    tx["tx1"] = "\"Ufufu♪\n Wonder if it's alright to say that\\H\n Won't that make the other girls mad?\""
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "Favor"
  tx["tx1"] = "\"Nfufu, it's always nice to put it into words\\H\""
  tx["tx1"] = "\"Hey....#{target}....?\n ....No, never mind\\H\"" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "Player stripped"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n #{myname} have a request for you\\H\""
    tx["tx2"] = "\"I wanna see #{target} withouts clothes\\H\n Pretty please? \\H\"" 
    tx["tx2"] = "\"I wanna see #{target} withouts clothes\\H\n Not like I'm wearing clothes either, you know? \\H\""  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you big meanie!\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha, now that I'm looking at it up-close,\n it makes my heart pound\\H\""
    tx["tx1"] = "\"Whoa....\\H\n #{target}'s body....*gulp....\\H\"" if $msg.t_enemy.state?(32) #ドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼夢魔脱衣▼****************************************************************************************
#夢魔が自ら脱ぐ
when "Succubus stripped"
  case $msg.talk_step
  when 1 #夢魔脱衣
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n How 'bout I show you something nice?\""
    tx["tx2"] = "\"I'm gonna get naked now....\n Can you watch me from there, #{target}....? \\H\"" 
    tx["tx2"] = "\"I'm gonna get naked like you now....\n Can you watch me from there, #{target}....? \\H\""  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh come on! Why?\""
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha....\\H\n How is it? Does it make your heart race? \\H\""
    tx["tx1"] = "\"Aha....\\H\n You're looking at me like a perv, you know, #{target}?\n *Giggle\\H\"" if $game_actors[101].state?(32) #ドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼吸精▼****************************************************************************************
#精気を吸わせるよう要求される
when "Energy-suck - mouth","Energy-suck - genitals"
  case $msg.talk_step
  when 1 #吸精要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n I'm feeling hungry....\\H\""
    tx["tx2"] = "\"Can you give me some of #{target}'s energy?\"" 
    tx["tx2"] = "\"Can you give me some of #{target}'s energy?\n In exchange, I'll make you feel real good....\\H\""  if $msg.tag == "Energy-suck - genitals"
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh come on! It's not like I'm gonna hurt you!\n Geez....talk about a sissy.\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha....\\H\n #{giggle}\n Thanks for the grub, #{target}♪\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼愛撫▼****************************************************************************************
#愛撫を受け入れるよう要求する
when "Caress - normal"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n Can you leave everything to me for a bit?\""
    tx["tx2"] = "\"I'll make you feel like you're in heaven....\\H\"" 
    tx["tx2"] = "\"You can't take it anymore either, right, #{target}?\n Let me make you feel real good....\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you big meanie....\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"#{giggle} Did that hit the spot just now?\n Nfufu....so cute\\H\"" 
        tx["tx1"] = "\"#{giggle}\n Aren't you gonna resist me?\n Then I'll keep going\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle}\n I can see right through #{target}'s weak spots\\H\n I'm gonna keep going\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"#{target}, you like it when I do it like this?\n Nfufu....so cute\\H\"" 
        tx["tx1"] = "\"#{giggle}\n I know all of #{target}'s weak spots\\H\n How long can you hold out, I wonder♪\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"#{giggle}\n Did that hit the spot just now?\n Then as a follow-up....\\H\"" 
        tx["tx1"] = "\"#{giggle}\n Found #{target}'s weak spot\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle}\n So you like it when I do it like this\\H\n Then as a follow-up....\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"Hey....what'd you think?\n Does it make you squeal....? \\H\"" 
        tx["tx1"] = "\"#{giggle}\n Tell if if there's somewhere that feels good\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"Nfu....what'd you think?\n I can keep going if you don't mind it\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ehehe....were you satisfied by that?\\H\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼性交▼****************************************************************************************
#性交を受け入れるよう要求する
when "Caress - intercourse"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n Can you leave everything to me for a bit?\""
    tx["tx2"] = "\"Let me make you feel good\n with my body....\\H\"" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you big meanie....\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "\"#{pleasure_s}\n Your thing's stuffing my pussy....\\H\n More....I want more....\\H\"" 
      tx["tx1"] = "\"#{pleasure_s}\n How is it? Does it feel good? \\H\n I'll keep going, #{target}....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_s}\n Your thing's all the way inside....\\H\n #{pleasure_cr}\""  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "\"#{pleasure_s}\n Your thing's stuffing my pussy....\\H\n More....I want more....\\H\"" 
      tx["tx1"] = "\"#{giggle}\n How is it? Does it feel good? \\H\n I'll keep going, #{target}....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_s}\n You're so rough, #{target}....\\H\n Oh no....I can't stop....\\H\""  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "\"#{giggle}\n Your thing's moving in and out....\\H\n Hey....can you go harder? \\H\"" 
      tx["tx1"] = "\"#{pleasure_s}\n How is it? Does it feel good? \\H\n I'll keep going, #{target}....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Aha, you should be getting hooked on it\\H\n Let's keep it up\\H\""  if $game_actors[101].critical == true #攻守交替
    #▼Deffence
    else
      tx["tx1"] = "\"Hey....what'd you think?\n Does it make you squeal....? \\H\"" 
      tx["tx1"] = "\"#{pleasure_s}\n Don't move, okay, #{target}? \\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{giggle}\n Looks like I hit the mark just now♪\n Then let me keep going\\H\""  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ehehe....were you satisfied by that?\\H\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼奉仕▼****************************************************************************************
#自分に奉仕するよう要求する
when "Show love"
  case $msg.talk_step
  when 1 #奉仕開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n #{myname} have a request for you....\\H\""
    tx["tx2"] = "\"I wonder if you can\n make me squeal....?\"" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you meanie, #{target}....\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "\"#{pleasure_cr}\n #{target}, not there!\n That'll make me squeal....\\H\"" 
      tx["tx1"] = "\"#{pleasure_cr}\n That feels good, #{target}........!\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_cr}\n Don't just do it there, #{target}....!\\H\n #{pleasure_s}\""  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "\"#{pleasure_s}\n Hey, can you keep going....?\"" 
      tx["tx1"] = "\"#{pleasure_l}\n #{target}, more....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_s}\n That feels good, #{target}....\\H\n Keep going....\\H\""  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha....that was nice....\\H\n Ufufu, #{myname} better repay you next♪\""
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha....that was nice....\\H\n Ufu, you tired, #{target}?\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼視姦▼****************************************************************************************
#自慰を見ているように要求される
when "Leer"
  case $msg.talk_step
  when 1 #自慰開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n You like....lewd girls? \\H\""
    tx["tx2"] = "\"Starting now, I'm gonna do it by myself....\n Can you just sit back and watch me....? \\H\"" 
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you meanie, #{target}....\""
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "Target: Breasts","Target: Mouth"
      tx["tx1"] = "\"#{pleasure_l}\n #{target}....are you watching me....? \\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n You like to touch yourself like this, #{myname}....? \\H\n ....#{pleasure_s}\""  if $game_variables[17] > 50
    #▼アソコを弄る
    when "Target: Pussy","Target: Ass"
      tx["tx1"] = "\"#{pleasure_l}\n #{target}....are you watching me....? \\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n My pussy's getting all sticky....\\H\n ....#{pleasure_s}\""  if $game_variables[17] > 50
    #▼陰核を弄る
    when "Target: Clitoris","Target: Anus"
      tx["tx1"] = "\"#{pleasure_l}\n #{target}....are you watching me....? \\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n ....You can look only, you know? No touching allowed....\\H\n ....#{pleasure_s}\""  if $game_variables[17] > 50
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....Ehe, did it make your heart race?\""
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....Ehehe, did that make you excited?\n You're looking at me like a perv, #{target}\\H\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)


#▼交合▼****************************************************************************************
#自分にホールドを行うように要求する
when "Mingle"
  case $msg.at_parts
  when "Inserted"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey, #{target}....\n #{myname} can't bear it anymore....\\H\""
      tx["tx2"] = "\"Please fuck me....\n with #{target}'s hot dick....\\H\""  #正常位トラップ
      tx["tx2"] = "\"Please fuck me....\n with #{target}'s hot dick from behind....\\H\""  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Oh come on....\n You're a sissy, #{target}....\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Aaaah! \\H\n You're amazing, #{target}....\\H\""
    end
  when "Fellatio"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey, #{target}....\\H\n You like blowjobs? \\H\""
      tx["tx2"] = "\"Let me give you a good sucking\\H\n Ahhh~\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Oh come on....\n You don't like it?\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Mmph....\\H\n Nfufu....\\H\""
    end
  when "Paizuri"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey, #{target}....\\H\n I'm pretty confindent in my boobs\\H\""
      tx["tx2"] = "\"Wanna try fucking my boobs?\n Here you go\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Oh come on....\n You don't like it?\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_s}\n #{target}'s dick's buried in my boobies\\H\""
    end
  when "Facesitted"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey, #{target}....\\H\n #{myname} have a request for you....\\H\""
      tx["tx2"] = "\"Lick my pussy for me....\\H\n You can do that, right....? \\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Oh, you big meanie....\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_s}\n #{target}'s tongue went right inside....\\H\""
    end
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)

#----------------------------------------------------------------------------------------------------------------------
end #msg.tag















#====================================================================================================================
#◆【寵愛】状態◆
elsif $msg.t_enemy.have_ability?("Affection")
#====================================================================================================================
case $msg.tag
#▼会話不成立時▼****************************************************************************************
#・アクタークライシス（非ホールド状態）
#・エネミークライシス（非ホールド状態）
#・絶頂中
#・会話回数が３回を越えた（非ベッドイン中）
when "Rejected"
  case $msg.at_type
  when "Succubus orgasming"
    # エネミーが絶頂直後の衰弱中
    tx["tx1"] = "\"Aaah....nnn....\\H\""
    #----------------------------
    tx["md"] = "28"
  when "Player CRISIS"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "\"*Giggle....♪\n Guess you can't wait?\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus CRISIS"
    # 夢魔がクライシス中に話しかけた場合
    tx["tx1"] = "\"Ahaa....\\H\n Hey....don't tease me like that....\\H\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus in ecstasy"
    # 夢魔が恍惚中の場合
    tx["tx1"] = "\"Aaah....nnn....\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Succubus running berserk"
    # 夢魔が暴走中の場合
    tx["tx1"] = "\"Ufufu....\n No running away....\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Excess moves"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "\"Hey....\n Can't you save the talking\n for....later? \\H\""
    #----------------------------
  end
  #格納
  ms.push(tx)




#▼前口上▼****************************************************************************************
#トークを仕掛けた場合、必ずムードと好感度が上がる。その部分の会話。
#これが表示された後、ランダムで要求その他の分岐に入る(入らない場合もある)
#会話に対して、好意的に返してくれる
when "Initial remarks"
#==================================================================================================================
  case $mood.point
  # 好感度がとても高い場合
  when 50..100
    tx["tx1"] = "\"Nnn....so happy\\H\""
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "\"Ufufu, gee, thanks\\H\""
  # 好感度が低い場合
  else
    tx["tx1"] = "\"Ufufu♪\n Wonder if it's alright to say that\\H\n Won't that make the other girls mad?\""
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "Favor"
  tx["tx1"] = "\"Nfufu, it's always nice to put it into words\\H\""
  tx["tx1"] = "\"Hey....#{target}....?\n ....No, never mind\\H\"" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "Player stripped"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n #{myname} have a request for you\\H\""
    tx["tx2"] = "\"I wanna see #{target} withouts clothes\\H\n Pretty please? \\H\"" 
    tx["tx2"] = "\"I wanna see #{target} withouts clothes\\H\n Not like I'm wearing clothes either, you know? \\H\""  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you big meanie!\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha, now that I'm looking at it up-close,\n it makes my heart pound\\H\""
    tx["tx1"] = "\"Whoa....\\H\n #{target}'s body....*gulp....\\H\"" if $msg.t_enemy.state?(32) #ドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼夢魔脱衣▼****************************************************************************************
#夢魔が自ら脱ぐ
when "Succubus stripped"
  case $msg.talk_step
  when 1 #夢魔脱衣
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n How 'bout I show you something nice?\""
    tx["tx2"] = "\"I'm gonna get naked now....\n Can you watch me from there, #{target}....? \\H\"" 
    tx["tx2"] = "\"I'm gonna get naked like you now....\n Can you watch me from there, #{target}....? \\H\""  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh come on! Why?\""
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha....\\H\n How is it? Does it make your heart race? \\H\""
    tx["tx1"] = "\"Aha....\\H\n You're looking at me like a perv, you know, #{target}?\n *Giggle\\H\"" if $game_actors[101].state?(32) #ドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼吸精▼****************************************************************************************
#精気を吸わせるよう要求される
when "Energy-suck - mouth","Energy-suck - genitals"
  case $msg.talk_step
  when 1 #吸精要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n I'm feeling hungry....\\H\""
    tx["tx2"] = "\"Can you give me some of #{target}'s energy?\"" 
    tx["tx2"] = "\"Can you give me some of #{target}'s energy?\n In exchange, I'll make you feel real good....\\H\""  if $msg.tag == "Energy-suck - genitals"
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh come on! It's not like I'm gonna hurt you!\n Geez....talk about a sissy.\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha....\\H\n #{giggle}\n Thanks for the grub, #{target}♪\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼愛撫▼****************************************************************************************
#愛撫を受け入れるよう要求する
when "Caress - normal"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n Can you leave everything to me for a bit?\""
    tx["tx2"] = "\"I'll make you feel like you're in heaven....\\H\"" 
    tx["tx2"] = "\"You can't take it anymore either, right, #{target}?\n Let me make you feel real good....\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you big meanie....\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"#{giggle} Did that hit the spot just now?\n Nfufu....so cute\\H\"" 
        tx["tx1"] = "\"#{giggle}\n Aren't you gonna resist me?\n Then I'll keep going\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle}\n I can see right through #{target}'s weak spots\\H\n I'm gonna keep going\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"#{target}, you like it when I do it like this?\n Nfufu....so cute\\H\"" 
        tx["tx1"] = "\"#{giggle}\n I know all of #{target}'s weak spots\\H\n How long can you hold out, I wonder♪\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"#{giggle}\n Did that hit the spot just now?\n Then as a follow-up....\\H\"" 
        tx["tx1"] = "\"#{giggle}\n Found #{target}'s weak spot\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle}\n So you like it when I do it like this\\H\n Then as a follow-up....\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"Hey....what'd you think?\n Does it make you squeal....? \\H\"" 
        tx["tx1"] = "\"#{giggle}\n Tell if if there's somewhere that feels good\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"Nfu....what'd you think?\n I can keep going if you don't mind it\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ehehe....were you satisfied by that?\\H\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼性交▼****************************************************************************************
#性交を受け入れるよう要求する
when "Caress - intercourse"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n Can you leave everything to me for a bit?\""
    tx["tx2"] = "\"Let me make you feel good\n with my body....\\H\"" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you big meanie....\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "\"#{pleasure_s}\n Your thing's stuffing my pussy....\\H\n More....I want more....\\H\"" 
      tx["tx1"] = "\"#{pleasure_s}\n How is it? Does it feel good? \\H\n I'll keep going, #{target}....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_s}\n Your thing's all the way inside....\\H\n #{pleasure_cr}\""  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "\"#{pleasure_s}\n Your thing's stuffing my pussy....\\H\n More....I want more....\\H\"" 
      tx["tx1"] = "\"#{giggle}\n How is it? Does it feel good? \\H\n I'll keep going, #{target}....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_s}\n You're so rough, #{target}....\\H\n Oh no....I can't stop....\\H\""  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "\"#{giggle}\n Your thing's moving in and out....\\H\n Hey....can you go harder? \\H\"" 
      tx["tx1"] = "\"#{pleasure_s}\n How is it? Does it feel good? \\H\n I'll keep going, #{target}....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Aha, you should be getting hooked on it\\H\n Let's keep it up\\H\""  if $game_actors[101].critical == true #攻守交替
    #▼Deffence
    else
      tx["tx1"] = "\"Hey....what'd you think?\n Does it make you squeal....? \\H\"" 
      tx["tx1"] = "\"#{pleasure_s}\n Don't move, okay, #{target}? \\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{giggle}\n Looks like I hit the mark just now♪\n Then let me keep going\\H\""  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ehehe....were you satisfied by that?\\H\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼奉仕▼****************************************************************************************
#自分に奉仕するよう要求する
when "Show love"
  case $msg.talk_step
  when 1 #奉仕開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n #{myname} have a request for you....\\H\""
    tx["tx2"] = "\"I wonder if you can\n make me squeal....?\"" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you meanie, #{target}....\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "\"#{pleasure_cr}\n #{target}, not there!\n That'll make me squeal....\\H\"" 
      tx["tx1"] = "\"#{pleasure_cr}\n That feels good, #{target}........!\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_cr}\n Don't just do it there, #{target}....!\\H\n #{pleasure_s}\""  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "\"#{pleasure_s}\n Hey, can you keep going....?\"" 
      tx["tx1"] = "\"#{pleasure_l}\n #{target}, more....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_s}\n That feels good, #{target}....\\H\n Keep going....\\H\""  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha....that was nice....\\H\n Ufufu, #{myname} better repay you next♪\""
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha....that was nice....\\H\n Ufu, you tired, #{target}?\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼視姦▼****************************************************************************************
#自慰を見ているように要求される
when "Leer"
  case $msg.talk_step
  when 1 #自慰開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n You like....lewd girls? \\H\""
    tx["tx2"] = "\"Starting now, I'm gonna do it by myself....\n Can you just sit back and watch me....? \\H\"" 
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you meanie, #{target}....\""
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "Target: Breasts","Target: Mouth"
      tx["tx1"] = "\"#{pleasure_l}\n #{target}....are you watching me....? \\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n You like to touch yourself like this, #{myname}....? \\H\n ....#{pleasure_s}\""  if $game_variables[17] > 50
    #▼アソコを弄る
    when "Target: Pussy","Target: Ass"
      tx["tx1"] = "\"#{pleasure_l}\n #{target}....are you watching me....? \\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n My pussy's getting all sticky....\\H\n ....#{pleasure_s}\""  if $game_variables[17] > 50
    #▼陰核を弄る
    when "Target: Clitoris","Target: Anus"
      tx["tx1"] = "\"#{pleasure_l}\n #{target}....are you watching me....? \\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n ....You can look only, you know? No touching allowed....\\H\n ....#{pleasure_s}\""  if $game_variables[17] > 50
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....Ehe, did it make your heart race?\""
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....Ehehe, did that make you excited?\n You're looking at me like a perv, #{target}\\H\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)


#▼交合▼****************************************************************************************
#自分にホールドを行うように要求する
when "Mingle"
  case $msg.at_parts
  when "Inserted"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey, #{target}....\n #{myname} can't bear it anymore....\\H\""
      tx["tx2"] = "\"Please fuck me....\n with #{target}'s hot dick....\\H\""  #正常位トラップ
      tx["tx2"] = "\"Please fuck me....\n with #{target}'s hot dick from behind....\\H\""  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Oh come on....\n You're a sissy, #{target}....\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Aaaah! \\H\n You're amazing, #{target}....\\H\""
    end
  when "Fellatio"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey, #{target}....\\H\n You like blowjobs? \\H\""
      tx["tx2"] = "\"Let me give you a good sucking\\H\n Ahhh~\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Oh come on....\n You don't like it?\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Mmph....\\H\n Nfufu....\\H\""
    end
  when "Paizuri"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey, #{target}....\\H\n I'm pretty confindent in my boobs\\H\""
      tx["tx2"] = "\"Wanna try fucking my boobs?\n Here you go\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Oh come on....\n You don't like it?\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_s}\n #{target}'s dick's buried in my boobies\\H\""
    end
  when "Facesitted"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey, #{target}....\\H\n #{myname} have a request for you....\\H\""
      tx["tx2"] = "\"Lick my pussy for me....\\H\n You can do that, right....? \\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Oh, you big meanie....\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_s}\n #{target}'s tongue went right inside....\\H\""
    end
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)

#----------------------------------------------------------------------------------------------------------------------
end #msg.tag














#====================================================================================================================
#◆通常状態(【寵愛】【大切な人】どちらも持っていない場合)◆
else
#====================================================================================================================
case $msg.tag
#▼会話不成立時▼****************************************************************************************
#・アクタークライシス（非ホールド状態）
#・エネミークライシス（非ホールド状態）
#・絶頂中
#・会話回数が３回を越えた（非ベッドイン中）
when "Rejected"
  case $msg.at_type
  when "Succubus orgasming"
    # エネミーが絶頂直後の衰弱中
    tx["tx1"] = "\"Aaah....nnn....\\H\""
    #----------------------------
    tx["md"] = "28"
  when "Player CRISIS"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "\"*Giggle....♪\n Guess you can't wait?\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus CRISIS"
    # 夢魔がクライシス中に話しかけた場合
    tx["tx1"] = "\"Ahaa....\\H\n Hey....don't tease me like that....\\H\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus in ecstasy"
    # 夢魔が恍惚中の場合
    tx["tx1"] = "\"Aaah....nnn....\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Succubus running berserk"
    # 夢魔が暴走中の場合
    tx["tx1"] = "\"Ufufu....\n No running away....\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Excess moves"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "\"Hey....\n Can't you save the talking\n for....later? \\H\""
    #----------------------------
  end
  #格納
  ms.push(tx)




#▼前口上▼****************************************************************************************
#トークを仕掛けた場合、必ずムードと好感度が上がる。その部分の会話。
#これが表示された後、ランダムで要求その他の分岐に入る(入らない場合もある)
#会話に対して、好意的に返してくれる
when "Initial remarks"
#==================================================================================================================
  case $mood.point
  # 好感度がとても高い場合
  when 50..100
    tx["tx1"] = "\"Nnn....so happy\\H\""
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "\"Ufufu, gee, thanks\\H\""
  # 好感度が低い場合
  else
    tx["tx1"] = "\"Ufufu♪\n Wonder if it's alright to say that\\H\n Won't that make the other girls mad?\""
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "Favor"
  tx["tx1"] = "\"Nfufu, it's always nice to put it into words\\H\""
  tx["tx1"] = "\"Hey....#{target}....?\n ....No, never mind\\H\"" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "Player stripped"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n #{myname} have a request for you\\H\""
    tx["tx2"] = "\"I wanna see #{target} withouts clothes\\H\n Pretty please? \\H\"" 
    tx["tx2"] = "\"I wanna see #{target} withouts clothes\\H\n Not like I'm wearing clothes either, you know? \\H\""  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you big meanie!\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha, now that I'm looking at it up-close,\n it makes my heart pound\\H\""
    tx["tx1"] = "\"Whoa....\\H\n #{target}'s body....*gulp....\\H\"" if $msg.t_enemy.state?(32) #ドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼夢魔脱衣▼****************************************************************************************
#夢魔が自ら脱ぐ
when "Succubus stripped"
  case $msg.talk_step
  when 1 #夢魔脱衣
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n How 'bout I show you something nice?\""
    tx["tx2"] = "\"I'm gonna get naked now....\n Can you watch me from there, #{target}....? \\H\"" 
    tx["tx2"] = "\"I'm gonna get naked like you now....\n Can you watch me from there, #{target}....? \\H\""  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh come on! Why?\""
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha....\\H\n How is it? Does it make your heart race? \\H\""
    tx["tx1"] = "\"Aha....\\H\n You're looking at me like a perv, you know, #{target}?\n *Giggle\\H\"" if $game_actors[101].state?(32) #ドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼吸精▼****************************************************************************************
#精気を吸わせるよう要求される
when "Energy-suck - mouth","Energy-suck - genitals"
  case $msg.talk_step
  when 1 #吸精要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n I'm feeling hungry....\\H\""
    tx["tx2"] = "\"Can you give me some of #{target}'s energy?\"" 
    tx["tx2"] = "\"Can you give me some of #{target}'s energy?\n In exchange, I'll make you feel real good....\\H\""  if $msg.tag == "Energy-suck - genitals"
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh come on! It's not like I'm gonna hurt you!\n Geez....talk about a sissy.\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha....\\H\n #{giggle}\n Thanks for the grub, #{target}♪\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼愛撫▼****************************************************************************************
#愛撫を受け入れるよう要求する
when "Caress - normal"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n Can you leave everything to me for a bit?\""
    tx["tx2"] = "\"I'll make you feel like you're in heaven....\\H\"" 
    tx["tx2"] = "\"You can't take it anymore either, right, #{target}?\n Let me make you feel real good....\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you big meanie....\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"#{giggle} Did that hit the spot just now?\n Nfufu....so cute\\H\"" 
        tx["tx1"] = "\"#{giggle}\n Aren't you gonna resist me?\n Then I'll keep going\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle}\n I can see right through #{target}'s weak spots\\H\n I'm gonna keep going\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"#{target}, you like it when I do it like this?\n Nfufu....so cute\\H\"" 
        tx["tx1"] = "\"#{giggle}\n I know all of #{target}'s weak spots\\H\n How long can you hold out, I wonder♪\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"#{giggle}\n Did that hit the spot just now?\n Then as a follow-up....\\H\"" 
        tx["tx1"] = "\"#{giggle}\n Found #{target}'s weak spot\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"#{giggle}\n So you like it when I do it like this\\H\n Then as a follow-up....\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"Hey....what'd you think?\n Does it make you squeal....? \\H\"" 
        tx["tx1"] = "\"#{giggle}\n Tell if if there's somewhere that feels good\\H\""  if $game_variables[17] > 50
        tx["tx1"] = "\"Nfu....what'd you think?\n I can keep going if you don't mind it\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ehehe....were you satisfied by that?\\H\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼性交▼****************************************************************************************
#性交を受け入れるよう要求する
when "Caress - intercourse"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n Can you leave everything to me for a bit?\""
    tx["tx2"] = "\"Let me make you feel good\n with my body....\\H\"" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you big meanie....\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "\"#{pleasure_s}\n Your thing's stuffing my pussy....\\H\n More....I want more....\\H\"" 
      tx["tx1"] = "\"#{pleasure_s}\n How is it? Does it feel good? \\H\n I'll keep going, #{target}....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_s}\n Your thing's all the way inside....\\H\n #{pleasure_cr}\""  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "\"#{pleasure_s}\n Your thing's stuffing my pussy....\\H\n More....I want more....\\H\"" 
      tx["tx1"] = "\"#{giggle}\n How is it? Does it feel good? \\H\n I'll keep going, #{target}....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_s}\n You're so rough, #{target}....\\H\n Oh no....I can't stop....\\H\""  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "\"#{giggle}\n Your thing's moving in and out....\\H\n Hey....can you go harder? \\H\"" 
      tx["tx1"] = "\"#{pleasure_s}\n How is it? Does it feel good? \\H\n I'll keep going, #{target}....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Aha, you should be getting hooked on it\\H\n Let's keep it up\\H\""  if $game_actors[101].critical == true #攻守交替
    #▼Deffence
    else
      tx["tx1"] = "\"Hey....what'd you think?\n Does it make you squeal....? \\H\"" 
      tx["tx1"] = "\"#{pleasure_s}\n Don't move, okay, #{target}? \\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{giggle}\n Looks like I hit the mark just now♪\n Then let me keep going\\H\""  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Ehehe....were you satisfied by that?\\H\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼奉仕▼****************************************************************************************
#自分に奉仕するよう要求する
when "Show love"
  case $msg.talk_step
  when 1 #奉仕開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n #{myname} have a request for you....\\H\""
    tx["tx2"] = "\"I wonder if you can\n make me squeal....?\"" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you meanie, #{target}....\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "\"#{pleasure_cr}\n #{target}, not there!\n That'll make me squeal....\\H\"" 
      tx["tx1"] = "\"#{pleasure_cr}\n That feels good, #{target}........!\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_cr}\n Don't just do it there, #{target}....!\\H\n #{pleasure_s}\""  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "\"#{pleasure_s}\n Hey, can you keep going....?\"" 
      tx["tx1"] = "\"#{pleasure_l}\n #{target}, more....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_s}\n That feels good, #{target}....\\H\n Keep going....\\H\""  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha....that was nice....\\H\n Ufufu, #{myname} better repay you next♪\""
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Aha....that was nice....\\H\n Ufu, you tired, #{target}?\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼視姦▼****************************************************************************************
#自慰を見ているように要求される
when "Leer"
  case $msg.talk_step
  when 1 #自慰開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey, #{target}....\n You like....lewd girls? \\H\""
    tx["tx2"] = "\"Starting now, I'm gonna do it by myself....\n Can you just sit back and watch me....? \\H\"" 
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you meanie, #{target}....\""
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "Target: Breasts","Target: Mouth"
      tx["tx1"] = "\"#{pleasure_l}\n #{target}....are you watching me....? \\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n You like to touch yourself like this, #{myname}....? \\H\n ....#{pleasure_s}\""  if $game_variables[17] > 50
    #▼アソコを弄る
    when "Target: Pussy","Target: Ass"
      tx["tx1"] = "\"#{pleasure_l}\n #{target}....are you watching me....? \\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n My pussy's getting all sticky....\\H\n ....#{pleasure_s}\""  if $game_variables[17] > 50
    #▼陰核を弄る
    when "Target: Clitoris","Target: Anus"
      tx["tx1"] = "\"#{pleasure_l}\n #{target}....are you watching me....? \\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n ....You can look only, you know? No touching allowed....\\H\n ....#{pleasure_s}\""  if $game_variables[17] > 50
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「……えへっ、ドキドキしてくれた？」"
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「……えへへっ、興奮しちゃった？\n　#{target}、目がえっちだよぉ\\H」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)


#▼交合▼****************************************************************************************
#自分にホールドを行うように要求する
when "交合"
  case $msg.at_parts
  when "♀挿入"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「ねぇ、#{target}……。\n　#{myname}、もうがまんできない……\\H」"
      tx["tx2"] = "「#{target}の熱いので……。\n　#{myname}を犯してぇ……\\H」"  #正常位トラップ
      tx["tx2"] = "「#{target}の熱いので……。\n　#{myname}を後ろから犯してぇ……\\H」"  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん……。\n　#{target}の意気地なしぃ……！」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁんっ！\\H\n　#{target}、凄いよぉ……っ\\H」"
    end
  when "口挿入"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「ねぇ、#{target}……\\H\n　お口でされるのは、好き？\\H」"
      tx["tx2"] = "「#{myname}がおしゃぶりしてあげる\\H\n　はい、あ～ん\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん……。\n　好きじゃないのぉ？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「はむっ……\\H\n　んふふっ……\\H」"
    end
  when "パイズリ"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「ねぇ、#{target}……\\H\n　#{myname}、おっぱいには自信あるんだぁ\\H」"
      tx["tx2"] = "「#{myname}の胸で、シてみたい？\n　……はい、どうぞ\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん……。\n　好きじゃないのぉ？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{pleasure_s}\n　#{target}のがおっぱいに埋まっちゃった\\H」"
    end
  when "顔面騎乗"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「ねぇ、#{target}……\\H\n　お願いがあるんだぁ……\\H」"
      tx["tx2"] = "「#{myname}のココ、舐めて……\\H\n　ね、いいでしょう……？\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「あぁん、意地悪……」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{pleasure_s}\n　#{target}の舌が入ってきたぁ……っ\\H」"
    end
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)

#----------------------------------------------------------------------------------------------------------------------
end #msg.tag






#----------------------------------------------------------------------------------------------------------------------
end
end #def
end #class
