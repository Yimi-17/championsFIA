<?php

namespace App\Http\Livewire;

use App\Models\Game;
use App\Models\Place;
use App\Models\Team;
use App\Models\Tournament;
use Livewire\Component;

class CrudFixture extends Component{

    public $isOpen=false;
    public $teams,$places,$game;
    protected $listeners=['render','delete'=>'delete'];

    protected $rules=[
        'game.local'=>'required',
        'game.visitor'=>'required',
        'game.datetime'=>'required',
        'game.status'=>'required',
        'game.place_id'=>'required',
        'game.tournament_id'=>'required'
    ];


    public function render(){
        $games=Game::paginate();
        $this->teams=Team::pluck('name','id');
        $this->places=Place::pluck('name','id');
        $tournaments=Tournament::pluck('name','id');
        return view('livewire.crud-fixture',compact('games','tournaments'));
    }

    public function create(){
        $this->isOpen=true;

    }

    public function store(){
        $this->validate();
        if(!isset($this->game->id)){
            Game::create($this->game);
        }else{
           $this->game->save();
        }
        $this->reset(['isOpen','game']);
        $this->emitTo('CrudFixture','render');
        $this->emit('alert','Registro creado satisfactoriamente');
    }

    public function edit(Game $game){
        $this->game=$game;
        $this->isOpen=true;
    }

    public function delete(Game $game){
        $game->delete();
    }

}
