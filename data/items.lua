return {
	-- Admin Items 
	['mdt'] = {
		label = "MDT", 
		description = 'Nur ausgewählte Überlebende können es entsperren',
		types = 'LSPD', 
		stack = true, 
		close = true,
		allowArmed = true, 
	},

	-- Lootboxen 
	['treasurechest'] = {
		label = 'Schatzkiste', 
		description = 'Eine Schatzkiste, welchen Schatz sie wohl beinhaltet?',
		types = 'Lootbox', 
		stack = true, 
		close = false, 
		allowArmed = true,
	},

	['bronze_egg'] = {
		label = 'Bronzenes Ei', 
		description = 'Ein Ei gemacht aus Bronze, was da drin ist?',
		types = 'Lootbox',
		stack = true, 
		close = false, 
		allowArmed = true, 
	},

	['silver_egg'] = {
		label = 'Silbernes Ei', 
		description = 'Ein Ei gemacht aus Silber, was da drin ist?',
		types = 'Lootbox',
		stack = true, 
		close = false,
		allowArmed = true, 
	}, 

	['golden_egg'] = {
		label = 'Goldenes Ei', 
		description = 'Ein Ei gemacht aus Gold, was da drin ist?',
		types = 'Lootbox', 
		stack = true, 
		close = false,
		allowArmed = true, 
	},

	['gift'] = {
		label = 'Geschenk', 
		description = 'Ein Geschenk der 1. Variation', 
		types = 'Lootbox', 
		stack = true, 
		close = false,
		allowArmed = true, 
	}, 

	['gift2'] = {
		label = 'Geschenk', 
		description = 'Ein Geschenk der 2. Variation', 
		types = 'Lootbox', 
		stack = true, 
		close = false, 
		allowArmed = true, 
	},

	['gift3'] = {
		label = 'Geschenk', 
		description = 'Ein Geschenk der 3. Variation', 
		types = 'Lootbox', 
		stack = true, 
		close = false,
		allowArmed = true, 
	},

	['gift4'] = {
		label = 'Geschenk', 
		description = 'Ein Geschenk der 4. Variation', 
		types = 'Lootbox', 
		stack = true,
		close = false,
		allowArmed = true, 
	},

	-- ID CARDS

	['civil_identity'] = {
		label = 'Personalausweis', 
		description = 'Ein Personalausweis. Enthält sensible Daten', 
		types = 'Ausweis',
		weight = 10, 
		stack = false, 
		close = true, 
		allowArmed = true, 
	},

	['driver_license'] = {
		label = 'Führerschein', 
		description = 'Ein Führerschein. Enthält sensible Daten', 
		types = 'Ausweis', 
		weight = 10, 
		stack = false, 
		close = true, 
		allowArmed = true, 
	},

	['firearms'] = {
		label = 'Waffenschein', 
		description = 'Ein Waffenschein. Enthält sensible Daten',
		types = 'Ausweis', 
		weight= 10, 
		stack = false, 
		close = true,
		allowArmed = true, 
	}, 

	['pd_identity'] = {
		label = 'LSPD Ausweis', 
		description = 'Ein offizielles Ausweisdokument des Police Departments', 
		types = 'Ausweis', 
		weight = 10, 
		stack = false, 
		close = true,
		allowArmed = true, 
	}, 

	['ems_identity'] = {
		label = 'LSMD Ausweis', 
		description = 'Ein offizielles Ausweisdokument des Medic Departments', 
		types = 'Ausweis', 
		weight = 10, 
		stack = false, 
		close = true, 
		allowArmed = true,
	},

	['ls_custom'] = {
		label = 'LSC Ausweis', 
		description = 'Ausweis für autorisierte LS Customs Mechaniker', 
		weight = 10,
		stack = false, 
		close = true, 
		allowArmed = true, 
	}, 

	-- Währung 
	['money'] = {
		label = 'Bargeld', 
		description = 'Leider in der aktuellen Zeit wenig Wert', 
		types = 'Währung',
		stack = true,
		close = false,
	},

	['casino_chips'] = {
		label = 'Casinochips', 
		description = 'Ein Casinochip, kann im Casino verwendet werden', 
		types = 'Währung',
		stack = true,
		close = false,
	},

	['black_money'] = {
		label = 'Schwarzgeld', 
		description = 'Geld welches man nicht Nachverfolgen kann',
		types = 'Währung',
		stack = true,
		close = false,
	},

	-- Trinken
	['water'] = {
		label = 'Wasser', 
		description = 'Sauberes Wasser, es schmeckt bestimmt lecker', 
		types = 'Getränk', 
		weight = 500, 
		stack = true, 
		close = true,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = {
				model = 'vw_prop_casino_water_bottle_01a',
				pos = vec3(0.008, 0.0, -0.05),
				rot = vec3(0.0, 0.0, -40.0)
			},
			usetime = 4500,
			cancel = true,
		},
	},

	['beer'] = {
		label = 'Bier', 
		description = 'Ein kühles Bier, perfekt für heiße Tage',
		types = 'Getränk', 
		weight = 500, 
		stack = true, 
		close = true, 
		client = {
			status = { thirst = 150000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = {
				model = 'prop_amb_beer_bottle',
				pos = vec3(0.04, -0.14, 0.1),
				rot = vec3(240.0, -60.0, 0.0)
			},
			usetime = 5000,
			cancel = true,
			notification = 'Du hast ein erfrischendes Bier getrunken'
		},
	},

	['vodka'] = {
		label = 'Wodka',
		weight = 500,
		stack = true,
		close = true,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = {
				model = 'prop_vodka_bottle',
				pos = vec3(0.025, -0.02, -0.25),
				rot = vec3(5.0, 5.0, -180.5)
			},
			usetime = 5000,
			cancel = true,
			notification = 'Du hast einen kräftigen Schluck Wodka genommen'
		},
		description = 'Ein starker Wodka, nichts für schwache Nerven.',
		types = 'Getränk',
	},

	['whiskey'] = {
		label = 'Whiskey',
		weight = 500,
		stack = true,
		close = true,
		client = {
			status = { thirst = 200000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = {
				model = 'prop_whiskey_bottle',
				pos = vec3(0.025, -0.02, -0.15),
				rot = vec3(5.0, 5.0, -180.5)
			},
			usetime = 5000,
			cancel = true,
			notification = 'Du hast einen kräftigen Schluck Whiskey genommen'
		},
		description = 'Ein edler Whiskey, perfekt für besondere Anlässe.',
		types = 'Getränk',
	},

	['ejunk'] = {
		label = 'Junk Energy',
		weight = 300,
		stack = true,
		close = true,
		description = "Zu viel davon kann dich umbringen.. glaub ich..",
		client = {
			status = { thirst = 160000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = {
				model = 'sf_prop_sf_can_01a',
				pos = vec3(0.025, 0.010, 0.05),
				rot = vec3(5.0, 5.0, -180.5)
			},
			cancel = true,
			usetime = 5000,
		},
		types = 'Getränk',
	},

	['ecola'] = {
		label = 'eCola',
		weight = 300,
		stack = true,
		close = true,
		description = "Ey, da ist Cola in meinem Kokain",
		client = {
			status = { thirst = 160000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = {
				model = 'prop_ecola_can',
				pos = vec3(0.025, 0.010, 0.05),
				rot = vec3(5.0, 5.0, -180.5)
			},
			cancel = true,
			usetime = 5000,
		},
		types = 'Getränk',
	},

	['sprunk'] = {
		label = 'Sprunk',
		weight = 300,
		stack = true,
		close = true,
		description = "Schmeckt wie schlechtes Wasser",
		client = {
			status = { thirst = 160000 },
			anim = { dict = 'mp_player_intdrink', clip = 'loop_bottle' },
			prop = {
				model = 'ng_proc_sodacan_01b',
				pos = vec3(0.025, 0.010, -0.025),
				rot = vec3(5.0, 5.0, 180.5)
			},
			cancel = true,
			usetime = 5000,
		},
		types = 'Getränk',
	},

	-- ESSEN 

	['can_food'] = {
		label = 'Dosenfutter',
		description = 'Besser als nichts oder..?', 
		types = 'Essen', 
		weight = 350, 
		stack = true, 
		close = true,
		client = {
			status = { hunger = 450000 },
			anim = { dict = 'anim@scripted@island@special_peds@pavel@hs4_pavel_ig5_caviar_p1', clip = 'base_idle' },
			prop = {
				model = 'scully_pho',
				pos = vec3(-0.01, -0.01, 0.01),
				rot = vec3(1.0, 5.0, -182.5)
			},
			usetime = 4500,
			cancel = true,
		},
	},

	['apple'] = {
		label = "Apfel",
		description = 'Rot und saftig',
		types = 'Essen',
		weight = 100,
		stack = true,
		client = {
			status = { hunger = 50000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = { model = `sf_prop_sf_apple_01a`, pos = vec3(0.01, 0.01, 0.01), rot = vec3(0.0, 0.0, 0) },
			usetime = 1500,
			cancel = true,
			notification = 'Ein knackiger Apfel, der hat gut geschmeckt..',
		},
	},

	['banana'] = {
		label = 'Banane',
		description = "Es ist immer schwer eine Banane 'normal' zu essen",
		types = 'Essen',
		weight = 150,
		stack = true,
		close = true,
		client = {
			status = { hunger = 90000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'v_res_tre_banana',
				pos = vec3(0.05, -0.02, 0.01),
				rot = vec3(270.0, 90.0, 0.0)
			},
			usetime = 3000,
		},
	},


	['bread'] = {
		label = "Brot",
		description = 'Dein trockenes und liebloses Brot. Schmeckt langweilig..',
		types = 'Essen',
		weight = 200,
		stack = true,
		close = true,
		client = {
			status = { hunger = 200000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = { model = `prop_sandwich_01`, pos = vec3(0.01, 0.01, 0.01), rot = vec3(0.0, 0.0, -1.5) },
			usetime = 3500,
			cancel = true,
		},
	},

	['sandwich'] = {
		label = "Sandwich",
		description = 'Ein leckeres Sandwich, perfekt für unterwegs.',
		types = 'Essen',
		weight = 300,
		stack = true,
		close = true,
		client = {
			status = { hunger = 300000 },
			anim = { dict = 'mp_player_inteat@burger', clip = 'mp_player_int_eat_burger_fp' },
			prop = {
				model = 'prop_sandwich_01',
				pos = vec3(0.05, -0.02, -0.03),
				rot = vec3(150.0, 340.0, 170.0)
			},
			usetime = 3500,
			cancel = true,
		},
	},
	
	-- ROHMATERIAL
	['copper_ore'] = {
		label = 'Kupfererz', 
		description = 'Kupfererz, Rohmaterial für die Gewinnung von Kupfer', 
		types = 'Rohmaterial', 
		weight = 150, 
		stack = true, 
		close = false, 
	},

	['iron_ore'] = {
		label = 'Eisenerz', 
		description = 'Eisenerz, Rohmaterial aus dem Eisen gewonnen wird', 
		types = 'Rohmaterial',
		weight = 200, 
		stack = true, 
		close = false, 
	},

	['gold_ore'] = {
		label = 'Golderz',
		description = 'Golderz, Rohmaterial aus dem Gold gewonnen wird', 
		types = 'Rohmaterial',
		weight = 150, 
		stack = true, 
		close = false,
	},

	['aluminium_ore'] = {
		label = 'Alumiuniumerz', 
		description = 'Alumiuniumerz, Rohmaterial aus dem Aluminium gewonnen werden kann', 
		types = 'Rohmaterial', 
		weight = 100, 
		stack = true, 
		close = false, 
	}, 

	['oil'] = {
		label = 'Öl',
		description = 'Ein Rohmaterial zur Herstellung von Benzin', 
		types = 'Rohmaterial', 
		weight = 15, 
		stack = true,
		close = false,
	},

	-- Wertvoll

	['diamond'] = {
		label = 'Diamant', 
		description = 'Ein wertvoller Diamant, perfekt für Schmuck', 
		types = 'Wertvoll', 
		weight = 50, 
		stack = true, 
		close = false,
	},

	['ruby'] = {
		label = 'Rubin', 
		description = 'Ein wertvoller Rubin, perfekt für Schmuck', 
		types = 'Wertvoll', 
		weight = 50, 
		stack = true, 
		close = false,
	},

	['sapphire'] = {
		label = 'Saphir', 
		description = 'Ein wertvoller Saphir, perfekt für Schmuck', 
		types = 'Wertvoll', 
		weight = 50, 
		stack = true, 
		close = false,
	},

	['emerald'] = {
		label = 'Smaragd', 
		description = 'Ein wertvoller Smaragd, perfekt für Schmuck', 
		types = 'Wertvoll', 
		weight = 50, 
		stack = true, 
		close = false,
	},

	['iron'] = {
		label = 'Eisen', 
		description = 'Pures Eisen. Kann verschieden eingesetzt werden', 
		types = 'Wertvoll', 
		weight = 100, 
		stack = true, 
		close = false,
	},


	['gold'] = {
		label = 'Gold', 
		description = 'Pures Gold. Heute sehr viel Wert', 
		types = 'Wertvoll', 
		weight = 120, 
		stack = true, 
		close = false, 
	},

	['gold_nuggets'] = {
		label = 'Goldnuggets', 
		description = 'Eine Menge davon kann zu einem Barren geschmolzen werden', 
		types = 'Wertvoll', 
		weight = 12, 
		stack = true, 
		close = false,
	},

	['gold_chain'] = {
		label = 'Goldkette', 
		description = 'Eine Goldkette, sehr wertvoll', 
		types = 'Wertvoll', 
		weight = 50, 
		stack = true, 
		close = false,
	},

	['gold_bracelet'] = {
		label = 'Goldarmband', 
		description = 'Ein Goldarmband, sehr wertvoll', 
		types = 'Wertvoll', 
		weight = 50, 
		stack = true, 
		close = false,
	},

	['silver_bracelet'] = {
		label = 'Silberarmband', 
		description = 'Ein Silberarmband, sehr wertvoll', 
		types = 'Wertvoll', 
		weight = 50, 
		stack = true, 
		close = false,
	},

	['silver_chain'] = {
		label = 'Silberkette', 
		description = 'Eine Silberkette, sehr wertvoll', 
		types = 'Wertvoll', 
		weight = 50, 
		stack = true, 
		close = false,
	},

	['diamond_ring'] = {
		label = 'Diamantring', 
		description = 'Ein Goldring, sehr wertvoll', 
		types = 'Wertvoll', 
		weight = 50, 
		stack = true, 
		close = false,
	},

	['emerald_ring'] = {
		label = 'Smaragdring', 
		description = 'Ein Smaragd Ring, sehr wertvoll',
		types = 'Wertvoll',
		weight = 120,
		stack = true,
		close = false,
	},

	['ruby_ring'] = {
		label = 'Rubinring', 
		description = 'Ein Rubin Ring, sehr wertvoll',
		types = 'Wertvoll',
		weight = 120,
		stack = true,
		close = false,
	},

	['sapphire_ring'] = {
		label = 'Saphirring', 
		description = 'Ein Saphir Ring, sehr wertvoll',
		types = 'Wertvoll',
		weight = 120,
		stack = true,
		close = false,
	}, 

	['gold_watch'] = {
		label = 'Goldene Uhr', 
		description = 'Eine goldene Uhr, sehr wertvoll',
		types = 'Wertvoll',
		weight = 115,
		stack = true,
		close = false,
	},

	['gold_coin'] = {
		label = 'Goldmünze', 
		description = 'Eine Goldmünze, sehr wertvoll',
		types = 'Wertvoll',
		weight = 25,
		stack = true,
		close = false,
	},

	['old_watch'] = {
		label = 'Alte Uhr', 
		description = 'Eine alte Uhr, sehr wertvoll',
		types = 'Wertvoll',
		weight = 115,
		stack = true,
		close = false,
	},

	-- MATERIALIEN

	['coal'] = {
		label = 'Holzkohle',
		description = 'Holzkohle die zum Herstellen von Ausrüstung verwendet werden kann', 
		types = 'Material', 
		weight = 5,
		stack = true, 
		close = false
	},

	['gasoline'] = {
		label = 'Benzin',
		description = 'Benzin zum Antreiben von Generatoren', 
		types = 'Material', 
		weight = 1000,
		stack = true,
		close = false,
	},

	['empty_bottle'] = {
		label = 'Plastikflasche', 
		description = 'Eine leere Flasche, kann mit Wasser befüllt werden', 
		types = 'Material', 
		weight = 20, 
		stack = true, 
		close = false, 
	}, 

	['wood'] = {
		label = 'Holzstamm', 
		description = 'Ein Stamm Holz, kann verarbeitet werden', 
		types = 'Material',
		weight = 100,
		stack = true,
		close = false,
	},

	['wood_plank'] = {
		label = 'Holzbrett', 
		description = 'Holzbretter mit denen du Dinge bauen kannst', 
		types = 'Material', 
		weight = 50, 
		stack = true, 
		close = false, 
	},

	['sand'] = {
		label = 'Sandhaufen', 
		description = 'Hast du etwa eine Sandburg kaputt gemacht?', 
		types = 'Material', 
		weight = 30, 
		stack = true, 
		close = false, 
	},

	['glass'] = {
		label = 'Glaspanel', 
		description = 'Glaspanel wie sie in Fenstern verwendet werden', 
		types = 'Material', 
		weight = 50, 
		stack = true,
		close = false, 
	},

	['metalscrap'] = {
		label = 'Metalschrott', 
		description = 'Ein Haufen alter Metallmüll',
		types = 'Material', 
		weight = 100, 
		stack = true, 
		close = false,
	},

	['gunpowder'] = {
		label = 'Schwarzpulver', 
		description = 'Mit großer Masse kann großes Unglück folgen', 
		types = 'Material', 
		weight = 10,
		stack = true, 
		close = false, 
	},

	['gunparts'] = {
		label = 'Waffenteile', 
		description = 'Teile die zum Bau von Schuss und Schlagwaffen verwendet werden', 
		types = 'Material', 
		weight = 75, 
		stack = true, 
		close = false,
	},

	['plastic'] = {
		label = 'Plastik', 
		description = 'Material welches Verarbeitet werden kann', 
		types = 'Material', 
		weight = 50, 
		stack = true,
		close = false,
	},

	['rubber'] = {
		label = 'Gummi', 
		description = 'Sehr dehnbares Material, wird auch für Reifen verwendet', 
		types = 'Material', 
		weight = 30, 
		stack = true, 
		close = false,
	},

	['fabric'] = {
		label = 'Stoff', 
		description = 'Feiner Stoff kann für verschiedene Ausrüstung verwendet werden', 
		types = 'Material', 
		weight = 20, 
		stack = true,
		close = false,
	},

	['steel'] = {
		label = 'Stahl', 
		description = 'Ein stabiles Metall zum Bauen von Gebäuden', 
		types = 'Material', 
		weight = 150, 
		stack = true, 
		close = false
	},

	['battery'] = {
		label = 'Batterie',
		description = 'Ein Akkku. Eventuell hat der noch ein bisschen Saft',
		types = 'Material', 
		weight = 50, 
		stack = true, 
		close = false, 
	},

	['stone'] = {
		label = 'Stein', 
		description = 'Es ist einfach nur ein Stein..', 
		types = 'Material', 
		weight = 200, 
		stack = true, 
		close = false,
	}, 

	['copper'] = {
		label = 'Kupfer', 
		description = 'Kupfer. Perfekt für Kable und andere elektrische Basteleien',
		types = 'Wertvoll', 
		weight = 100, 
		stack = true, 
		close = false,
	},

	['aluminium'] = {
		label = 'Aluminium', 
		description = 'Ein Metall welches für Waffen verwendet werden könnte', 
		types = 'Material', 
		weight = 80, 
		stack = true, 
		close = false, 
	},

	['raw_meat'] = { 
		label = 'Rohes Fleisch', 
		description = 'Rohes Fleisch welches Gebraten werden kann', 
		types = 'Material',
		weight = 75, 
		stack = true, 
		close = false, 
	},

	['meat'] = {
		label = 'Gebratenes Fleisch', 
		description = 'Gebratenes Fleisch, kann verarbeitet Werden', 
		types = 'Material', 
		weight = 50, 
		stack = true, 
		close = false, 
	},

	['fertilizer'] = {
		label = 'Dünger', 
		description = 'Dünger der deine Pflanzen wachsen lässt', 
		types = 'Material', 
		weight = 150, 
		stack = true, 
		close = false,
	},

	['tomato'] = {
		label = 'Tomaten', 
		description = 'Rote, saftige Tomaten', 
		types = 'Material', 
		weight = 50, 
		stack = true, 
		close = false, 
	},

	['wheat'] = {
		label = 'Weizen', 
		description = 'Kann benutzt werden um ein schönes Brot zu backen', 
		types = 'Material', 
		weight = 10,
		stack =  true, 
		close = false,
	},

	['salad'] = {
		label = 'Salat', 
		description = 'Grüner, frischer Salat', 
		types = 'Material', 
		weight = 50, 
		stack = true, 
		close = false
	}, 

	-- Drogen

	['bud_granddaddy'] = {
		label = 'Weedblüte: Granddaddy Purple',
		description = 'Eine Blüte von Granddaddy Purple, sehr potent',
		types = 'Drogen',
		weight = 1,
		stack = true,
		close = false
	},

	['bud_whitewidow'] = {
		label = 'Weedblüte: White Widow',
		description = 'Eine Blüte von White Widow, sehr potent',
		types = 'Drogen',
		weight = 1,
		stack = true,
		close = false
	},

	['bud_ogkush'] = {
		label = 'Weedblüte: OG Kush',
		description = 'Eine Blüte von OG Kush, sehr potent',
		types = 'Drogen',
		weight = 1,
		stack = true,
		close = false
	},

	['bud_ckush'] = {
		label = 'Weedblüte: Critical Kush',
		description = 'Eine Blüte von Critical Kush, sehr potent',
		types = 'Drogen',
		weight = 1,
		stack = true,
		close = false
	}, 

	-- Joints 

	['joint_granddaddy'] = {
		label = 'Joint: Granddaddy Purple',
		description = 'Ein Joint mit Granddaddy Purple, sehr potent',
		types = 'Drogen',
		weight = 1,
		stack = true,
		close = false
	},

	['joint_whitewidow'] = {
		label = 'Joint: White Widow',
		description = 'Ein Joint mit White Widow, sehr potent',
		types = 'Drogen',
		weight = 1,
		stack = true,
		close = false
	},

	['joint_ogkush'] = {
		label = 'Joint: OG Kush',
		description = 'Ein Joint mit OG Kush, sehr potent',
		types = 'Drogen',
		weight = 1,
		stack = true,
		close = false
	},

	['joint_ckush'] = {
		label = 'Joint: Critical Kush',
		description = 'Ein Joint mit Critical Kush, sehr potent',
		types = 'Drogen',
		weight = 1,
		stack = true,
		close = false
	},

	-- Baggies 

	['baggie_granddaddy'] = {
		label = 'Baggie: Granddaddy Purple',
		description = 'Ein Baggie mit Granddaddy Purple, sehr potent',
		types = 'Drogen',
		weight = 1,
		stack = true,
		close = false
	},

	['baggie_whitewidow'] = {
		label = 'Baggie: White Widow',
		description = 'Ein Baggie mit White Widow, sehr potent',
		types = 'Drogen',
		weight = 1,
		stack = true,
		close = false
	},

	['baggie_ogkush'] = {
		label = 'Baggie: OG Kush',
		description = 'Ein Baggie mit OG Kush, sehr potent',
		types = 'Drogen',
		weight = 1,
		stack = true,
		close = false
	},

	['baggie_ckush'] = {
		label = 'Baggie: Critical Kush',
		description = 'Ein Baggie mit Critical Kush, sehr potent',
		types = 'Drogen',
		weight = 1,
		stack = true,
		close = false
	},

	-- SEEDS 
	['seeds_ogkush'] = {
		label = 'Samen: OG Kush', 
		description = 'Zum Anbau von OG Kush Pflanzen',
		types = 'Samen',
		weight = 25,
		stack = true,
		close = true,
	},

	['seeds_ckush'] = {
		label = 'Samen: Critical Kush',
		description = 'Zum Anbau von Critical Kush Pflanzen',
		types = 'Samen',
		weight = 25,
		stack = true,
		close = true,
	}, 

	['seeds_whitewidow'] = {
		label = 'Samen: White Widow', 
		description = 'Zum Anbau von White Widow Pflanzen',
		types = 'Samen',
		weight = 25,
		stack = true,
		close = true,
	},

	['seeds_granddaddy'] = {
		label = 'Samen: Granddaddy Purple', 
		description = 'Zum Anbau von Granddaddy Purple Pflanzen',
		types = 'Samen',
		weight = 25,
		stack = true,
		close = true,
	},

	['seeds_tomato'] = {
		label = 'Samen: Tomaten', 
		description = 'Damit kannst du rote, saftige Tomaten pflanzen', 
		types = 'Samen', 
		weight = 25, 
		stack = true, 
		close = true, 
	}, 

	['seeds_wheat'] = {
		label = 'Samen: Weizen', 
		description = 'Damit kannst du Weizen für Brot anfplanzen', 
		types = 'Samen', 
		weight = 100, 
		stack = true, 
		close = true,
	},

	['seeds_salad'] = {
		label = 'Samen: Salat', 
		description = 'Geeignet um grünen Salat zu pflanzen', 
		types = 'Samen', 
		weight = 25, 
		stack = true, 
		close = true,
	}, 

	-- TOOLS 

	['hacking_tablet'] = {
		label = 'Hacking Tablet',
		description = 'Ein Tablet mit dem du alles hacken kannst',
		types = 'Werkzeug',
		weight = 500,
		stack = true,
		close = false,
	},

	['phone'] = {
		label = 'Smartphone', 
		description = 'Ein klassisches Smartphone', 
		types = 'Werkzeug', 
		weight = 12, 
		stack = true, 
		close = true,
		buttons = {
			{
				label = 'Flugmodus aktivieren',
				action = function(slot)
					print('Aktuell nicht verfügbar')
				end
			},
			{
				label = 'Flugmodus deaktivieren',
				action = function(slot)
					print('Aktuell nicht verfügbar')
				end
			},
		},
	},

	['purple_phone'] = {
		label = 'Lila Smartphone', 
		description = 'Ein Lila Smartphone kann nicht mehr als das klassische', 
		types = 'Werkzeug', 
		weight = 12, 
		stack = true, 
		close = true,
		buttons = {
			{
				label = 'Flugmodus aktivieren',
				action = function(slot)
					print('Aktuell nicht verfügbar')
				end
			},
			{
				label = 'Flugmodus deaktivieren',
				action = function(slot)
					print('Aktuell nicht verfügbar')
				end
			},
		},
	},

	['red_phone'] = {
		label = 'Rotes Smartphone', 
		description = 'Ein Rotes Smartphone kann nicht mehr als das klassische', 
		types = 'Werkzeug', 
		weight = 12, 
		stack = true, 
		close = true,
		buttons = {
			{
				label = 'Flugmodus aktivieren',
				action = function(slot)
					print('Aktuell nicht verfügbar')
				end
			},
			{
				label = 'Flugmodus deaktivieren',
				action = function(slot)
					print('Aktuell nicht verfügbar')
				end
			},
		},
	},

	['blue_phone'] = {
		label = 'Blaues Smartphone', 
		description = 'Ein Blaues Smartphone kann nicht mehr als das klassische', 
		types = 'Werkzeug', 
		weight = 12, 
		stack = true, 
		close = true,
		buttons = {
			{
				label = 'Flugmodus aktivieren',
				action = function(slot)
					print('Aktuell nicht verfügbar')
				end
			},
			{
				label = 'Flugmodus deaktivieren',
				action = function(slot)
					print('Aktuell nicht verfügbar')
				end
			},
		},
	},

	['green_phone'] = {
		label = 'Grünes Smartphone', 
		description = 'Ein Grünes Smartphone kann nicht mehr als das klassische', 
		types = 'Werkzeug', 
		weight = 12, 
		stack = true, 
		close = true,
		buttons = {
			{
				label = 'Flugmodus aktivieren',
				action = function(slot)
					print('Aktuell nicht verfügbar')
				end
			},
			{
				label = 'Flugmodus deaktivieren',
				action = function(slot)
					print('Aktuell nicht verfügbar')
				end
			},
		},
	},

	['black_phone'] = {
		label = 'Schwarzes Smartphone', 
		description = 'Ein Schwarzes Smartphone kann nicht mehr als das klassische', 
		types = 'Werkzeug', 
		weight = 12, 
		stack = true, 
		close = true,
		buttons = {
			{
				label = 'Flugmodus aktivieren',
				action = function(slot)
					print('Aktuell nicht verfügbar')
				end
			},
			{
				label = 'Flugmodus deaktivieren',
				action = function(slot)
					print('Aktuell nicht verfügbar')
				end
			},
		},
	},

	['watering_can'] = {
		label = 'Gießkanne', 
		description = 'Perfekt zum Gießen deiner Pflanzen', 
		types = 'Werkzeug', 
		weight = 750, 
		stack = true, 
		close = false, 
	}, 

	['pickaxe'] = {
		label = 'Spitzhacke', 
		description = 'Ein Werkzeug zum Steinabbau!',
		types = 'Werkzeug', 
		weight = 1000, 
		stack = true, 
		close = false,
	}, 

	['shovel'] = {
		label = 'Schaufel', 
		description = 'Ein Werkzeug zum Buddeln von Löchern', 
		types = 'Werkzeug', 
		weight = 800, 
		stack = true, 
		close = false,
	}, 

	['drill'] = {
		label = 'Bohrer', 
		description = 'Ein Bohrer, noch eine möglichkeit zum Löcher machen', 
		types = 'Werkzeug', 
		weight = 700, 
		stack = true, 
		close = false, 
	},

	['sickle'] = {
		label = 'Sichel', 
		description = 'Ein Werkzeug perfekt für die Ernte geeignet', 
		types = 'Werkzeug', 
		weight = 300, 
		stack = true, 
		close = false,
	},

	['radio'] = {
		label = 'Funkgerät', 
		description = 'Geeignet für Kommunikation über weite Strecken',
		types = 'Werkzeug', 
		weight = 200, 
		stack = true, 
		close = false, 
	},

	['jammer'] = {
		label = 'Störsender', 
		description = 'Ein Störsender zum stören von Funk Frequenzen', 
		types = 'Werkzeug',
		weight = 5000, 
		stack = true, 
		close = true,
	},

	['tracker'] = {
		label = 'GPS', 
		description = 'Zum orten des Standortes von Camp Mitgliedern', 
		types = 'Werkzeug', 
		weight = 100, 
		stack = true,
		close = false, 
	},

	['handcuffs'] = {
		label = 'Handschellen', 
		description = 'Damit machst du das Ziel handlungsunfähig', 
		types = 'Werkzeug', 
		weight = 50, 
		consume = 0,
		stack = true, 
		close = true,
		client = {
			usetime = 1500, 
			cancel = true,
		},
	},

	['ziptie'] = {
		label = 'Kabelbinder', 
		description = 'Damit läst du dem Opfer ein wenig Freiraum', 
		types = 'Werkzeug', 
		weight = 50, 
		consume = 0, 
		stack = true, 
		close = true, 
		client = {
			usetime = 1500, 
			cancel = true,
		}
	},

	['binoculars'] = {
		label = 'Fernglas', 
		description = 'Zum Spähen ein wunderbares Werkzeug, erlaubt das Erhöhen der eigenen Sichtweite', 
		types = 'Werkzeug', 
		weight = 200, 
		stack = true, 
		close = true, 
	},

	['blindfold'] = {
		label = 'Jutebeutel', 
		description = 'Kann man jemandem über den Kopf ziehen', 
		types = 'Werkzeug',
		weight = 100, 
		stack = true, 
		close= false, 
	},

	['outfitbag'] = {
		label = 'Kleidertasche', 
		description = 'Zur Aufbewahrung verschiedener Outfits', 
		types = 'Werkzeug', 
		weight = 500, 
		stack = true, 
		close = true,
	},


	-- Werkbänke
	['campfire'] = {
		label = 'Lagerfeuer', 
		description = 'Komm schon Sing das LAGERFEUERLIED!',
		types = 'Werkbank', 
		weight = 0,
		stack = true, 
		close = true, 
	},

	['crafting_table'] = {
		label = 'Werkbank', 
		description = 'Die neue Werkbank, eine Revolution?',
		types = 'Werkbank', 
		weight = 0,
		stack = true, 
		close = true, 
	}, 

	['crafting_weapon'] = {
		label = 'Waffenwerkbank', 
		description = 'Die neue Werkbank, eine Revolution?',
		types = 'Werkbank', 
		weight = 0,
		stack = true, 
		close = true, 
	}, 

	['recycler'] = {
		label = 'Recycling Anlage', 
		description = 'Ein perfektes Werkzeug fürs Recycling',
		types = 'Werkbank', 
		weight = 0,
		stack = true, 
		close = true,
	},

	['moneybag'] = {
		label = 'Geldtasche', 
		description = 'Wird benutzt für Storage', 
		types = 'Göttlich', 
		weight = 0, 
		stack = false, 
		close = false,
	},

	-- VERBRAUCH
	['baggie'] = {
		label = 'Zipperbeutel',
		description = 'Ein Beutel zum Verpacken von Dingen',
		types = 'Verbrauch',
		weight = 1, 
		stack = true, 
		close = true, 
	}, 

	['baggie_blood'] = {
		label = 'Eingepackte Blutprobe',
		description = 'Beinhaltet das Blut von einem Tatort', 
		types = 'Verbrauch',
		weight = 250, 
		stack = true, 
		close = true, 
	}, 
	
	['evidence_magazine'] = {
		label = 'Eingepacktes Magazin',
		description = 'Enthält das Magazin einer Waffe', 
		types = 'Verbrauch',
		weight = 250, 
		stack = true, 
		close = true, 
	}, 

	['parachute'] = {
		label = 'Fallschirm', 
		description = 'Springe sicher aus Flugzeugen oder von Dächern', 
		types = 'Verbrauch', 
		weight = 2000, 
		stack = true, 
		close = true, 
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500,
			cancel = true,
		},
	},

	['lockpick'] = {
		label = 'Lockpick', 
		description	= 'Damit ist es einfacher sich selbst Einzuladen', 
		types = 'Verbrauch', 
		weight = 10, 
		stack = true, 
		close = true,
	},

	['thermite'] = {
		label = 'Thermit', 
		description = 'Ein Thermit, damit kannst du Türen aufschweisen',
		types = 'Verbrauch',
		weight = 1000,
		stack = true,
		close = false,
	},

	['lockpick_advanced'] = {
		label = 'Lockpick (Fortgeschritten)', 
		description = 'Damit ist es einfacher sich selbst Einzuladen', 
		types = 'Verbrauch', 
		weight = 10, 
		stack = true, 
		close = true,
	},
	['armour'] = {
		label = 'Schussweste',
		description = 'Kann einige Kugeln abfangen, bevor es kritisch wird',
		types = 'Verbrauch',
		weight = 2000,
		stack = true,
		client = {
			anim = { dict = 'clothingshirt', clip = 'try_shirt_positive_d' },
			usetime = 3500, 
			cancel = true, 
		},
	},

	['contract'] = {
		label = 'Kaufvertrag', 
		description = 'Ein Vertrag zur Weitergabe von Fahrzeugen', 
		types = 'Verbrauch', 
		weight = 25, 
		stack = true, 
		close = true, 
	},

	['rolling_paper'] = {
		label = "Longpaper",
		description = 'Longpaper mit Tips. Ideal für ein Tütchen',
		types = 'Verbrauch',
		weight = 150,
		stack = true,
		close = true,
	},	

	['gas_mask'] = {
		label = "Gasmaske",
		description = 'Man kann nie wissen, was in der Luft liegt',
		types = 'Verbrauch',
		weight = 250,
		stack = true,
		close = true,
	},

	['saline'] = {
		label = 'Kochsalzlösung', 
		description = 'Eine Kochsalzlösung die alle Drogen Effekte entfernt', 
		types = 'Verbrauch', 
		weight = 300, 
		consume = 1, 
		stack = true, 
		close = true, 
		client = {
			usetime = 4000, 
			cancel = true, 
		},
	},

	['bandage'] = {
		label = 'Bandage',
		description = 'Damit kannst du kleinere Wunden verarzten',
		types = 'Verbrauch',
		weight = 50,
		stack = true, 
		close = true, 
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		},
	},

	['medikit'] = {
		label = 'Medikit',
		description = 'Damit kannst du größere Verletzungen verarzten',
		types = 'Verbrauch',
		weight = 150,
		stack = true, 
		close = true, 
		client = {
			anim = { dict = 'missheistdockssetup1clipboard@idle_a', clip = 'idle_a', flag = 49 },
			prop = { model = `prop_rolled_sock_02`, pos = vec3(-0.14, -0.14, -0.08), rot = vec3(-50.0, -50.0, 0.0) },
			disable = { move = true, car = true, combat = true },
			usetime = 2500,
		},
	},

	['repairkit'] = {
		label = 'Repairkit', 
		description = 'Damit kannst du Fahrzeuge wieder reparieren', 
		types = 'Verbrauch', 
		weight = 300, 
		stack = true, 
		close = true, 
		consume = 1, 
	},

	['cleankit'] = {
		label = 'Waschzeug', 
		description = 'Damit kannst du jedes Fahrzeug wieder sauber machen', 
		types = 'Verbrauch', 
		consume = 1,
		weight = 300, 
		stack = true, 
		close = true,
	}, 

	['scalpel'] = {
		label = 'Skalpell',
		description = 'Ein scharfes chirurgisches Instrument. Bitte nicht damit herumlaufen!',
		types = 'Verbrauch',
		weight = 50,
		stack = true,
		close = true,
		allowArmed = true,
		server = {
			export = 'rcn_core.newbserialfile'
		},
	},

	-- Behälter
	['backpack'] = {
		label = 'Tasche', 
		description = 'Noch mehr Lagerplatz für die Reise', 
		types = 'Tasche', 
		weight = 250,
		stack = false, 
		close = true,
		client = {
			export = 'wasabi_backpack.openBackpack',
		}, 
	},

	['wallet'] = {
		label = 'Geldbörse', 
		description = 'Perfekt für all deine Personalien', 
		types = 'Tasche', 
		weight = 25, 
		stack = false, 
		close = false,
	},

	['paperbag'] = {
		label = 'Papiertüte', 
		description = 'Perfekt für den leichten Einkauf', 
		types = 'Tasche', 
		weight = 10, 
		stack = false, 
		close = false,
	}, 

	['briefcase'] = {
		label = 'Aktenkoffer',
		description = 'Ein Koffer der genug Stauraum bietet', 
		types = 'Tasche',
		weight = 250, 
		stack = false, 
		close = false, 
	}, 

	-- Garbage 
	['garbage'] = {
		label = 'Abfall', 
		description = 'Ein Haufen Müll. Warum trägst du das mit dir rum?',
		types = 'Müll', 
		weight = '50', 
		stack = true, 
		close = false,
	},
}