<div>
    <x-jet-dialog-modal wire:model="isOpen">
      <x-slot name="title">
        <h3>Registro nuevo player</h3>
      </x-slot>
      <x-slot name="content">
        <div class="flex justify-between mx-2 mb-6">
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
                <input wire:model.defer="game_id" type="hidden" value="{{$game_id}}">
                <x-jet-label value="Equipo" class="font-bold"/>
                <select wire:model.lazy="team_id" class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full">
                    <option>Seleccione Opción</option>
                    @foreach ($teams as $item)
                    <option value="{{$item->id}}">{{$item->name}}</option>
                    @endforeach
                </select>
                <x-jet-input-error for="team_id"/>
            </div>
        </div>
        <div class="flex justify-between mx-2 mb-6">
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
                <x-jet-label value="Datos del Player" class="font-bold"/>
                <select wire:model.defer="player" class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full">
                    <option>Seleccione Opción</option>
                    @foreach ($players as $item)
                    <option value="{{'['.$item->number.'] '.$item->name.', '.$item->lastname}}">{{'['.$item->number.'] '.$item->name.', '.$item->lastname}}</option>
                    @endforeach
                </select>
                <x-jet-input-error for="player"/>
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
