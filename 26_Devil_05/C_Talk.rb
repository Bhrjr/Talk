=begin
#######################################################################################################################
 ●『デビル（緑）』トーク口上
 ●性格：勝ち気
 version 1.0.0
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

#######################################################################################################################
######################################★トーク：主人公への追撃を行う口上群#############################################
#######################################################################################################################
class MsgDevil_A < MsgBase
 def msg_talk_05
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
  tx["tx1"] = "\"#{giggle}\""
  #格納
  ms.push(tx)
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
    tx["tx1"] = "\"Aaa....nnh....hhh....\\H\n Ahaha....you're something else, #{target}....\\H\""
    #----------------------------
    tx["md"] = "28"
  when "Player CRISIS"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "\"Hehe....is that a call for surrender?\n Too bad that #{myname}'m a devil....\n No way I'll give ear to it so simply....\\H\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus CRISIS"
    # 夢魔がクライシス中に話しかけた場合
    tx["tx1"] = "\"O-Oi....\n I'm good with that right now....\n You should be more like this....got it....? \\H\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus in ecstasy"
    # 夢魔が恍惚中の場合
    tx["tx1"] = "\"Nnnhh....sigh........\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Succubus running berserk"
    # 夢魔が暴走中の場合
    tx["tx1"] = "\"Heh.... #{giggle}\n Can you just stay there....? \\H\""
    #----------------------------
    tx["md"] = "30"
  when "Excess moves"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "\"Well, I'd say leave the chatting to that.\n As for what to do....you know that, don't you? \\H\""
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
    tx["tx1"] = "\"#{giggle}\n You know what, why don't I just take in what you said? \\H\""
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "\"Mmmm....\n Oh well, what you said doesn't sound so bad♪\""
  # 好感度が低い場合
  else
    tx["tx1"] = "\"Hoh, so you'll show love to even a devil?\n Can't say if it's fine to come out like that....\n #{giggle}\""
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "Favor"
  tx["tx1"] = "\"Okay then....\n What should #{myname} do?\n Tell me what you want....\\H\""
  tx["tx1"] = "\"Just that....\n Instead of words,\n I want to see your actions, I guess? \\H\"" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "Player stripped"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Alright.... #{target},\n if your words just now's not a lie,\n can you hear what #{myname} got to say?\""
    tx["tx2"] = "\"What do you say, #{target}?\n Can you strip down naked before me?\n So that way you have nothing to hide.\"" 
    tx["tx2"] = "\"Don't you think it's unfair for only me to naked?\n You aught to also take your clothes off fair and square.\""  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hmph. Well, I thought as much.\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Whoa there....that's quite....\\H\n Hehe, I see you have quit the guts.\""
    tx["tx1"] = "\"Whoa there....that's quite....\\H\n Face this way more, I can't get a good look.\"" if $msg.t_enemy.state?(32) #夢魔がドキっとした
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
    tx["tx1"] = "\"You know what....?\n How about I show you something nice? \\H\""
    tx["tx2"] = "\"Hehe....well, watch me from there.\n As I get undressed which you won't get to see anywhere else....\\H\"" 
    tx["tx2"] = "\"Hehe....well, watch me from there.\n You wouldn't like it if only you're naked, would you?\""  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"What,\n you mean you're not interested in me naked?\""
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Welll, what do you think?\n You should know I'm fairly confident in my physique.\""
    tx["tx1"] = "\"Welll, what do you think?\n .....Hehe, that thing on your groin's honest about it\\H\"" if $game_actors[101].state?(32) #主人公がドキっとした
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
    tx["tx1"] = "\"Alright.... #{target},\n if your words just now's not a lie,\n can you hear what #{myname} got to say?\""
    tx["tx2"] = "\"Let me have a taste of your energy\\H\n What? It'll be over soon....\\H\"" 
    tx["tx2"] = "\"Let me have a taste of your energy\\H\n What? It'll be over as soon as you feel it....\\H\""  if $msg.tag == "Energy-suck - genitals"
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"It's not like you'll die from it....\n I won't take any cowards, you hear?\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oohh....this is quite....\\H\n Hehe, that was a nice meal♪\""
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
    tx["tx1"] = "\"You know what....?\n How about I give you a little treat? \\H\""
    tx["tx2"] = "\"What? I'm gonna eat you up or anything.\n I'll be leaving you squealing from now on\\H\"" 
    tx["tx2"] = "\"I know you can't wait for it.\n Let me help you with that....\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Wha? And just when I haven't done it in a while.\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"Hehe....oh yeah\\H\n You should know humans are best off being honest to the pleasure.\"" 
        tx["tx1"] = "\"See, I know you wanted me to do it like this.\n Your body's quite honest, you see....? \\H\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"Hehe....should I continue?\n Your face tells me so, #{target}\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"Hey now, you're not supposed to fight it.\n Do you need to be be punished....? \\H\"" 
        tx["tx1"] = "\"How long can you endure it, I wonder?\n I'm well-aware of your weak spots.\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"You're holding out alright....\\H\n You should just make yourself comfortable\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"Hehe, so this is where you're weak to.\n Should I keep doing it....? \\H\"" 
        tx["tx1"] = "\"Hehe, how'd you like it?\n Wailing like a girl....\\H\n Was what I did just now that good?\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"Oho....\\H\n I see then, so this is it....♪\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"Hey there....what do you think?\n You need to relax more....\\H\"" 
        tx["tx1"] = "\"You just stay still, #{target}.\n Right now, it's my turn to go on the offensive....♪\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"Hehe, I gotta hand it to you for your persistance.\n How long can you keep up that bluff, I wonder....? \\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....You know what, that'll be it for now.\n If you want more, you'll have to beg for it\\H\""
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
    tx["tx1"] = "\"Having said that....\n You're pretty calm to be in a situation this.\""
    tx["tx2"] = "\"How long can you stay like that, I wonder?\n How about I see for myself....\\H\"" 
    tx["tx2"] = "\"Or are you just bluffing?\n How about I see for myself....\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey now, isn't this where you rise to the challenge?\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "\"#{pleasure_l}\n It's reaching all the way inside me....\\H\n If you cum inside now.... #{pleasure_s}\"" 
      tx["tx1"] = "\"I bet doing it like this give you a good look.\n Of where we're connected, that is....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Kuku....\\H\n Yes, that's a good expression you've got there\\H\n No need to hold your voice in.\""  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "\"#{pleasure_l}\n Hehe, you want me to go harder?\"" 
      tx["tx1"] = "\"Tell me when you're about to cum, alright....?\\H\n #{pleasure_l}\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{giggle}\n You're not gonna resist it?\n Then I won't hesitate to have you cum, alright....? \\H\""  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "\"Hehe, it's even harder than just now....\\H\n #{target}, are you a fan of getting attacked?\"" 
      tx["tx1"] = "\"Tell me when you're about to cum, alright....?\\H\n #{pleasure_l}\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{giggle}\n Alright, my turn from here on♪\n Time to squeeze you out plenty....\\H\""  if $game_actors[101].critical == true #攻守交替
    #▼Defense
    else
      tx["tx1"] = "\"#{pleasure_s}\n Hehe, how do you like the way #{myname} do it?\n I'm fairly confident in it, you know\\H\"" 
      tx["tx1"] = "\"Hehe....what's the matter? \\H\n You don't have have to worry about me pausing\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Kuku....\\H\n What's the matter? Your hips are slackened.\""  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....You know what, that'll be it for now.\n If you want more, you'll have to beg for it\\H\""
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
    tx["tx1"] = "\"#{giggle}\n I want you to show me your spirit.\""
    tx["tx2"] = "\"I won't do anything for now.\n Feel free to do whatever you want with my body\\H\"" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Wha, you've got no spine.\n I bet this is when you come back with an immediate retort.\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "\"#{pleasure_s}\n N-No, not there....! \\H\n #{pleasure_cr}\"" 
      tx["tx1"] = "\"#{pleasure_cr}\n W-Wait, that's....!\n #{pleasure_l}\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_cr}\n That feels so good....more....\\H\""  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "\"#{pleasure_l}\n That's good, just like that....#{pleasure_s}\"" 
      tx["tx1"] = "\"#{pleasure_l}\n That feels nice there.... #{pleasure_s}\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_s}\n Hey, you're not supposed to just attack that spot....\\H\n　#{pleasure_l}\""  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Talk about being frank. You satisfied with just that?\n That would've felt great though.\""
    tx["tx1"] = "\"#{giggle}\n That felt pretty great\\H\"" if $msg.talk_step >= 3
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n Now then, next up is, of course....\n my turn to do whatever I want with you.\""
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
    tx["tx1"] = "\"Say, #{target}....?\n You ever seen a girl doing it by herself?\""
    tx["tx2"] = "\"Hehe, I can show you right now if you want.\n No touching though.\"" 
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you're good?\n You won't get to see it later.\""
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "Target: Breasts","Target: Mouth"
      tx["tx1"] = "\"#{pleasure_l}\n Hehe, thinking that I'm being watched gets me turned on....\\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n If I touch it this way.... #{pleasure_s}\""  if $game_variables[17] > 50 #パターンB
    #▼アソコを弄る
    when "Target: Pussy","Target: Ass"
      tx["tx1"] = "\"#{pleasure_l}\n Hehe, why don't I make it easer to see....\\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n See...? I don't mind you watching it from closer up.\""  if $game_variables[17] > 50 #パターンB
    #▼陰核を弄る
    when "Target: Clitoris","Target: Anus"
      tx["tx1"] = "\"#{pleasure_l}\n How is it? I bet it turns you on.\"" 
      tx["tx1"] = "\"#{pleasure_l}\n See...? I don't mind you watching it from closer up.\""  if $game_variables[17] > 50 #パターンB
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n How was it? Were you excited?\""
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n You're looking at me like you want to fuck me right now.\n ....What should we do? \\H\""
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
      tx["tx1"] = "\".....You know what?\n I think we can cut to the chase for both of us.\n Next up....\\H\""
      tx["tx2"] = "\"....Come\\H\n #{myname}'m all set already, you know?\""  #正常位トラップ
      tx["tx2"] = "\"....Come\\H\n Let's both go at it like animals....\\H\""  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey you....this ain't it.\n Don't tell me you've chickened out.\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Nnnhaaah.....\\H\n Good....I just love men that are decisive\\H\""
    end
  when "Fellatio"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle}\n Say, #{target}....?\n How about #{myname} suck your cock for you?\""
      tx["tx2"] = "\"You should know I'm fairly confident in it.\n Do you have the balls to try it out....?\n #{giggle}\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey now, isn't this where you rise to the challenge?\n Don't tell me you've chickened out.\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Mmmmph....!\\H\n ....Nfu....pwah....\\H\""
    end
  when "Paizuri"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle}\n Say, #{target}....?\n You ever tried doing it on breasts?\""
      tx["tx2"] = "\"Well, I won't force it on you.\n Do you have the balls to try it out....?\n　#{giggle}\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey now, isn't this where you rise to the challenge?\n Don't tell me you've chickened out.\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_s}\n Good....I just love men that are decisive\\H\""
    end
  when "Facesitted"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle}\n You seeing this, #{target}....?\n My pussy's ended up like this\\H\""
      tx["tx2"] = "\"And it's all your fault.\n You better take responsibility for it....\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey you....this ain't it.\n Don't tell me you've chickened out.\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_s}\n Lick it good, got it....?\""
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
class MsgDevil_A < MsgBase 
 def msg_bedin_talk_05
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
  tx["tx1"] = "\"#{giggle}\""
  #格納
  ms.push(tx)
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
    tx["tx1"] = "\"Aaa....nnh....hhh....\\H\n Ahaha....you're something else, #{target}....\\H\""
    #----------------------------
    tx["md"] = "28"
  when "Player CRISIS"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "\"Hehe....is that a call for surrender?\n Too bad that #{myname}'m a devil....\n No way I'll give ear to it so simply....\\H\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus CRISIS"
    # 夢魔がクライシス中に話しかけた場合
    tx["tx1"] = "\"O-Oi....\n I'm good with that right now....\n You should be more like this....got it....? \\H\""
    #----------------------------
    tx["md"] = "29"
  when "Succubus in ecstasy"
    # 夢魔が恍惚中の場合
    tx["tx1"] = "\"Nnnhh....sigh........\\H\""
    #----------------------------
    tx["md"] = "30"
  when "Succubus running berserk"
    # 夢魔が暴走中の場合
    tx["tx1"] = "\"Heh.... #{giggle}\n Can you just stay there....? \\H\""
    #----------------------------
    tx["md"] = "30"
  when "Excess moves"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "\"Well, I'd say leave the chatting to that.\n As for what to do....you know that, don't you? \\H\""
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
    tx["tx1"] = "\"#{giggle}\n Can you show me love to the end?\\H\""
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "\"Mmmm....\n Oh well, what you said doesn't sound so bad♪\""
  # 好感度が低い場合
  else
    tx["tx1"] = "\"Hehe....\n As slick as ever.」"
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "Favor"
  tx["tx1"] = "\"Okay then....\n What should #{myname} do?\n Tell me what you want....\\H\""
  tx["tx1"] = "\"Just that....\n Instead of words,\n I want to see your actions, I guess? \\H\"" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "Player stripped"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"You know what....\n #{target}, can you take your clothes off for me?\""
    tx["tx2"] = "\"Or should #{myname} take it off for you?\n Hehehe\\H\"" 
    tx["tx2"] = "\"Don't you think it's unfair for only me to naked?\n You aught to also take your clothes off fair and square.\""  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you really want me to take it off for you?\n Hmmm, not sure if I should though.\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Haha, you're as determined as ever♪\n That's what I like about you\\H\""
    tx["tx1"] = "\"Haha, you're as determined as ever♪\n And now....I guess we're all set....\\H\"" if $msg.t_enemy.state?(32) #夢魔がドキっとした
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
    tx["tx1"] = "\"You know what....?\n Maybe it's about time #{myname} undress myself\\H\""
    tx["tx2"] = "\"Hehe....\n You can just sit back and watch....\\H\"" 
    tx["tx2"] = "\"Hehe....\n Not like I feel good about making you wait for so long♪\""  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"What?\n You mean you've gotten used to me changing?\""
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Welll, what do you think?\n You should know I keep an eye on my physique.\""
    tx["tx1"] = "\"Welll, what do you think?\n .....Hehe, that thing on your groin's honest about it\\H\"" if $game_actors[101].state?(32) #主人公がドキっとした
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
    tx["tx1"] = "\"Alright.... #{target},\n if your words just now's not a lie,\n can you hear what #{myname} got to say?\""
    tx["tx2"] = "\"Let me have a taste of your energy\\H\n What? It'll be over soon....\\H\"" 
    tx["tx2"] = "\"Let me have a taste of your energy\\H\n What? It'll be over as soon as you feel it....\\H\""  if $msg.tag == "Energy-suck - genitals"
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"It's not like you'll die from it....\n I won't take any cowards, you hear?\""
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oohh....this is quite....\\H\n Hehe, that was a nice meal♪\""
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
    tx["tx1"] = "\"#{giggle}\n Hey, you're fine with me on the offensive, right?\""
    tx["tx2"] = "\"You just need to make yourself comfortable.\n Then here I go....\\H\"" 
    tx["tx2"] = "\"I know you can't wait for it.\n Let me help you with that....\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Wha? \n It's fine to do it now and then.\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"Hehe....oh yeah\\H\n You should know humans are best off being honest to the pleasure.\"" 
        tx["tx1"] = "\"See, I know you wanted me to do it like this.\n Your body's quite honest, you see....? \\H\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"Hehe....should I continue?\n Your face tells me so, #{target}\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"Hey now, you're not supposed to fight it.\n Do you need to be punished....? \\H\"" 
        tx["tx1"] = "\"How long can you endure it, I wonder?\n I'm well-aware of your weak spots.\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"You're holding out alright....\\H\n You should just make yourself comfortable\\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "\"Hehe, so this is where you're weak to.\n Should I keep doing it....? \\H\"" 
        tx["tx1"] = "\"Hehe, how'd you like it?\n Wailing like a girl....\\H\n Was what I did just now that good?\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"Oho....\\H\n I see then, so this is it....♪\""  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "\"Hey there....what do you think?\n You need to relax more....\\H\"" 
        tx["tx1"] = "\"You just stay still, #{target}.\n Right now, it's my turn to go on the offensive....♪\""  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "\"Hehe, I gotta hand it to you for your persistance.\n How long can you keep up that bluff, I wonder....? \\H\""  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....Hehe, how was it?\n I'll do it again if you like it\\H\""
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼性交▼****************************************************************************************
#性交を受け入れるよう要求する
when "愛撫・性交"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Having said that....\n You're pretty calm to be in a situation this.\""
    tx["tx2"] = "\"How long can you stay like that, I wonder?\n ....Just kidding\\H\n Let's enjoy ourselves to the fullest....\\H\"" 
    tx["tx2"] = "\"Or are you just bluffing?\n ....Just kidding\\H\n Let's enjoy ourselves to the fullest....\\H\""  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hey now, isn't this where you rise to the challenge?\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "\"#{pleasure_l}\n It's reaching all the way inside me....\\H\n If you cum inside now.... #{pleasure_s}\""  
      tx["tx1"] = "\"I bet doing it like this give you a good look.\n Of where we're connected, that is....\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Kuku....\\H\n Yes, that's a good expression you've got there\\H\n No need to hold your voice in.\""  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] =  "\"#{pleasure_l}\n Hehe, you want me to go harder?\""  
      tx["tx1"] = "\"Tell me when you're about to cum, alright....?\\H\n #{pleasure_l}\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{giggle}\n You're not gonna resist it?\n Then I won't hesitate to have you cum, alright....? \\H\""  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "\"Hehe, it's even harder than just now....\\H\n #{target}, are you a fan of getting attacked?\"" 
      tx["tx1"] = "\"Tell me when you're about to cum, alright....?\\H\n #{pleasure_l}\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{giggle}\n Alright, my turn from here on♪\n Time to squeeze you out plenty....\\H\""  if $game_actors[101].critical == true #攻守交替
    #▼Deffence
    else
      tx["tx1"] = "\"#{pleasure_s}\n Hehe, how do you like the way #{myname} do it?\n I'm fairly confident in it, you know\\H\"" 
      tx["tx1"] = "\"Hehe....what's the matter? \\H\n You don't have have to worry about me pausing\\H\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"Kuku....\\H\n What's the matter? Your hips are slackened.\""  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"....Hehe, how was it?\n I'll do it again if you like it\\H\""
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
    tx["tx1"] = "\"#{giggle}\n Hey, you're fine with me on the offensive, right?\""
    tx["tx2"] = "\"I won't do anything for now.\n Feel free to do whatever you want with my body\\H\"" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Wha, you've got no spine.\n I bet this is when you come back with an immediate retort.\""
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "\"#{pleasure_s}\n N-No, not there....! \\H\n #{pleasure_cr}\"" 
      tx["tx1"] = "\"#{pleasure_cr}\n W-Wait, that's....!\n #{pleasure_l}\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_cr}\n That feels so good....more....\\H\""  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "\"#{pleasure_l}\n That's good, just like that....#{pleasure_s}\"" 
      tx["tx1"] = "\"#{pleasure_l}\n That feels nice there.... #{pleasure_s}\""  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "\"#{pleasure_s}\n Hey, you're not supposed to just attack that spot....\\H\n　#{pleasure_l}\""  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hehe....that felt great\\H\""
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Hehe....that felt great\\H\n Now then, next up is, of course....\n my turn to attack you.\""
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
    tx["tx1"] = "「Say, #{target}....?\n Can you watch me from there?」"
    tx["tx2"] = "「Don't get the wrong idea.\n #{myname} only show myself like this\n in front of you....\\H」" 
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"Oh, you're good?\n You won't get to see it later.\""
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "Target: Breasts","Target: Mouth"
      tx["tx1"] = "\"#{pleasure_l}\n Hehe, thinking that I'm being watched gets me turned on....\\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n If I touch it this way.... #{pleasure_s}\""  if $game_variables[17] > 50 #パターンB
    #▼アソコを弄る
    when "Target: Pussy","Target: Ass"
      tx["tx1"] = "\"#{pleasure_l}\n Hehe, why don't I make it easer to see....\\H\"" 
      tx["tx1"] = "\"#{pleasure_l}\n See...? I don't mind you watching it from closer up.\""  if $game_variables[17] > 50 #パターンB
    #▼陰核を弄る
    when "Target: Clitoris","Target: Anus"
      tx["tx1"] = "\"#{pleasure_l}\n How is it? I bet it turns you on.\"" 
      tx["tx1"] = "\"#{pleasure_l}\n See...? I don't mind you watching it from closer up.\""  if $game_variables[17] > 50 #パターンB
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "\"#{giggle}\n How was it? Were you excited?\""
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n You're looking at me like you want to fuck me right now.\n ....You know what, come at me whenver you feel like it\\H」"
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
      tx["tx1"] = "\".....You know what?\n I think we can cut to the chase for both of us.\n Next up....\\H\""
      tx["tx2"] = "\"....Come\\H\n #{myname}'m all set already, you know?\""  #正常位トラップ
      tx["tx2"] = "\"....Come\\H\n Let's both go at it like animals....\\H\""  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey you....this ain't it.\n Don't tell me you've chickened out.\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Nnnhaaah.....\\H\n Good....I just love men that are decisive\\H\""
    end
  when "Fellatio"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle}\n Say, #{target}....?\n How about #{myname} suck your cock for you?\""
      tx["tx2"] = "\"You should know I'm fairly confident in it.\n You got the balls to try it out....?\n #{giggle}\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey now, isn't this where you rise to the challenge?\n Don't tell me you've chickened out.\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Mmmmph....!\\H\n ....Nfu....pwah....\\H\""
    end
  when "パイズリ"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle}\n Say, #{target}....?\n You ever tried doing it on breasts?\""
      tx["tx2"] = "\"Well, I won't force it on you.\n You got the balls to try it out....?\n　#{giggle}\""  
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey now, isn't this where you rise to the challenge?\n Don't tell me you've chickened out.\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_s}\n Good....I just love men that are decisive\\H\""
    end
  when "Facesitted"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{giggle}\n You seeing this, #{target}....?\n My pussy's ended up like this\\H\""
      tx["tx2"] = "\"And it's all your fault.\n You better take responsibility for it....\\H\"" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"Hey you....this ain't it.\n Don't tell me you've chickened out.\""
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "\"#{pleasure_s}\n Lick it good, got it....?\""
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
when "不成立"
  case $msg.at_type
  when "夢魔絶頂中"
    # エネミーが絶頂直後の衰弱中
    tx["tx1"] = "「あ……ん……っ……\\H\n　あはは……凄いな、#{target}……\\H」"
    #----------------------------
    tx["md"] = "28"
  when "主人公クライシス"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "「ふふ……降参宣言かい？\n　おあいにく、#{myname}は悪魔なんでね……。\n　素直に聞いてやる訳にはいかないな……\\H」"
    #----------------------------
    tx["md"] = "29"
  when "夢魔クライシス"
    # 夢魔がクライシス中に話しかけた場合
    tx["tx1"] = "「な、なぁ……。\n　今はそういうのは良いからさ……。\n　もっとこう……判るだろ……？\\H」"
    #----------------------------
    tx["md"] = "29"
  when "夢魔恍惚中"
    # 夢魔が恍惚中の場合
    tx["tx1"] = "「ん……はぁ……っ……\\H」"
    #----------------------------
    tx["md"] = "30"
  when "夢魔暴走中"
    # 夢魔が暴走中の場合
    tx["tx1"] = "「ふ……#{giggle}\n　そこで大人しくしてなよ……？\\H」"
    #----------------------------
    tx["md"] = "30"
  when "試行過多"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "「さ、お喋りはこのくらいにしておこうぜ。\n　何をするのか……もちろん判ってるよな？\\H」"
    #----------------------------
  end
  #格納
  ms.push(tx)




#▼前口上▼****************************************************************************************
#トークを仕掛けた場合、必ずムードと好感度が上がる。その部分の会話。
#これが表示された後、ランダムで要求その他の分岐に入る(入らない場合もある)
#会話に対して、好意的に返してくれる
when "前口上"
#==================================================================================================================
  case $mood.point
  # 好感度がとても高い場合
  when 50..100
    tx["tx1"] = "「#{giggle}\n　ちゃんと最後まで愛してくれよ？\\H」"
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "「ん～……。\n　ま、言われて悪い気はしないな♪」"
  # 好感度が低い場合
  else
    tx["tx1"] = "「ふふっ……。\n　相変わらず口が上手いな」"
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "好意"
  tx["tx1"] = "「さて、と……。\n　それじゃ、#{myname}は何をしたらいい？\n　#{target}の望みを言ってみなよ……\\H」"
  tx["tx1"] = "「ただ、な……。\n　そろそろ、言葉じゃなく、\n　#{target}の行動が見たいかな？\\H」" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "主人公脱衣"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「さて、と……。\n　#{target}、服を脱いでもらえるかい？」"
    tx["tx2"] = "「それとも、#{myname}が脱がせてやろうか？\n　ふふふっ\\H」" 
    tx["tx2"] = "「#{myname}だけが裸なのは不公平だろ？\n　#{target}も潔く脱いでもらわないとな」"  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「お、ほんとに#{myname}に脱がせて欲しいのかい？\n　うーん、どうするかな～？」"
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ははっ、相変わらず思い切りいいな♪\n　そういう所は好きだぜ\\H」"
    tx["tx1"] = "「ははっ、相変わらず思い切りいいな♪\n　それに……もう準備万端みたい、だな……\\H」" if $msg.t_enemy.state?(32) #夢魔がドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼夢魔脱衣▼****************************************************************************************
#夢魔が自ら脱ぐ
when "夢魔脱衣"
  case $msg.talk_step
  when 1 #夢魔脱衣
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「さて、と……。\n　そろそろ#{myname}も脱ごうかな\\H」"
    tx["tx2"] = "「ふふっ……。\n　ゆっくり見てていいぜ……\\H」" 
    tx["tx2"] = "「ふふっ……。\n　あまり待たせちゃ可哀想だしな♪」"  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「なんだよ、\n　#{myname}の着替えは見慣れたって？」"
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ほぉれ、どうだい？\n　これでも、スタイルには気を遣ってるんだぜ」"
    tx["tx1"] = "「ほぉれ、どうだい？\n　……ふふっ、股間のそいつは正直だな\\H」" if $game_actors[101].state?(32) #主人公がドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼吸精▼****************************************************************************************
#精気を吸わせるよう要求される
when "吸精・口","吸精・性器"
  case $msg.talk_step
  when 1 #吸精要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「さて……#{target}。\n　さっきの言葉が嘘じゃないってんなら、\n　#{myname}の言うことも聞いてくれるよな？」"
    tx["tx2"] = "「#{target}の精、味見させてくれよ\\H\n　なぁに、すぐ終わるさ……\\H」" 
    tx["tx2"] = "「#{target}の精、味見させてくでよ\\H\n　なぁに、感じてりゃすぐ終わるさ……\\H」"  if $msg.tag == "吸精・性器"
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「別に死にゃしないってのに……。\n　臆病なのはいただけないぜ？」"
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「おっ……こりゃなかなか……\\H\n　ふふっ、ごちそうさん♪」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼愛撫▼****************************************************************************************
#愛撫を受け入れるよう要求する
when "愛撫・通常"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　なあ、#{myname}から攻めていいだろ？」"
    tx["tx2"] = "「#{target}は楽にしてりゃいいさ。\n　んじゃ行くぜ……\\H」" 
    tx["tx2"] = "「#{target}、待ちきれないんだろ？\n　#{myname}が手伝ってやるよ……\\H」"  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「なんだよ、\n　たまにはいいじゃないかよー」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "「ふふっ……そうそう\\H\n　人間は快楽に素直なのが一番だぜ？」" 
        tx["tx1"] = "「ほぉら、こうされたかったんだろ？\n　#{target}の身体は正直だぜ……？\\H」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「ふふっ……続けてやろうか？\n　そんな顔してるぜ、#{target}\\H」"  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "「おいおい、我慢するんじゃないよ。\n　こりゃお仕置きが必要かな……\\H」" 
        tx["tx1"] = "「いつまで耐えられるかな？\n　#{target}の弱い所は判ってんだぜ？」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「頑張るねぇ……\\H\n　ほれほれ、楽になっちまいなよ\\H」"  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "「ふふっ、ココが弱いみたいだな？\n　もっとしてやろうか……？\\H」" 
        tx["tx1"] = "「ふふっ、どうしたんだい？\n　女みたいな声出してさ……\\H\n　そんなに今のが良かったのかい？」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「おっ……\\H\n　そうかそうか、ここだなぁ……？♪」"  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "「ほぉら……どうだい？\n　もっと身体の力を抜きなよ……\\H」" 
        tx["tx1"] = "「#{target}は大人しくしてな？\n　今は#{myname}が攻める番だぜ……♪」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「ふふ、結構我慢強いじゃないか。\n　その強がり、いつまで持つかな……？\\H」"  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「……ふふ、どうだった？\n　よかったら、またしてやるよ\\H」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼性交▼****************************************************************************************
#性交を受け入れるよう要求する
when "愛撫・性交"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「にしても……、\n　こんな状況で余裕だね、#{target}」"
    tx["tx2"] = "「その余裕、いつまで持つかな？\n　……なんてな\\H\n　さ、めいっぱい楽しもうぜ……\\H」" 
    tx["tx2"] = "「それとも、単なる強がりかな？\n　……なんてな\\H\n　さ、めいっぱい楽しもうぜ……\\H」"  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「おいおい、そこは受けて立つところだろ？」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "「#{pleasure_l}\n　#{myname}の奥まで届いてる……\\H\n　今中で出されたら……#{pleasure_s}」" 
      tx["tx1"] = "「そら、こうすればよく見えるだろ？\n　#{myname}達が繋がってる所がさ……\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「くくっ……\\H\n　そうそう、いい表情するじゃないか\\H\n　もっと声出しても良いんだぜ？」"  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "「#{pleasure_l}\n　ふふっ、もっと激しくした方がいいかい？」" 
      tx["tx1"] = "「イくときはちゃんと言うんだぜ……？\\H\n　#{pleasure_l}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{giggle}\n　抵抗しないのかい？\n　それじゃ、遠慮なくイかせちまうよ……？\\H」"  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "「ふふっ、さっきより硬くなってる……\\H\n　#{target}、攻められる方が好きなのかい？」" 
      tx["tx1"] = "「イくときはちゃんと言うんだぜ……？\\H\n　#{pleasure_l}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{giggle}\n　さぁて、ここからは#{myname}のターンだな♪\n　たっぷりと絞り取ってやるよ……\\H」"  if $game_actors[101].critical == true #攻守交替
    #▼Deffence
    else
      tx["tx1"] = "「#{pleasure_s}\n　ふふ、#{myname}の具合はどうだい？\n　割と自信があるんだけどな\\H」" 
      tx["tx1"] = "「ふふっ……どうしたんだい？\\H\n　心配しなくても続けてやるよ\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「くくっ……\\H\n　どうしたんだい？腰がお留守になってるぞ？」"  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「……ふふ、どうだった？\n　よかったら、またしてやるよ\\H」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼奉仕▼****************************************************************************************
#自分に奉仕するよう要求する
when "奉仕"
  case $msg.talk_step
  when 1 #奉仕開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　#{target}、攻めてもらってもいいかい？」"
    tx["tx2"] = "「暫く何もしないでいるからさ。\n　#{myname}の身体、好きにしていいぜ\\H」" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「なんだよ、意地が悪いな。\n　そこは二つ返事で来るところだろ？」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "「#{pleasure_s}\n　だ、ダメ、そこやばい……っ！\\H\n　#{pleasure_cr}」" 
      tx["tx1"] = "「#{pleasure_cr}\n　ま、待って、そこはっ……！\n　#{pleasure_l}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{pleasure_cr}\n　気持ちいいっ……もっと……っ\\H」"  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "「#{pleasure_l}\n　いいよ、その調子で……#{pleasure_s}」" 
      tx["tx1"] = "「#{pleasure_l}\n　そこがいい感じ……#{pleasure_s}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{pleasure_s}\n　こら、そこばっかり攻めるんじゃない……\\H\n　#{pleasure_l}」"  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ふふっ……気持ちよかったよ\\H」"
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ふふっ……気持ちよかったよ\\H\n　さてと、次はもちろん……。\n　#{myname}が#{target}を攻める番だよな？」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼視姦▼****************************************************************************************
#自慰を見ているように要求される
when "視姦"
  case $msg.talk_step
  when 1 #自慰開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「なあ、#{target}……？\n　そこで見ててくれるかい？」"
    tx["tx2"] = "「勘違いするなよ？\n　#{myname}がこんな姿見せるのは、\n　#{target}の前でだけだからな……\\H」" 
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「おや、いいのかい？\n　後から見せてくれってのは無しだよ」"
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "対象：胸","対象：口"
      tx["tx1"] = "「#{pleasure_l}\n　ふふっ、見られてると思うと興奮するな……\\H」" 
      tx["tx1"] = "「#{pleasure_l}\n　こんな感じで触ると……#{pleasure_s}」"  if $game_variables[17] > 50 #パターンB
    #▼アソコを弄る
    when "対象：アソコ","対象：尻"
      tx["tx1"] = "「#{pleasure_l}\n　ふふっ、見えやすいようにしてやろうか……\\H」" 
      tx["tx1"] = "「#{pleasure_l}\n　そら……もっと近くで見ても良いんだぜ？」"  if $game_variables[17] > 50 #パターンB
    #▼陰核を弄る
    when "対象：陰核","対象：アナル"
      tx["tx1"] = "「#{pleasure_l}\n　どうだい、こういうのも興奮するだろ？」" 
      tx["tx1"] = "「#{pleasure_l}\n　そら……もっと近くで見ても良いんだぜ？」"  if $game_variables[17] > 50 #パターンB
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　どうだい、興奮したかい？」"
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　今すぐ犯したいって目をしてるぞ？\n　……いいぜ、いつでも来なよ\\H」"
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
      tx["tx1"] = "「さて……と。\n　前置きはお互いそろそろいいだろ。\n　後は……な？\\H」"
      tx["tx2"] = "「さ……来なよ\\H\n　もう#{myname}の準備は出来てるぜ？」"  #正常位トラップ
      tx["tx2"] = "「さ……来なよ\\H\n　お互い、獣になろうぜ……\\H」"  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「おいおい……そりゃないだろ。\n　まさか怖気づいたのかい？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「んはぁ……っ\\H\n　いいねっ……思い切りのいい男は大好きだ\\H」"
    end
  when "口挿入"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　なあ、#{target}……？\n　#{myname}が口で抜いてやろうか？」"
      tx["tx2"] = "「こう見えても割と自信あるんだぜ？\n　試してみる度胸はあるかい……？\n　#{giggle}」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「おいおい……そこは受けて立つとこだろ？\n　まさか怖気づいたのかい？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「んむっ……！\\H\n　……んふっ……ぷぁ……\\H」"
    end
  when "パイズリ"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　なあ、#{target}……？\n　胸でヤったことはあるかい？」"
      tx["tx2"] = "「ま、無理にとは言わないがね？\n　試してみる度胸はあるかい……？\n　#{giggle}」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「おいおい……そこは受けて立つとこだろ？\n　まさか怖気づいたのかい？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{pleasure_s}\n　いいね……思い切りのいい男は大好きだよ\\H」"
    end
  when "顔面騎乗"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　見えるかい、#{target}……？\n　#{myname}のココ、こんなになっちまった\\H」"
      tx["tx2"] = "「全部#{target}のせいだぜ？\n　#{target}に責任とってもらわないとな……？\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「おいおい……そりゃないだろ。\n　まさか怖気づいたのかい？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{pleasure_s}\n　しっかり舐めてくれよな……？」"
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
when "不成立"
  case $msg.at_type
  when "夢魔絶頂中"
    # エネミーが絶頂直後の衰弱中
    tx["tx1"] = "「あ……ん……っ……\\H\n　あはは……凄いな、#{target}……\\H」"
    #----------------------------
    tx["md"] = "28"
  when "主人公クライシス"
    # 主人公がクライシス中に話しかけた場合
    tx["tx1"] = "「ふふ……降参宣言かい？\n　おあいにく、#{myname}は悪魔なんでね……。\n　素直に聞いてやる訳にはいかないな……\\H」"
    #----------------------------
    tx["md"] = "29"
  when "夢魔クライシス"
    # 夢魔がクライシス中に話しかけた場合
    tx["tx1"] = "「な、なぁ……。\n　今はそういうのは良いからさ……。\n　もっとこう……判るだろ……？\\H」"
    #----------------------------
    tx["md"] = "29"
  when "夢魔恍惚中"
    # 夢魔が恍惚中の場合
    tx["tx1"] = "「ん……はぁ……っ……\\H」"
    #----------------------------
    tx["md"] = "30"
  when "夢魔暴走中"
    # 夢魔が暴走中の場合
    tx["tx1"] = "「ふ……#{giggle}\n　そこで大人しくしてなよ……？\\H」"
    #----------------------------
    tx["md"] = "30"
  when "試行過多"
    # ベッドイン中でない時に、同じ夢魔に同一戦闘で３回を越えて話しかけた場合
    tx["tx1"] = "「さ、お喋りはこのくらいにしておこうぜ。\n　何をするのか……もちろん判ってるよな？\\H」"
    #----------------------------
  end
  #格納
  ms.push(tx)




#▼前口上▼****************************************************************************************
#トークを仕掛けた場合、必ずムードと好感度が上がる。その部分の会話。
#これが表示された後、ランダムで要求その他の分岐に入る(入らない場合もある)
#会話に対して、好意的に返してくれる
when "前口上"
#==================================================================================================================
  case $mood.point
  # 好感度がとても高い場合
  when 50..100
    tx["tx1"] = "「#{giggle}\n　ちゃんと最後まで愛してくれよ？\\H」"
  # 好感度が高まっている場合
  when 21..49
    tx["tx1"] = "「ん～……。\n　ま、言われて悪い気はしないな♪」"
  # 好感度が低い場合
  else
    tx["tx1"] = "「ふふっ……。\n　相変わらず口が上手いな」"
  end
  #格納
  ms.push(tx)




#▼好意▼****************************************************************************************
#会話に対して、好意的に返してくれる(選択肢なし、ムードと好感度が自動で上がるボーナス会話)
when "好意"
  tx["tx1"] = "「さて、と……。\n　それじゃ、#{myname}は何をしたらいい？\n　#{target}の望みを言ってみなよ……\\H」"
  tx["tx1"] = "「ただ、な……。\n　そろそろ、言葉じゃなく、\n　#{target}の行動が見たいかな？\\H」" if $mood.point > 50 #前口上が好感度高い場合
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼主人公脱衣▼****************************************************************************************
#主人公が自ら脱ぐよう要求される
when "主人公脱衣"
  case $msg.talk_step
  when 1 #脱衣要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「さて、と……。\n　#{target}、服を脱いでもらえるかい？」"
    tx["tx2"] = "「それとも、#{myname}が脱がせてやろうか？\n　ふふふっ\\H」" 
    tx["tx2"] = "「#{myname}だけが裸なのは不公平だろ？\n　#{target}も潔く脱いでもらわないとな」"  if $msg.t_enemy.nude? #既に相手が脱いでいる
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「お、ほんとに#{myname}に脱がせて欲しいのかい？\n　うーん、どうするかな～？」"
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ははっ、相変わらず思い切りいいな♪\n　そういう所は好きだぜ\\H」"
    tx["tx1"] = "「ははっ、相変わらず思い切りいいな♪\n　それに……もう準備万端みたい、だな……\\H」" if $msg.t_enemy.state?(32) #夢魔がドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼夢魔脱衣▼****************************************************************************************
#夢魔が自ら脱ぐ
when "夢魔脱衣"
  case $msg.talk_step
  when 1 #夢魔脱衣
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「さて、と……。\n　そろそろ#{myname}も脱ごうかな\\H」"
    tx["tx2"] = "「ふふっ……。\n　ゆっくり見てていいぜ……\\H」" 
    tx["tx2"] = "「ふふっ……。\n　あまり待たせちゃ可哀想だしな♪」"  if $game_actors[101].nude? #既に主人公が脱いでいる
  when 77 #レジスト成功(脱衣を見るのを拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「なんだよ、\n　#{myname}の着替えは見慣れたって？」"
  when 2 #レジスト失敗(脱衣を見るのを受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ほぉれ、どうだい？\n　これでも、スタイルには気を遣ってるんだぜ」"
    tx["tx1"] = "「ほぉれ、どうだい？\n　……ふふっ、股間のそいつは正直だな\\H」" if $game_actors[101].state?(32) #主人公がドキっとした
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼吸精▼****************************************************************************************
#精気を吸わせるよう要求される
when "吸精・口","吸精・性器"
  case $msg.talk_step
  when 1 #吸精要求
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「さて……#{target}。\n　さっきの言葉が嘘じゃないってんなら、\n　#{myname}の言うことも聞いてくれるよな？」"
    tx["tx2"] = "「#{target}の精、味見させてくれよ\\H\n　なぁに、すぐ終わるさ……\\H」" 
    tx["tx2"] = "「#{target}の精、味見させてくでよ\\H\n　なぁに、感じてりゃすぐ終わるさ……\\H」"  if $msg.tag == "吸精・性器"
  when 77 #レジスト成功(脱衣を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「別に死にゃしないってのに……。\n　臆病なのはいただけないぜ？」"
  when 2 #レジスト失敗(脱衣を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「おっ……こりゃなかなか……\\H\n　ふふっ、ごちそうさん♪」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼愛撫▼****************************************************************************************
#愛撫を受け入れるよう要求する
when "愛撫・通常"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　なあ、#{myname}から攻めていいだろ？」"
    tx["tx2"] = "「#{target}は楽にしてりゃいいさ。\n　んじゃ行くぜ……\\H」" 
    tx["tx2"] = "「#{target}、待ちきれないんだろ？\n　#{myname}が手伝ってやるよ……\\H」"  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「なんだよ、\n　たまにはいいじゃないかよー」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.weakpoints
    #▼性癖込みの弱点を突かれた(既に看破・学習済み)
    when 20,10
      #▼弱点を突かれた(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "「ふふっ……そうそう\\H\n　人間は快楽に素直なのが一番だぜ？」" 
        tx["tx1"] = "「ほぉら、こうされたかったんだろ？\n　#{target}の身体は正直だぜ……？\\H」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「ふふっ……続けてやろうか？\n　そんな顔してるぜ、#{target}\\H」"  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "「おいおい、我慢するんじゃないよ。\n　こりゃお仕置きが必要かな……\\H」" 
        tx["tx1"] = "「いつまで耐えられるかな？\n　#{target}の弱い所は判ってんだぜ？」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「頑張るねぇ……\\H\n　ほれほれ、楽になっちまいなよ\\H」"  if $msg.chain_attack == true #同じ部位で連撃中
      end
    #▼その他
    else
      #▼弱点を発見された(SSを受けた)
      if $game_actors[101].critical == true
        tx["tx1"] = "「ふふっ、ココが弱いみたいだな？\n　もっとしてやろうか……？\\H」" 
        tx["tx1"] = "「ふふっ、どうしたんだい？\n　女みたいな声出してさ……\\H\n　そんなに今のが良かったのかい？」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「おっ……\\H\n　そうかそうか、ここだなぁ……？♪」"  if $msg.chain_attack == true #同じ部位で連撃中
      #▼通常
      else
        tx["tx1"] = "「ほぉら……どうだい？\n　もっと身体の力を抜きなよ……\\H」" 
        tx["tx1"] = "「#{target}は大人しくしてな？\n　今は#{myname}が攻める番だぜ……♪」"  if $game_variables[17] > 50 #パターンB
        tx["tx1"] = "「ふふ、結構我慢強いじゃないか。\n　その強がり、いつまで持つかな……？\\H」"  if $msg.chain_attack == true #同じ部位で連撃中
      end
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「……ふふ、どうだった？\n　よかったら、またしてやるよ\\H」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼性交▼****************************************************************************************
#性交を受け入れるよう要求する
when "愛撫・性交"
  case $msg.talk_step
  when 1 #愛撫開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「にしても……、\n　こんな状況で余裕だね、#{target}」"
    tx["tx2"] = "「その余裕、いつまで持つかな？\n　……なんてな\\H\n　さ、めいっぱい楽しもうぜ……\\H」" 
    tx["tx2"] = "「それとも、単なる強がりかな？\n　……なんてな\\H\n　さ、めいっぱい楽しもうぜ……\\H」"  if $game_actors[101].state?(35) #主人公が欲情状態
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「おいおい、そこは受けて立つところだろ？」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.t_enemy.initiative_level
    #▼MAX
    when 3
      tx["tx1"] = "「#{pleasure_l}\n　#{myname}の奥まで届いてる……\\H\n　今中で出されたら……#{pleasure_s}」" 
      tx["tx1"] = "「そら、こうすればよく見えるだろ？\n　#{myname}達が繋がってる所がさ……\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「くくっ……\\H\n　そうそう、いい表情するじゃないか\\H\n　もっと声出しても良いんだぜ？」"  if $game_actors[101].critical == true #レベル２⇒MAX上昇時
    #▼Lv2
    when 2
      tx["tx1"] = "「#{pleasure_l}\n　ふふっ、もっと激しくした方がいいかい？」" 
      tx["tx1"] = "「イくときはちゃんと言うんだぜ……？\\H\n　#{pleasure_l}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{giggle}\n　抵抗しないのかい？\n　それじゃ、遠慮なくイかせちまうよ……？\\H」"  if $game_actors[101].critical == true #レベル１⇒２上昇時
    #▼Lv1
    when 1
      tx["tx1"] = "「ふふっ、さっきより硬くなってる……\\H\n　#{target}、攻められる方が好きなのかい？」" 
      tx["tx1"] = "「イくときはちゃんと言うんだぜ……？\\H\n　#{pleasure_l}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{giggle}\n　さぁて、ここからは#{myname}のターンだな♪\n　たっぷりと絞り取ってやるよ……\\H」"  if $game_actors[101].critical == true #攻守交替
    #▼Deffence
    else
      tx["tx1"] = "「#{pleasure_s}\n　ふふ、#{myname}の具合はどうだい？\n　割と自信があるんだけどな\\H」" 
      tx["tx1"] = "「ふふっ……どうしたんだい？\\H\n　心配しなくても続けてやるよ\\H」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「くくっ……\\H\n　どうしたんだい？腰がお留守になってるぞ？」"  if $game_actors[101].critical == true #主人公レベル１～３時
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「……ふふ、どうだった？\n　よかったら、またしてやるよ\\H」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼奉仕▼****************************************************************************************
#自分に奉仕するよう要求する
when "奉仕"
  case $msg.talk_step
  when 1 #奉仕開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　#{target}、攻めてもらってもいいかい？」"
    tx["tx2"] = "「暫く何もしないでいるからさ。\n　#{myname}の身体、好きにしていいぜ\\H」" 
  when 77 #レジスト成功(愛撫を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「なんだよ、意地が悪いな。\n　そこは二つ返事で来るところだろ？」"
  when 2..76 #レジスト失敗(愛撫を受け入れた場合)
    #----------------------------------------------------------------------------------------------------------------------
    #▼SS時
    if $msg.t_enemy.critical == true
      tx["tx1"] = "「#{pleasure_s}\n　だ、ダメ、そこやばい……っ！\\H\n　#{pleasure_cr}」" 
      tx["tx1"] = "「#{pleasure_cr}\n　ま、待って、そこはっ……！\n　#{pleasure_l}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{pleasure_cr}\n　気持ちいいっ……もっと……っ\\H」"  if $msg.chain_attack == true #同じ部位を連撃中
    #▼通常
    else
      tx["tx1"] = "「#{pleasure_l}\n　いいよ、その調子で……#{pleasure_s}」" 
      tx["tx1"] = "「#{pleasure_l}\n　そこがいい感じ……#{pleasure_s}」"  if $game_variables[17] > 50 #パターンB
      tx["tx1"] = "「#{pleasure_s}\n　こら、そこばっかり攻めるんじゃない……\\H\n　#{pleasure_l}」"  if $msg.chain_attack == true #同じ部位を連撃中
    end
  when 78 #レジスト成功(愛撫を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ふふっ……気持ちよかったよ\\H」"
  when 79 #レジスト中断(奉仕しすぎて恍惚した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「ふふっ……気持ちよかったよ\\H\n　さてと、次はもちろん……。\n　#{myname}が#{target}を攻める番だよな？」"
  end
  #----------------------------------------------------------------------------------------------------------------------
  #格納
  ms.push(tx)



#▼視姦▼****************************************************************************************
#自慰を見ているように要求される
when "視姦"
  case $msg.talk_step
  when 1 #自慰開始
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「なあ、#{target}……？\n　そこで見ててくれるかい？」"
    tx["tx2"] = "「勘違いするなよ？\n　#{myname}がこんな姿見せるのは、\n　#{target}の前でだけだからな……\\H」" 
  when 77 #レジスト成功(視姦を拒んだ場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「おや、いいのかい？\n　後から見せてくれってのは無しだよ」"
  when 2..76 #レジスト失敗(視姦を了承した場合)
    #----------------------------------------------------------------------------------------------------------------------
    case $msg.at_parts
    #▼胸を弄る
    when "対象：胸","対象：口"
      tx["tx1"] = "「#{pleasure_l}\n　ふふっ、見られてると思うと興奮するな……\\H」" 
      tx["tx1"] = "「#{pleasure_l}\n　こんな感じで触ると……#{pleasure_s}」"  if $game_variables[17] > 50 #パターンB
    #▼アソコを弄る
    when "対象：アソコ","対象：尻"
      tx["tx1"] = "「#{pleasure_l}\n　ふふっ、見えやすいようにしてやろうか……\\H」" 
      tx["tx1"] = "「#{pleasure_l}\n　そら……もっと近くで見ても良いんだぜ？」"  if $game_variables[17] > 50 #パターンB
    #▼陰核を弄る
    when "対象：陰核","対象：アナル"
      tx["tx1"] = "「#{pleasure_l}\n　どうだい、こういうのも興奮するだろ？」" 
      tx["tx1"] = "「#{pleasure_l}\n　そら……もっと近くで見ても良いんだぜ？」"  if $game_variables[17] > 50 #パターンB
    end
    #----------------------------------------------------------------------------------------------------------------------
  when 78 #レジスト成功(視姦を中断した場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　どうだい、興奮したかい？」"
  when 79 #レジスト成功(視姦しすぎて恍惚となった場合)
    #----------------------------------------------------------------------------------------------------------------------
    tx["tx1"] = "「#{giggle}\n　今すぐ犯したいって目をしてるぞ？\n　……いいぜ、いつでも来なよ\\H」"
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
      tx["tx1"] = "「さて……と。\n　前置きはお互いそろそろいいだろ。\n　後は……な？\\H」"
      tx["tx2"] = "「さ……来なよ\\H\n　もう#{myname}の準備は出来てるぜ？」"  #正常位トラップ
      tx["tx2"] = "「さ……来なよ\\H\n　お互い、獣になろうぜ……\\H」"  if $game_variables[17] > 50 #後背位トラップ
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「おいおい……そりゃないだろ。\n　まさか怖気づいたのかい？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「んはぁ……っ\\H\n　いいねっ……思い切りのいい男は大好きだ\\H」"
    end
  when "口挿入"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　なあ、#{target}……？\n　#{myname}が口で抜いてやろうか？」"
      tx["tx2"] = "「こう見えても割と自信あるんだぜ？\n　試してみる度胸はあるかい……？\n　#{giggle}」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「おいおい……そこは受けて立つとこだろ？\n　まさか怖気づいたのかい？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「んむっ……！\\H\n　……んふっ……ぷぁ……\\H」"
    end
  when "パイズリ"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　なあ、#{target}……？\n　胸でヤったことはあるかい？」"
      tx["tx2"] = "「ま、無理にとは言わないがね？\n　試してみる度胸はあるかい……？\n　#{giggle}」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「おいおい……そこは受けて立つとこだろ？\n　まさか怖気づいたのかい？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{pleasure_s}\n　いいね……思い切りのいい男は大好きだよ\\H」"
    end
  when "顔面騎乗"
    case $msg.talk_step
    when 1 #ホールド開始
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{giggle}\n　見えるかい、#{target}……？\n　#{myname}のココ、こんなになっちまった\\H」"
      tx["tx2"] = "「全部#{target}のせいだぜ？\n　#{target}に責任とってもらわないとな……？\\H」" 
    when 77 #レジスト成功(交合を拒んだ場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「おいおい……そりゃないだろ。\n　まさか怖気づいたのかい？」"
    when 2 #レジスト失敗(交合を了承した場合)
      #----------------------------------------------------------------------------------------------------------------------
      tx["tx1"] = "「#{pleasure_s}\n　しっかり舐めてくれよな……？」"
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
