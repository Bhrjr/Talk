=begin
#######################################################################################################################
 ●『アルラウネ(緑)』ベース
 version 1.0.0
 ※使用前には必ず■クラス名■を入力して下さい
#######################################################################################################################
 ◆更新履歴
 2016,07/25     仮設定
#######################################################################################################################
=end

class MsgAlraune_A < MsgBase
  #--------------------------------------------------------------------------
  # ● 性格別の一人称・二人称設定
  #--------------------------------------------------------------------------
  def callname
#          @partner = "" if @pid == xx #特定性格の場合の特殊二人称
    #=====================================================================
    #★対味方戦闘時でない場合、対主人公の二人称を決めなおし、パートナーの呼称を決める
    unless $game_party.in_partybattle? or $msg.t_enemy.love > 0
      #▼会話対象が主人公の場合
      if $msg.t_target == $game_actors[101]
        @target = "お兄さん" #主人公への二人称
        #パートナーが存在する場合別途設定
        if $msg.t_partner != nil
          @partner = "彼女" #仲間への二人称
          @partner = "彼女" if $msg.age2 > 0 #年下仲間への二人称
          @partner = "お姉さん" if $msg.age2 < 0 #年上仲間への二人称
          @partner = "彼女" if @doppel_pt #同属仲間への二人称
        end
      #▼会話対象が主人公でない場合
      elsif $msg.t_target != $game_actors[101]
        @target = "あなた" #仲間への二人称
        @target = "あなた" if $msg.age > 0 #年下仲間への二人称
        @target = "お姉さん" if $msg.age < 0 #年上仲間への二人称
        @target = "あなた" if @doppel #同属仲間への二人称
        #会話対象がパートナーなので、相方は自動的に主人公となる
        @partner = "彼" #主人公への二人称
      end
      #▼連携が発生している場合、別途呼称を設定する
      if $game_switches[97] == true
        #会話の仕掛け手が自分で無い場合、呼称を設定する
        if $msg.coop_leader != $msg.t_enemy
          @cp_leader = "あなた" #相方への二人称
          @cp_leader = "あなた" if $msg.age3 > 0 #年下相方への二人称
          @cp_leader = "お姉さん" if $msg.age3 < 0 #年上相方への二人称
          @cp_leader = "あなた" if @doppel_cp #同属相方への二人称
        end
      end
    #=====================================================================
    #★対味方戦の場合、パートナー夢魔の呼称のみを決める
    else
      #▼会話対象が主人公の場合
      if $msg.t_target == $game_actors[101]
        #パートナーが存在する場合別途設定
        if $msg.t_partner != nil
          if @companion_pt == true#相手の事を知っている場合の二人称
            @partner = "#{$msg.short_name($msg.t_partner)}さん" #仲間への二人称
            @partner = "#{$msg.short_name($msg.t_partner)}ちゃん" if $msg.age2 > 0 #年下仲間への二人称
            @partner = "#{$msg.short_name($msg.t_partner)}さん" if $msg.age2 < 0 #年上仲間への二人称
            @partner = "#{$msg.short_name($msg.t_partner)}さん" if @doppel_pt #同属仲間への二人称
          else
            @partner = "彼女" #仲間への二人称
            @partner = "彼女" if $msg.age2 > 0 #年下仲間への二人称
            @partner = "お姉さん" if $msg.age2 < 0 #年上仲間への二人称
            @partner = "彼女" if @doppel_pt #同属仲間への二人称
          end
        end
      #▼会話対象が主人公でない場合
      elsif $msg.t_target != $game_actors[101]
        if @companion == true#相手の事を知っている場合の二人称
          @target = "#{$msg.short_name($msg.t_target)}さん" #仲間への二人称
          @target = "#{$msg.short_name($msg.t_target)}ちゃん" if $msg.age > 0 #年下仲間への二人称
          @target = "#{$msg.short_name($msg.t_target)}さん" if $msg.age < 0 #年上仲間への二人称
          @target = "#{$msg.short_name($msg.t_target)}さん" if @doppel #同属仲間への二人称
        else
          @target = "あなた" #仲間への二人称
          @target = "あなた" if $msg.age > 0 #年下仲間への二人称
          @target = "お姉さん" if $msg.age < 0 #年上仲間への二人称
          @target = "あなた" if @doppel #同属仲間への二人称
        end
      end
      #▼連携が発生している場合、別途呼称を設定する
      if $game_switches[97] == true
        #会話の仕掛け手が自分で無い場合、呼称を設定する
        if $msg.coop_leader != $msg.t_enemy
          if @companion_cp == true
            @cp_leader = "#{$msg.short_name($msg.coop_leader)}さん" #相方への二人称
            @cp_leader = "#{$msg.short_name($msg.coop_leader)}ちゃん" if $msg.age3 > 0 #年下相方への二人称
            @cp_leader = "#{$msg.short_name($msg.coop_leader)}さん" if $msg.age3 < 0 #年上相方への二人称
            @cp_leader = "#{$msg.short_name($msg.coop_leader)}さん" if @doppel_cp #同属相方への二人称
          else
            @cp_leader = "あなた" #相方への二人称
            @cp_leader = "あなた" if $msg.age3 > 0 #年下仲間への二人称
            @cp_leader = "お姉さん" if $msg.age3 < 0 #年上仲間への二人称
            @cp_leader = "あなた" if @doppel_cp #同属仲間への二人称
          end
        end
      end
    end
    #=====================================================================
    #●設定した呼称を変数に格納する
    $game_variables[48] = @myname
    $game_variables[49] = @target
    $game_variables[50] = @partner
  end
end
