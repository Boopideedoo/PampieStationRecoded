
//BeanieStation13 Redux

/obj/item/clothing/head/beanie //Default is white, this is meant to be seen
	name = "white beanie"
	desc = "A stylish beanie. The perfect winter accessory for those with a keen fashion sense, and those who just can't handle a cold breeze on their heads."
	icon_state = "beanie" //Default white

/obj/item/clothing/head/beanie/black
	name = "black beanie"
	icon_state = "beanie"
	color = "#4A4A4B" //Grey but it looks black

/obj/item/clothing/head/beanie/red
	name = "red beanie"
	icon_state = "beanie"
	color = "#D91414" //Red

/obj/item/clothing/head/beanie/green
	name = "green beanie"
	icon_state = "beanie"
	color = "#5C9E54" //Green

/obj/item/clothing/head/beanie/darkblue
	name = "dark blue beanie"
	icon_state = "beanie"
	color = "#1E85BC" //Blue

/obj/item/clothing/head/beanie/purple
	name = "purple beanie"
	icon_state = "beanie"
	color = "#9557C5" //purple

/obj/item/clothing/head/beanie/yellow
	name = "yellow beanie"
	icon_state = "beanie"
	color = "#E0C14F" //Yellow

/obj/item/clothing/head/beanie/orange
	name = "orange beanie"
	icon_state = "beanie"
	color = "#C67A4B" //orange

/obj/item/clothing/head/beanie/cyan
	name = "cyan beanie"
	icon_state = "beanie"
	color = "#54A3CE" //Cyan (Or close to it)

//Striped Beanies have unique sprites

/obj/item/clothing/head/beanie/christmas
	name = "christmas beanie"
	icon_state = "beaniechristmas"

/obj/item/clothing/head/beanie/striped
	name = "striped beanie"
	icon_state = "beaniestriped"

/obj/item/clothing/head/beanie/stripedred
	name = "red striped beanie"
	icon_state = "beaniestripedred"

/obj/item/clothing/head/beanie/stripedblue
	name = "blue striped beanie"
	icon_state = "beaniestripedblue"

/obj/item/clothing/head/beanie/stripedgreen
	name = "green striped beanie"
	icon_state = "beaniestripedgreen"

/obj/item/clothing/head/beanie/durathread
	name = "durathread beanie"
	desc = "A beanie made from durathread, its resilient fibres provide some protection to the wearer."
	icon_state = "beaniedurathread"
	armor = list(MELEE = 25, BULLET = 10, LASER = 20,ENERGY = 10, BOMB = 30, BIO = 15, RAD = 20, FIRE = 100, ACID = 50)

/obj/item/clothing/head/beanie/waldo
	name = "red striped bobble hat"
	desc = "If you're going on a worldwide hike, you'll need some cold protection."
	icon_state = "waldo_hat"
	item_state = "waldo_hat"

//No dog fashion sprites yet :(  poor Ian can't be dope like the rest of us yet

/obj/item/clothing/head/bonnet
	name = "bonnet"
	desc = "Kind of Cartoony, if you think about it."
	icon_state = "bonnet_poly"
	item_state = "bonnet_poly"

/obj/item/clothing/head/bonnet/pink
	name = "pink bonnet"
	icon_state = "bonnet_pink"
	item_state = "bonnet_pink"

/obj/item/clothing/head/bonnet/blue
	name = "blue bonnet"
	icon_state = "bonnet_blue"
	item_state = "bonnet_blue"

/obj/item/clothing/head/bonnet/poly
	name = "polychromic bonnet"
	icon_state = "bonnet_poly"
	item_state = "bonnet_poly"
	var/list/poly_colors = list("#3ee72e")

/obj/item/clothing/head/bonnet/poly/ComponentInitialize()
	. = ..()
	AddElement(/datum/element/polychromic, poly_colors, 1)
