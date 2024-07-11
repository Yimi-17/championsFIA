<?php

namespace App\Http\Livewire\Web;

use App\Models\Position;
use App\Models\Stat;
use Livewire\Component;

class PositionsLivewire extends Component{
    public function render(){
        $positions=Position::select()->orderBy('pts', 'desc')->get();
        return view('livewire.web.positions-livewire',compact('positions'));
    }
}
