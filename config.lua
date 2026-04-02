Config = Config or {}

Config.Debug = false

-- LICENÇA DO SCRIPT
-- Token gerado pelo bot/painel. Sem token válido o script deve ficar bloqueado (server-side).
Config.Auth = Config.Auth or {}
Config.Auth.Token = "QZDEV-QZ_CRAFT-GHM3VVCS0H"

-- LISTAS DE CRAFT
-- Você pode criar várias listas (ex.: Policia, Bennys, Mecanico). Cada lista tem:
-- - permissão de acesso
-- - modo de abertura (marker no chão com tecla E OU target)
-- - posições (CDS) onde abre
-- - itens craftáveis e requisitos
Config.CraftLists = {
	[1] = {
		-- ID da lista (use número único).
		id = 1,
		-- Nome exibido (informativo).
		name = "Lista 1",
		-- Permissão para abrir esta lista:
		-- - string: "Policia" (grupo no vRP)
		-- - tabela: { "Policia", "Bennys" } (qualquer uma libera)
		-- - pode ter nível: "Policia-2" (se seu vRP usa isso)
		permission = { "pm" },

		-- Tempo padrão (ms) para craft quando o item não define "time".
		defaultTime = 5000,
		-- Animação padrão quando o item não define "anim".
		-- dict/name = animação; upper/loop = flags.
		defaultAnim = { dict = "amb@prop_human_parking_meter@female@idle_a", name = "idle_a_female", upper = false, loop = true },

		-- MODO DE ABERTURA:
		-- "marker" = desenha um círculo (marker) e aperta E
		-- "target" = usa o target (exports.target) para interagir
		openMode = "marker",

		-- LOCAIS (CDS) onde abre esta lista.
		-- Aceita 2 formatos:
		-- 1) { x = 0.0, y = 0.0, z = 0.0 }
		-- 2) { 0.0, 0.0, 0.0 }
		locations = {
			{ 410.99,-989.65,29.4}
		},
		-- Raio da área (marker/target).
		openRadius = 1.5,
		-- Texto do target (se openMode="target").
		openLabel = "Abrir Craft",

		-- ITENS CRAFTÁVEIS NESTA LISTA
		-- Cada item tem:
		-- id = identificador interno (único na lista)
		-- label = nome exibido
		-- item = nome do item que o player vai receber (inventário)
		-- category = categoria exibida na UI
		-- xp = texto/valor exibido (opcional)
		-- image = URL/arquivo (opcional). Se vazio, tenta usar imagem do inventário vRP.
		-- time/anim = sobrescrevem defaultTime/defaultAnim (opcional)
		-- requirements = materiais necessários (lista)
		items = {
			{
				id = "handcuff",
				label = "Algema",
				item = "handcuff",
				category = "Utilitários",
				xp = nil,
				image = nil,
				-- Tempo específico deste item (ms).
				time = 5000,
				-- Animação específica deste item.
				anim = { dict = "amb@prop_human_parking_meter@female@idle_a", name = "idle_a_female", upper = false, loop = true },
				-- REQUISITOS:
				-- item = nome do item/material no inventário
				-- label = nome exibido do material
				-- amount = quantidade por 1 craft (a UI multiplica pela quantidade selecionada)
				requirements = {
					{ item = "copper_pure", label = "Cobre", amount = 1 }
				}
			},
			{
				id = "hood",
				label = "Capuz",
				item = "hood",
				category = "Roupas",
				xp = nil,
				image = nil,
				time = 5000,
				anim = { dict = "amb@prop_human_parking_meter@female@idle_a", name = "idle_a_female", upper = false, loop = true },
				requirements = {
					{ item = "fabric", label = "Tecido", amount = 2 }
				}
			}
		}
	},
	[2] = {
		id = 2,
		name = "Lista 2",
		permission = { "Mecanico" },
		defaultTime = 5000,
		defaultAnim = { dict = "amb@prop_human_parking_meter@female@idle_a", name = "idle_a_female", upper = false, loop = true },
		-- Exemplo usando target:
		openMode = "target",
		locations = {
			{ 415.3,-990.1,29.96 }
		},
		openRadius = 1.5,
		openLabel = "Abrir Craft",
		items = {
			{
				id = "hood",
				label = "Capuz",
				item = "hood",
				category = "Roupas",
				xp = nil,
				image = nil,
				time = 5000,
				anim = { dict = "amb@prop_human_parking_meter@female@idle_a", name = "idle_a_female", upper = false, loop = true },
				requirements = {
					{ item = "fabric", label = "Tecido", amount = 2 }
				}
			}
		}
	}
}
