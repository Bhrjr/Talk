=begin
#######################################################################################################################
 ●『ヴェルミィーナ(BOSS)』ベース
 version 1.0.0
 ※使用前には必ず■クラス名■を入力して下さい
#######################################################################################################################
 ◆更新履歴
 20xx,xx/xx     何かしら追加を行ったらここに書いてね
#######################################################################################################################
=end

class MsgVermiena < MsgBase
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
        @target = "#{$msg.t_target.name}"
        #主人公への二人称は最初期から知っているため変更無し
        #パートナーが存在する場合別途設定
        if $msg.t_partner != nil
          @partner = "Love" #仲間への二人称
          @partner = "Love" if $msg.age2 > 0 #年下仲間への二人称
          @partner = "Love" if $msg.age2 < 0 #年上仲間への二人称
          @partner = "#{$msg.t_partner.name}" if $msg.t_partner.boss_graphic? #相手がユニークキャラクター
        end
      #▼会話対象が主人公でない場合
      elsif $msg.t_target != $game_actors[101]
        @target = "Love" #仲間への二人称
        @target = "Love" if $msg.age > 0 #年下仲間への二人称
        @target = "Love" if $msg.age < 0 #年上仲間への二人称
        @target = "#{$msg.t_target.name}" if $msg.t_target.boss_graphic? #相手がユニークキャラクター
        @partner = "#{$msg.t_partner.name}"
      end
      #▼連携が発生している場合、別途呼称を設定する
      if $game_switches[97] == true
        #会話の仕掛け手が自分で無い場合、呼称を設定する
        if $msg.coop_leader != $msg.t_enemy
          @cp_leader = "Love" #相方への二人称
          @cp_leader = "Love" if $msg.age3 > 0 #年下相方への二人称
          @cp_leader = "Love" if $msg.age3 < 0 #年上相方への二人称
          @cp_leader = "#{$msg.coop_leader.name}" if $msg.coop_leader.boss_graphic? #連携相手がユニークキャラクター
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
            @partner = "#{$msg.t_partner}" #仲間への二人称
            @partner = "#{$msg.t_partner}" if $msg.age2 > 0 #年下仲間への二人称
            @partner = "#{$msg.t_partner}" if $msg.age2 < 0 #年上仲間への二人称
          else
            @partner = "Love" #仲間への二人称
            @partner = "Love" if $msg.age2 > 0 #年下仲間への二人称
            @partner = "Love" if $msg.age2 < 0 #年上仲間への二人称
            @partner = "#{$msg.t_partner.name}" if $msg.t_partner.boss_graphic? #相手がユニークキャラクター
          end
        end
      #▼会話対象が主人公でない場合
      elsif $msg.t_target != $game_actors[101]
        if @companion == true#相手の事を知っている場合の二人称
          @target = "#{$msg.t_target}" #仲間への二人称
          @target = "#{$msg.t_target}" if $msg.age > 0 #年下仲間への二人称
          @target = "#{$msg.t_target}" if $msg.age < 0 #年上仲間への二人称
        else
          @target = "Love" #仲間への二人称
          @target = "Love" if $msg.age > 0 #年下仲間への二人称
          @target = "Love" if $msg.age < 0 #年上仲間への二人称
          @target = "#{$msg.t_target.name}" if $msg.t_target.boss_graphic? #相手がユニークキャラクター
        end
      end
      #▼連携が発生している場合、別途呼称を設定する
      if $game_switches[97] == true
        #会話の仕掛け手が自分で無い場合、呼称を設定する
        if $msg.coop_leader != $msg.t_enemy
          if @companion_cp == true
            @cp_leader = "#{$msg.coop_leader}" #相方への二人称
            @cp_leader = "#{$msg.coop_leader}" if $msg.age3 > 0 #年下相方への二人称
            @cp_leader = "#{$msg.coop_leader}" if $msg.age3 < 0 #年上相方への二人称
          else
            @cp_leader = "Love" #相方への二人称
            @cp_leader = "Love" if $msg.age3 > 0 #年下仲間への二人称
            @cp_leader = "Love" if $msg.age3 < 0 #年上仲間への二人称
            @cp_leader = "#{$msg.coop_leader.name}" if $msg.coop_leader.boss_graphic? #連携相手がユニークキャラクター
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

