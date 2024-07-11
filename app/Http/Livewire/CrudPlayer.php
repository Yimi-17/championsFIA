<?php

namespace App\Http\Livewire;

use App\Models\Player;
use App\Models\Team;
use Livewire\Component;
use Livewire\WithPagination;//para hacer la paginacion dinamica

class CrudPlayer extends Component{

    use WithPagination;
    public $isOpen=false;
    public $search,$player;
    public $direction='asc';
    public $sort='id';
    protected $listeners=['render','delete'=>'delete'];

    protected $rules=[
        'player.team_id'=>'required',
        'player.name'=>'required',
        'player.lastname'=>'required',
        'player.birthdate'=>'required',
        'player.dni'=>'required',
        'player.type'=>'required',
        'player.number'=>'required',
        'player.observations'=>'required',
    ];

    public function store(){
        $this->validate();
        if(!isset($this->player->id)){
            Player::create($this->player);
        }else{
            $this->player->save();
        }
        $this->reset(['isOpen','player']);
        $this->emitTo('CrudPlayer','render');
        $this->emit('alert','Registro creado satisfactoriamente');
    }

    public function render(){
        $players=Player::where('name','like','%'.$this->search.'%')
                        ->orderBy($this->sort,$this->direction)
                        ->paginate(10);
        $teams=Team::pluck('name','id');
        return view('livewire.crud-player',compact('players','teams'));
    }

    public function order($sort){
        if($this->sort==$sort){
            if($this->direction=='asc'){
                $this->direction='desc';
            }else{
                $this->direction='asc';
            }
        }else{
            $this->sort=$sort;
            $this->direction='asc';
        }

    }

    public function create(){
        $this->isOpen=true;
        $this->reset(['player']);
    }

    public function delete(Player $player){
        $player->delete();
    }



}
