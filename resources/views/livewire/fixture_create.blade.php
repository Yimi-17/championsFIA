<div>
    <x-jet-dialog-modal wire:model="isOpen">
      <x-slot name="title">
        <h3>Registro nuevo partido</h3>
      </x-slot>
      <x-slot name="content">
        <div class="flex justify-between mx-2 mb-6">
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
              <x-jet-label value="Lugar de encuentro" class="font-bold"/>
              {!! Form::select('tournament_id',$tournaments,null,["wire:model.defer"=>"game.tournament_id",'placeholder'=>'Seleccione Opción','class'=>'border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full']) !!}
              <x-jet-input-error for="game.tournament_id"/>
            </div>
        </div>
        <div class="flex justify-between mx-2 mb-6">
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
                <x-jet-label value="Equipo 1" class="font-bold"/>
                {!! Form::select('local',$teams,null,["wire:model.defer"=>"game.local",'placeholder'=>'Seleccione Opción','class'=>'border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full']) !!}
                <x-jet-input-error for="game.local"/>
              </div>
              <div class="mb-2 md:mr-2 md:mb-0 w-full">
                <x-jet-label value="Equipo 2" class="font-bold"/>
                {!! Form::select('visitor',$teams,null,["wire:model.defer"=>"game.visitor",'placeholder'=>'Seleccione Opción','class'=>'border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full']) !!}
                <x-jet-input-error for="game.visitor"/>
              </div>
        </div>
        <div class="flex justify-between mx-2 mb-6">
          <div class="mb-2 md:mr-2 md:mb-0 w-full">
            <x-jet-label value="Fecha y hora del encuentro" class="font-bold"/>
            <x-jet-input type="datetime-local" wire:model.defer="game.datetime" class="w-full"/>
            <x-jet-input-error for="game.datetime"/>
          </div>
          <div class="mb-2 md:mr-2 md:mb-0 w-full">
            <x-jet-label value="Lugar de encuentro" class="font-bold"/>
            {!! Form::select('place_id',$places,null,["wire:model.defer"=>"game.place_id",'placeholder'=>'Seleccione Opción','class'=>'border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full']) !!}
            <x-jet-input-error for="game.place_id"/>
          </div>
        </div>
        <div class="flex justify-between mx-2 mb-6">
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
                <x-jet-label value="Estado del partdido" class="font-bold"/>
                <select wire:model.defer="game.status" class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full">
                    <option>Seleccione Opción</option>
                    <option value="Programado">Programado</option>
                    <option value="Iniciado">Iniciado</option>
                    <option value="Terminado">Terminado</option>
                </select>
                <x-jet-input-error for="game.status"/>
            </div>
        </div>
      </x-slot>
      <x-slot name="footer">
        <x-jet-secondary-button wire:click="$set('isOpen',false)" class="mx-2">Cancelar</x-jet-secondary-button>
        <!-- <x-jet-button wire:click="store" wire:loading.remove wire:target="store">Registrar</x-jet-button> -->
        <x-jet-button wire:click.prevent="store()" wire:loading.attr="disabled" wire:target="store" class="disabled:opacity-25">
          Registrar
        </x-jet-button>
        <!-- <span wire:loading wire:target="store">Cargando...</span> -->
      </x-slot>

    </x-jet-dialog-modal>
    @push('js')

    @endpush

</div>
