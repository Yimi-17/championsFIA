<div class="py-5">
    <h1>{{$idprueba}}</h1>
    <div class="max-w-7xl mx-auto sm:px-6 lg:px-8">
        <div class="bg-white overflow-hidden shadow-xl sm:rounded-lg p-7">
        <div class="flex justify-between">
            <div class="mt-4">
                <button wire:click="random_teams()" class="bg-blue-500 hover:bg-blue-700 text-white font-bold py-2 px-4 rounded-lg">
                    Sortear
                </button>
                <button wire:click="store2()" class="bg-red-500 hover:bg-red-700 text-white font-bold py-2 px-4 rounded-lg">
                    Registrar
                </button>
            </div>
            <div class="flex mb-2">
                <div>
                    <label class="block text-sm font-medium text-gray-900 dark:text-gray-300">Fecha</label>
                    <input type="date" name="" id="" wire:model="dategame" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                </div>

                <div>
                    <label class="block text-sm font-medium text-gray-900 dark:text-gray-300">Hora inicio</label>
                    <input type="time" name="timeinit" wire:model.lazy="timeinit" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                </div>
                <div>
                    <label class="block text-sm font-medium text-gray-900 dark:text-gray-300">Duración (min)</label>
                    <input type="number" name="timegame" wire:model.lazy="timegame" class="w-24 bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 dark:bg-gray-700 dark:border-gray-600 dark:placeholder-gray-400 dark:text-white dark:focus:ring-blue-500 dark:focus:border-blue-500">
                </div>
            </div>
        </div>
        <div class="relative overflow-x-auto shadow-md sm:rounded-lg">
        <table class="w-full text-sm text-left text-gray-500 dark:text-gray-400">
            <thead class="text-xs text-white uppercase bg-blue-500 dark:bg-gray-700 dark:text-gray-400">
              <tr>
                <th class="px-2 py-4 text-left">Orden</th>
                <th class="px-2 py-4 text-left">Equipo Local</th>
                <th class="px-2 py-4 text-left">-</th>
                <th class="px-2 py-4 text-left">Equipo Visita</th>
                <th class="px-2 py-4 text-left">Hora</th>
                <th class="px-2 py-4 text-left">Lugar</th>
              </tr>
            </thead>
            <tbody>
            <?php
                $horainicio="2022-01-01"." ".$timeinit;
                $time=strtotime($horainicio);
                //echo "<b>Hora de Inicio: </b>".date('H:i:s a', $time);
                $i=0;
            ?>
            @foreach ($results as $item)
              <tr class="bg-white border-b transition duration-300 ease-in-out hover:bg-gray-200">
                <td class="px-6 py-4">{{ $loop->iteration }}</td>
                <td>{{ $item[0] }}</td>
                <td>vs</td>
                <td>{{ $item[1] }}</td>
                <td>
                    <input type="text" value="<?=date('H:i a',$time);?>" class="w-24 text-sm border border-gray-300 rounded-lg">
                </td>
                <td><?php
                    if($i<4){
                    ?>
                        <input type="text" value="<?=$places[$i]->name;?>" class="w-40 text-sm border border-gray-300 rounded-lg">
                    <?php
                    }else{
                        $i=0;
                    ?>
                        <input type="text" value="<?=$places[$i]->name;?>" class="w-40 text-sm border border-gray-300 rounded-lg">
                    <?php
                    }
                    ?>
                </td>
              </tr>
              <?php
                $i++;
                $time=$time+($timegame*60);
              ?>
            @endforeach
            </tbody>
        </table>
        </div>
        </div>
    </div>
    @push('js')

    @endpush
</div>

