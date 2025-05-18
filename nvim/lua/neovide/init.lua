---------------------------------------------------
-- ⚙️ Neovide Configuration
---------------------------------------------------

-- ✅ Lance Neovide en plein écran
vim.g.neovide_fullscreen = true

-- 🪟 (Optionnel) Se souvenir de la taille de la fenêtre
vim.g.neovide_remember_window_size = true

-- 🔍 (Optionnel) Zoom (1.0 = 100%)
-- vim.g.neovide_scale_factor = 1.0

---------------------------------------------------
-- ✨ Curseur animé
---------------------------------------------------

-- Choix du style d’animation du curseur :
-- "railgun", "torpedo", "pixiedust", "ripple", "sonicboom", "wireframe"
-- vim.g.neovide_cursor_vfx_mode = "pixiedust"

-- Durée de l'animation du curseur (plus petit = plus rapide)
-- vim.g.neovide_cursor_animation_length = 0.07

-- Taille de la "traînée" du curseur
-- vim.g.neovide_cursor_trail_size = 1

-- enlever touts les animations du curseur
vim.g.neovide_cursor_animation_length = 0
vim.g.neovide_cursor_trail_size = 0
vim.g.neovide_cursor_vfx_mode = ""

-- (Optionnel) Particules du curseur (valeur plus grande = plus de particules)
-- vim.g.neovide_cursor_vfx_particle_density = 7.0

---------------------------------------------------
-- 🎨 Apparence
---------------------------------------------------

-- Police avec ligatures (ajuste selon ce que tu as installé)
vim.o.guifont = "FiraCode Nerd Font:h14"

-- (Optionnel) Transparence : entre 0 (transparent) et 1 (opaque)
-- vim.g.neovide_transparency = 0.9

-- (Optionnel) Couleur de fond + alpha (pour le flou)
-- vim.g.neovide_background_color = "#0f1117AA"  -- dernier "AA" = transparence

---------------------------------------------------
-- 🖱️ Scroll fluide
---------------------------------------------------

-- Durée de l’animation lors du scroll avec clavier
vim.g.neovide_scroll_animation_length = 0.3
