<?php

namespace App\Http\Livewire;

use App\Models\Cycle;
use App\Models\School;
use App\Models\Team;
use App\Models\Tournament;
use Illuminate\Http\Request;
use Livewire\Component;

class CrudTeam extends Component{

    public $team,$search;
    public $isOpen=false;
    protected $listeners=['render','delete'=>'delete'];

    protected $rules=[
        'team.tournament_id'=>'required',
        'team.school_id'=>'required',
        'team.cycle_id'=>'required',
        'team.name'=>'required',
        'team.description'=>'required',
        'team.type'=>'required',
        'team.color'=>'required',
        'team.status'=>'required',
    ];

    public function render(){
        //$teams=Team::orderBy('id','desc')->paginate();
        $teams=Team::where('name','like','%'.$this->search.'%')
                    ->orderBy('id','desc')->paginate(10);
        $tournaments=Tournament::pluck('name','id');
        $schools=School::pluck('name','id');
        $cycles=Cycle::pluck('name','id');
        return view('livewire.crud-team',compact('teams','tournaments','schools','cycles'));
    }

    public function create(){
        $this->isOpen=true;
        $this->reset(['team']);
    }

    public function store(){
        $this->validate();
        if(!isset($this->team->id)){
            Team::create($this->team);
        }else{
            $this->team->save();
        }
        $this->reset(['isOpen','team']);
        $this->emitTo('CrudTeam','render');
        $this->emit('alert','Registro creado satisfactoriamente');
    }

    public function edit(Team $team){
        $this->team=$team;
        $this->isOpen=true;
    }

    public function delete(Team $team){
        $team->delete();
    }
}
