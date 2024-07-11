<?php

namespace App\Http\Livewire;

use App\Models\Game;
use App\Models\Player;
use App\Models\Position;
use App\Models\Stat;
use App\Models\Team;
use Carbon\Carbon;
use Livewire\Component;

class StatLivewire extends Component{

    public $isOpen=false;
    public $team_id,$game_id,$player,$type,$local,$visitor;
    public $ganador;
    public $equipos;

    public function render(){
        $games=Game::orderBy('id','asc')->get();
        $teams=Team::where('id',$this->local)->orWhere('id',$this->visitor)->get();
        $players=Player::where('team_id',$this->team_id)->get();

        return view('livewire.stat-livewire',compact('games','players','teams'));
    }

    //cambia el estado del partido [Programado,Iniciado,Terminado]
    public function status($idgame,$value){
        $game=Game::find($idgame);
        $game->status=$value;
        //$this->equipos=(json_encode($game));

        if($value=='Terminado'){
            $teams=Stat::where('game_id',$idgame)->select('team_id')->groupBy('team_id')->distinct()->get();
            //$this->equipos=(json_encode($teams));
            $positionE1=Position::where('team_id',$game->local)->first();
            $positionE2=Position::where('team_id',$game->visitor)->first();
            //Si no hay registro de goles => empate si goles (Else)
            if(!$teams->isEmpty()){
                $countGoals=[0,0];
                $idTeam=[];
                //$this->equipos=(json_encode($teams));
                /*
                foreach ($teams as $key=>$team) {
                    $goals=Stat::where('game_id',$idgame)->where('team_id',$team->team_id)->where('type','Gol')->get();
                    $idTeam[$key]=$team->team_id;
                    $countGoals[$key]=$goals->count();
                }*/
                $gLocal=Stat::where('game_id',$idgame)->where('team_id',$game->local)->where('type','Gol')->count();
                $gVisitor=Stat::where('game_id',$idgame)->where('team_id',$game->visitor)->where('type','Gol')->count();
                //$this->equipos=json_encode($idTeam);
                $game->glocal=$gLocal;
                $game->gvisitante=$gVisitor;
                //falta ID del team

                //$this->equipos=($positionE1->pj);
                //$this->equipos=(json_encode($positionE1));
                if(!$positionE1){
                    //Para guardar position equipo 1
                    $positionE1=new Position();
                    $positionE1->team_id=$game->local;
                    //$positionE1->team_id=$idTeam[0];
                    $positionE1->pj=1;
                    $positionE1->gf=$gLocal;
                    $positionE1->gc=$gVisitor;
                    $positionE1->dg=$gLocal-$gVisitor;
                    //Empate misma cantidad de goles
                    if($gLocal==$gVisitor){
                        $positionE1->pg=0;
                        $positionE1->pe=1;
                        $positionE1->pp=0;
                        $positionE1->pts=1;
                    }else{
                        if($gLocal>$gVisitor){
                            $positionE1->pg=1;
                            $positionE1->pe=0;
                            $positionE1->pp=0;
                            $positionE1->pts=3;
                        }else{
                            $positionE1->pg=0;
                            $positionE1->pe=0;
                            $positionE1->pp=1;
                            $positionE1->pts=0;
                        }
                    }
                }else{
                    //Para actualizar position equipo 1
                    $positionE1->pj=$positionE1->pj+1;
                    $positionE1->gf=$positionE1->gf+$gLocal;
                    $positionE1->gc=$positionE1->gc+$gVisitor;
                    $positionE1->dg=$positionE1->dg+($gLocal-$gVisitor);
                    if($gLocal==$gVisitor){
                        $positionE1->pg=$positionE1->pg+0;
                        $positionE1->pe=$positionE1->pe+1;
                        $positionE1->pp=$positionE1->pp+0;
                        $positionE1->pts=$positionE1->pts+1;
                    }else{
                        if($gLocal>$gVisitor){
                            $positionE1->pg=$positionE1->pg+1;
                            $positionE1->pp=$positionE1->pp+0;
                            $positionE1->pts=$positionE1->pts+3;
                        }else{
                            $positionE1->pg=$positionE1->pg+0;
                            $positionE1->pp=$positionE1->pp+1;
                            $positionE1->pts=$positionE1->pts+0;
                        }
                    }
                }

                if(!$positionE2){
                    //Para guardar position equipo 1
                    $positionE2=new Position();
                    $positionE2->team_id=$game->visitor;
                    //$positionE2->team_id=$idTeam[1];
                    $positionE2->pj=1;
                    $positionE2->gf=$gVisitor;
                    $positionE2->gc=$gLocal;
                    $positionE2->dg=$gVisitor-$gLocal;
                    if($gLocal==$gVisitor){
                        $positionE2->pg=0;
                        $positionE2->pe=1;
                        $positionE2->pp=0;
                        $positionE2->pts=1;
                    }else{
                        if($gVisitor>$gLocal){
                            $positionE2->pg=1;
                            $positionE2->pe=0;
                            $positionE2->pp=0;
                            $positionE2->pts=3;
                        }else{
                            $positionE2->pg=0;
                            $positionE2->pe=0;
                            $positionE2->pp=1;
                            $positionE2->pts=0;
                        }
                    }
                }else{
                    //Para actualizar position equipo 2
                    $positionE2->pj=$positionE2->pj+1;
                    $positionE2->gf=$positionE2->gf+$gVisitor;
                    $positionE2->gc=$positionE2->gc+$gLocal;
                    $positionE2->dg=$positionE2->dg+($gVisitor-$gLocal);
                    if($gLocal==$gVisitor){
                        $positionE2->pg=$positionE2->pg+0;
                        $positionE2->pe=$positionE2->pe+1;
                        $positionE2->pp=$positionE2->pp+0;
                        $positionE2->pts=$positionE2->pts+1;
                    }else{
                        if($gVisitor>$gLocal){
                            $positionE2->pg=$positionE2->pg+1;
                            //$positionE2->pe=$positionE2->pe+0;
                            $positionE2->pp=$positionE2->pp+0;
                            $positionE2->pts=$positionE2->pts+3;
                        }else{
                            $positionE2->pg=$positionE2->pg+0;
                            //$positionE2->pe=$positionE2->pe+0;
                            $positionE2->pp=$positionE2->pp+1;
                            $positionE2->pts=$positionE2->pts+0;
                        }
                    }
                }

                //Empate misma cantidad de goles
                if($gLocal==$gVisitor){
                    $game->winner="Empate";
                    //$this->ganador="Empate";
                //Ganador por diferencia de goles
                }else{
                    if($gLocal>$gVisitor){
                        $team=Team::find($game->local);
                        //$this->ganador=$team->name." [".$countGoals[0]."]";
                        $game->winner=$team->name;
                    }else{
                        $team=Team::find($game->visitor);
                        //$this->ganador=$team->name." [".$countGoals[1]."]";
                        $game->winner=$team->name;
                    }
                }
            //Empate 0 a 0 sin goles
            }else{
                $game->glocal=0;
                $game->gvisitante=0;
                $game->winner="Empate";
                if(!$positionE1){
                    $positionE1=new Position();
                    $positionE1->team_id=$game->local;
                    $positionE1->pj=1;
                    $positionE1->pg=0;
                    $positionE1->pe=1;
                    $positionE1->pp=0;
                    $positionE1->gf=0;
                    $positionE1->gc=0;
                    $positionE1->dg=0;
                    $positionE1->dg=0;
                    $positionE1->pts=1;
                }else{
                    $positionE1->pj=$positionE1->pj+1;
                    $positionE1->pe=$positionE1->pe+1;
                    $positionE1->pts=$positionE1->pts+1;
                }
                if(!$positionE2){
                    $positionE2=new Position();
                    $positionE2->team_id=$game->visitor;
                    $positionE2->pj=1;
                    $positionE2->pg=0;
                    $positionE2->pe=1;
                    $positionE2->pp=0;
                    $positionE2->gf=0;
                    $positionE2->gc=0;
                    $positionE2->dg=0;
                    $positionE2->pts=1;
                }else{
                    $positionE2->pj=$positionE2->pj+1;
                    $positionE2->pe=$positionE2->pe+1;
                    $positionE2->pts=$positionE2->pts+1;
                }


            }
            //Actualizando posición
            //$this->equipos=json_encode($positionE2);
            $positionE1->save();
            $positionE2->save();
            $this->emit('alert','Partido Terminado');
        }
        $game->save();
    }

    public function create(Game $game,$type){
        $this->game_id=$game->id;
        $this->visitor=$game->visitor;
        $this->local=$game->local;
        $this->type=$type;
        $this->isOpen=true;
        //return view('livewire.stat-create');
    }

    public function store(){
        $this->validate([
            'player'=>'required'
        ]);
        $mytime = Carbon::now();
        Stat::create([
            'player'=>$this->player,
            'type'=>$this->type,
            'datetime'=>$mytime->toDateTimeString(),
            'team_id'=>$this->team_id,
            'game_id'=>$this->game_id
        ]);
        $this->reset(['isOpen']);
        $this->emit('alert','Registro creado satisfactoriamente');
    }


}
