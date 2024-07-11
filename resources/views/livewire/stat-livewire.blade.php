<x-main>
    {{-- {{$equipos}} --}}
    @foreach ($games as $item)
        <div class="card-href mb-2">
            <div class="grid grid-cols-2">
                <div class="w-full">
                    <h5 class="titulo">{{$item->id.". ".\App\Models\Team::find($item->local)->name." vs ".\App\Models\Team::find($item->visitor)->name}}</h5>
                    <p>[<b>{{$item->tournament->name}}</b>] | {{date('Y-m-d',strtotime($item->datetime))}}  | {{date('H:i:s',strtotime($item->datetime))}} | {{$item->place->name}}</p>
                    <p>REGISTRO DE GOLES/TARJETAS</p>
                    <p><b>[ESTADO] | <span class="bg-indigo-400 p-1 text-white rounded-lg">{{$item->status}}</span></b></p>
                    @if($item->winner)
                    <p class="mt-2"><b>[GANADOR] <span class="bg-indigo-400 p-1 text-white rounded-lg">{{$item->winner}} | {{$item->glocal." - ".$item->gvisitante}}</span></b></p>
                    @endif
                </div>
                <div class="w-full flex">
                    @if(!$item->winner)
                    <div class="status">
                        <div class="w-36">
                            <div class="flex items-center my-2 ">
                                <label class="game-radio">
                                    <input type="radio" name="status" wire:click="status({{$item->id}},'Programado')" class="border-gray-300">
                                    Programado
                                </label>
                            </div>
                            <div class="flex items-center my-2">
                                <label class="game-radio">
                                    <input type="radio" name="status" wire:click="status({{$item->id}},'Iniciado')" class="border-gray-300">
                                    Iniciado
                                </label>
                            </div>
                            <div class="flex items-center my-2">
                                <label class="game-radio">
                                    <input type="radio" name="status" wire:click="status({{$item->id}},'Terminado')" class="border-gray-300">
                                    Terminado
                                </label>
                            </div>
                        </div>
                    </div>
                    <div class="stats grid m-1 w-full justify-items-center">
                        <button wire:click="create({{$item}},'Gol')" class="btn-purple w-10/12 my-1">GOL</button>
                        <button wire:click="create({{$item}},'Amarilla')" class="btn-yellow w-10/12 my-1">TARJETA AMARILLA</button>
                        <button wire:click="create({{$item}},'Roja')" class="btn-red w-10/12 my-1">TARJETA ROJA</button>
                        @if($isOpen)
                            @include('livewire.stat-create')
                        @endif
                    </div>
                    @else
                        <img class="w-full" src="img/finpartido.jpg" alt="">
                    @endif
                </div>
            </div>
        </div>
    @endforeach
    @if(!$games->count())
        No existe ningun registro conincidente
    @endif
</x-main>
