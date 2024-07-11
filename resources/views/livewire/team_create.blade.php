<div>
    <x-jet-dialog-modal wire:model="isOpen">
      <x-slot name="title">
        <h3>Registro nuevo cliente</h3>
      </x-slot>
      <x-slot name="content">
        <form>
        <div class="flex justify-between mx-2 mb-6">
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
              <x-jet-label value="Nombre de torneo" class="font-bold"/>
              {!! Form::select('tournament_id',$tournaments,null,["wire:model.defer"=>"team.tournament_id",'placeholder'=>'Seleccione Opción','class'=>'border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full']) !!}
              <x-jet-input-error for="team.tournament_id"/>
            </div>
        </div>
        <div class="flex justify-between mx-2 mb-6">
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
              <x-jet-label value="Escuela profesional" class="font-bold"/>
              {!! Form::select('school_id',$schools,null,["wire:model.defer"=>"team.school_id",'placeholder'=>'Seleccione Opción','class'=>'border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full']) !!}
              <x-jet-input-error for="team.school_id"/>
            </div>
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
              <x-jet-label value="Ciclo" class="font-bold"/>
              {!! Form::select('cycle_id',$cycles,null,["wire:model.defer"=>"team.cycle_id",'placeholder'=>'Seleccione Opción','class'=>'border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full']) !!}
              <x-jet-input-error for="team.cycle_id"/>
            </div>
        </div>
        <div class="flex justify-between mx-2 mb-6">
          <div class="mb-2 md:mr-2 md:mb-0 w-full">
            <x-jet-label value="Nombre del equipo" class="font-bold"/>
            <x-jet-input type="text" wire:model.defer="team.name" class="w-full"/>
            <x-jet-input-error for="team.name"/>
          </div>
        </div>
        <div class="flex justify-between mx-2 mb-6">
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
                <x-jet-label value="Descripción" class="font-bold"/>
                <textarea wire:model.defer='team.description' class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full">
                </textarea>
              <x-jet-input-error for="team.description"/>
            </div>
        </div>
        <div class="flex justify-between mx-2 mb-6">
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
                <x-jet-label value="Tipo de equipo" class="font-bold"/>
                <select wire:model.defer="team.type" class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full">
                    <option>Seleccione Opción</option>
                    <option value="Masculino">Masculino</option>
                    <option value="Femenino">Femenino</option>
                </select>
                <x-jet-input-error for="team.type"/>
            </div>
            <div class="mb-2 md:mr-2 md:mb-0 w-full">
                <x-jet-label value="Color" class="font-bold"/>
                @if (!$team)
                    <?php
                        $colors=['red','orange','yellow','lime','green','cyan','sky','blue','indigo','violet','pink'];
                    ?>
                    <select wire:model.defer="team.color" class="border-gray-300 focus:border-indigo-300 focus:ring focus:ring-indigo-200 focus:ring-opacity-50 rounded-md shadow-sm w-full">
                        <option selected>Seleccione Opción</option>
                        @foreach ($colors as $item)
                            <option value="{{$item}}">{{$item}}</option>
                        @endforeach
                    </select>
                @else
                    <x-jet-input type="text" wire:model.defer="team.color" class="w-full"/>
                @endif
                <x-jet-input-error for="team.color"/>
            </div>


        </div>
        <div class="mx-2 mb-6">
            <div class="mb-2 md:mr-2 md:mb-0 w-full flex">
              <div class="form-check">
                <input wire:model.defer="team.status" value="Activo" class="form-check-input appearance-none rounded-full h-4 w-4 border border-gray-300 bg-white checked:bg-blue-600 checked:border-blue-600 focus:outline-none transition duration-200 mt-1 align-top bg-no-repeat bg-center bg-contain float-left mr-2 cursor-pointer" type="radio" name="flexRadioDefault" id="flexRadioDefault1" checked>
                <label class="form-check-label inline-block text-gray-800" for="flexRadioDefault1">
                  Activo
                </label>
              </div>
              <div class="form-check ml-5">
                <input wire:model.defer="team.status" value="Inactivo" class="form-check-input appearance-none rounded-full h-4 w-4 border border-gray-300 bg-white checked:bg-blue-600 checked:border-blue-600 focus:outline-none transition duration-200 mt-1 align-top bg-no-repeat bg-center bg-contain float-left mr-2 cursor-pointer" type="radio" name="flexRadioDefault" id="flexRadioDefault2">
                <label class="form-check-label inline-block text-gray-800" for="flexRadioDefault2">
                  Inactivo
                </label>
              </div>
            </div>
            <x-jet-input-error for="team.status"/>
        </div>
        </form>
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
