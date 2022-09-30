type = { $raw_type ->
        [catamaran] catamaran
        [sailing-yacht] sailing yacht
       *[other] boat.
    }

people = {
    $people_num ->
    [1] 1 person
    *[more] {$people_num} people
    }


double_cabins = {
    $double_cabins_num ->
    [1] 1 double cabin
    *[more] {$double_cabins_num} double cabins
    }

extra_beds = {
    $extra_beds_num ->
    [0] ""
    [1] and a saloon with 1 extra bed
    *[more] and a saloon with {$extra_beds_num} extra beds
    }

toilets = {
    $toilets_num ->
    [1] 1 toilet
    *[more] {$toilets_num} toilets
    }

shower = {
    $is_shower ->
    [1] with a shower
    *[0] ""
    }


main_description = {$cabin_num}-cabin {type} {$model} - {$name} was built in {$year}, and it is docked in {$marina}, {$country}.
capacity = {$name} can accomodate up to {people} in {double_cabins} {extra_beds}.
pillows = Pillows and blankets are included in the price.
hygiene = {type} {$name} offers {toilets} {shower}.
features = Boat equipment features {$equipments_first} and {$equipments_last}.
boasts = It also boasts {$audios_first} and {$audios_last}.
kitchen = The fully-equipped galley includes {$kitchen_equipments_first} and {$kitchen_equipments_last}.


paragraph1 = {main_description}
paragraph2 = {capacity} {pillows}
paragraph3 = {hygiene}
paragraph4 = {features} {boasts} {kitchen}
paragraph5 = This {type} is operated by the charter company {$charter}.
