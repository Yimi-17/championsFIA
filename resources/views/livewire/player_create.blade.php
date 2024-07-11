<div>
    <x-jet-dialog-modal wire:model="isOpen">
      <x-slot name="title">
        <h3>Registro nuevo player</h3>
      </x-slot>
      <x-slot name="content">
        <div class="flex justify-between mx-2 mb-6">
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
              <x-jet-label value="Equipo" class="font-bold"/>
              {!! Form::select('team_id',$teams,null,["wire:model.defer"=>"player.team_id",'placeholder'=>'Seleccione Opción','class'=>'border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full']) !!}
              <x-jet-input-error for="player.team_id"/>
            </div>
        </div>
        <div class="flex justify-between mx-2 mb-6">
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
                <x-jet-label value="Nombre player" class="font-bold"/>
                <x-jet-input type="text" wire:model.defer="player.name" class="w-full"/>
                <x-jet-input-error for="player.name"/>
            </div>
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
                <x-jet-label value="Apellido player" class="font-bold"/>
                <x-jet-input type="text" wire:model.defer="player.lastname" class="w-full"/>
                <x-jet-input-error for="player.lastname"/>
            </div>
        </div>
        <div class="flex justify-between mx-2 mb-6">
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
                <x-jet-label value="Fecha de nacimiento" class="font-bold"/>
                <x-jet-input type="date" wire:model.defer="player.birthdate" class="w-full"/>
                <x-jet-input-error for="player.birthdate"/>
            </div>
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
                <x-jet-label value="DNI" class="font-bold"/>
                <x-jet-input type="text" wire:model.defer="player.dni" class="w-full"/>
                <x-jet-input-error for="player.dni"/>
            </div>
        </div>
        <div class="flex justify-between mx-2 mb-6">
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
              <x-jet-label value="Tipo" class="font-bold"/>
              <select wire:model.defer="player.type" class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full">
                <option>Seleccione Opción</option>
                <option value="Varon">Varon</option>
                <option value="Dama">Dama</option>
               </select>
              <x-jet-input-error for="player.type"/>
            </div>
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
              <x-jet-label value="Número" class="font-bold"/>
              <x-jet-input type="text" wire:model.defer="player.number" class="w-full"/>
              <x-jet-input-error for="player.number"/>
            </div>
        </div>
        <div class="flex justify-between mx-2 mb-6">
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
                <x-jet-label value="Observaciones" class="font-bold"/>
                <textarea wire:model.defer='player.observations' class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full">
                </textarea>
              <x-jet-input-error for="player.observations"/>
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
