<?php

namespace App\Http\Livewire;

use App\Models\Place;
use App\Models\Game;
use App\Models\Team;
use Carbon\Carbon;
use DateTime;
use Livewire\Component;

class CrudGame extends Component{
    public $isOpen=false;
    public $results = array();

    public $dategame,$places,$date,$idprueba;
    public $timeinit="07:00";
    public $timegame=30;

    public function render(){
        $this->dategame=Carbon::now()->toDateString();
        $this->places=Place::all();
        return view('livewire.crud-game');
    }

    public function random_teams(){
        $teams=Team::where('type','Masculino')
                    ->where('status','Activo')->get(['name', 'id']);

        foreach($teams as $k){
            foreach($teams as $j){
                if($k==$j){ break; }
                $z = array($k->name, $j->name, $k->id, $j->id);
                //sort($z);
                if(!in_array($z,$this->results)){
                    $this->results[] = $z;
                }
            }
        }

        shuffle($this->results);
    }

    public function store2() {
        $i = 0; // Inicializar el contador
        $timeinit = Carbon::createFromFormat('H:i', $this->timeinit); // Convertir timeinit a objeto Carbon
        foreach ($this->results as $result) {
            $text2 = '1';

            if($i<4){
                $text2=$this->places[$i]->id;
            }else{
                $i=0;
                $text2=$this->places[$i]->id;
            }
            Game::create([
                'local' => $result[2],
                'visitor' => $result[3],
                'datetime' => Carbon::createFromFormat('Y-m-d H:i', $this->dategame . ' ' . $timeinit->format('H:i')),
                'place_id' => $text2, // Assuming 'idprueba' is the place ID
                'tournament_id' => '1', // Assuming 'tournament_id' is provided
                'status' => 'Programado',
            ]);
            $i++; // Incrementar el contador
            $timeinit->addMinutes($this->timegame); // Sumar timegame minutos a timeinit
            $this->timeinit = $timeinit->format('H:i'); // Convertir timeinit nuevamente a texto
        }

        $this->reset(['isOpen', 'results']);
        $this->emitTo('CrudGame', 'render');
        $this->emit('alert', 'Registro creado satisfactoriamente');
    }
}


