/datum/emote/silicon
	mob_type_allowed_typecache = list(/mob/living/silicon)
	emote_type = EMOTE_AUDIBLE

/datum/emote/sound/silicon
	mob_type_allowed_typecache = list(/mob/living/silicon)
	emote_type = EMOTE_AUDIBLE

/datum/emote/silicon/boop
	key = "boop"
	key_third_person = "boops"
	message = "boops."

/datum/emote/sound/silicon/buzz
	key = "buzzborg"
	key_third_person = "buzzes"
	message = "buzzes."
	message_param = "buzzes at %t."
	sound = 'sound/machines/buzz-sigh.ogg'

/datum/emote/sound/silicon/buzz2
	key = "buzz2borg"
	message = "buzzes twice."
	sound = 'sound/machines/buzz-two.ogg'

/datum/emote/sound/silicon/chime
	key = "chime"
	key_third_person = "chimes"
	message = "chimes."
	sound = 'sound/machines/chime.ogg'

/datum/emote/sound/silicon/honk
	key = "honk"
	key_third_person = "honks"
	message = "honks."
	vary = TRUE
	sound = 'sound/items/bikehorn.ogg'

/datum/emote/sound/silicon/ping
	key = "pingborg"
	key_third_person = "pings"
	message = "pings."
	message_param = "pings at %t."
	sound = 'sound/machines/ping.ogg'

/datum/emote/sound/silicon/chime
	key = "chime"
	key_third_person = "chimes"
	message = "chimes."
	sound = 'sound/machines/chime.ogg'

/datum/emote/sound/silicon/sad
	key = "sad"
	message = "plays a sad trombone..."
	sound = 'sound/misc/sadtrombone.ogg'

/datum/emote/sound/silicon/warn
	key = "warn"
	message = "blares an alarm!"
	sound = 'sound/machines/warning-buzzer.ogg'
	
/datum/emote/sound/silicon/borgno
	key = "noborg"
	key_third_person = "emits a negative boop."
	message = "emits a negative boop."
	sound = 'sound/machines/borg_no.ogg'

/datum/emote/sound/silicon/borgyes
	key = "yesborg"
	key_third_person = "emits a positive boop."
	message = "emits a positive boop."
	sound = 'sound/machines/borg_yes.ogg'

/datum/emote/sound/silicon/borgsadping
	key = "sadpingborg"
	key_third_person = "pings sadly."
	message = "pings sadly."
	sound = 'sound/machines/sadping1.ogg'

/datum/emote/sound/silicon/borgpassiveping
	key = "passivepingborg"
	key_third_person = "pings."
	message = "pings."
	sound = 'sound/machines/passiveping1.ogg'
	
/datum/emote/sound/silicon/borgwhine
	key = "swhineborg"
	key_third_person = "emits a whiny ping!"
	message = "emits a whiny ping!"
	sound = 'sound/machines/borgwhine.ogg'

/datum/emote/sound/silicon/borgscream
	key = "screamborg"
	key_third_person = "emits a strange static!"
	message = "emits a strange static!"
	sound = 'sound/machines/borgscream.ogg'
	playsound(user, path, 50, 1, -1)
	
/datum/emote/sound/silicon/borgscream2
	key = "screamborg2"
	key_third_person = "emits a strange static!"
	message = "emits a strange static!"
	sound = 'sound/machines/borgscream2.ogg'
	playsound(user, path, 50, 1, -1)

/mob/living/silicon/robot/proc/powerwarn()
	set category = "Robot Commands"
	set name = "Power Warning"

	if(stat == CONSCIOUS)
		if(!cell || !cell.charge)
			visible_message("The power warning light on <span class='name'>[src]</span> flashes urgently.",\
							"You announce you are operating in low power mode.")
			playsound(loc, 'sound/machines/buzz-two.ogg', 50, 0)
		else
			to_chat(src, "<span class='warning'>You can only use this emote when you're out of charge.</span>")
