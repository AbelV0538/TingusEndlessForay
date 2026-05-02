# Tingus's Endless Foray
By Joseph Pollard, Abel Varghese, Philip Pebbles and Daniel Buehrig

---

## Story Synopsis

Tingus the Tortoise has always been a family man, but has never had it easy living in Canine City, a metropolis primarily populated by sentient dogs. Unfortunately, he one day finds that his family has been kidnapped for ransom. They've been taken to the highest floor of Pit Point Tower, the complex where Dougie "Big Cheese" Dawg, leader of the notorious Dawg Pound Boyz street gang, performs their criminal operations. With nothing to lose, Tingus grabs his gun, busts down the door to the tower, and shoots through the floors... only to be defeated time and time again. Fortunately for him, he does not stay down forever. Using the money and resources he has collected from his previous runs, he can upgrade his capabilities, brave the tower as many times as it takes, and rescue his family.

---

## Gameplay Synopsis

Tingus's Endless Foray is a roguelite SHMUP through the perspective of Tingus the Tortoise as he fights his way to the top of the tower. Each enemy has different methods of movement and attacking which will keep Tingus on his toes. The game is not designed to be beatable in one attempt; the point of the roguelite mechanics is to allow the player to eventually strengthen Tingus through the upgrade shop until he is capable of defeating the boss at the end. At the upgrade shop, the player can use coins collected to upgrade three stats: maximum health, which strengthens Tingus to survive more hits, fire rate, which allows him to fire bullets with less of a cooldown, and movement speed, which increases his speed strafing from left to right. The upgrade levels and coins persist throughout runs. Once the final boss on floor 6 is defeated, the game is won.

---

## Controls

### Gameplay

| Input | Action |
|---|---|
| A and D | Strafe left and right |
| Left-click | Shoot a bullet |
| Move mouse | Aiming the gun. A reticle will be displayed where the cursor is, showing where Tingus is aiming |
| Escape | Pause the game and go to the pause menu. Pressing escape again will resume the game |

### Menus

| Input | Action |
|---|---|
| W and S | Cycle between menu options |
| Enter | Select the highlighted option |
| B (On upgrade menu) | Exit the upgrade shop |

---

## Cheat Codes

| Input | Action |
|---|---|
| Alt + H | Reset health to maximum |
| Alt + C | Give 100 coins |
| Alt + N | Go to the next room |
| Alt + R | Restart the current room |
| Alt + R | Restart the game |

---

## Graduate Requirements Fulfilled

- **Spatial Sound:** The player can hear where their enemies bullets are comming from and can hear them "whiz" past them.
- **Data Persistance:** Json file written into with a script to save a player's current upgrades and furthest room achieved.
- **Viewport:** The player is limited to view a square of the much larger scroll that each room is.
- **Tutorial:** Accessible from start menu by clicking TAB. Simply goes over controls.
- **Inheritance:** Enemy classes inherit from each other. goon->strafer->Boss1->Boss2. goon->sniper (-> : "inherits")
- **Shader:** Applies a retro effect to the scrren, makes it look like a CRT tv. Somewhat warps the player's perspective, making some shots and enemy spawns harder to see coming.
- **Smart NPCs:** All enemies know exactly where the player is at all times and act accordinginly.

---

## Q&A

**Q: "How did you implement the theme you chose for this game?"**

A: The theme we chose for this game was perseverance, which we believed would fit well with the mechanics of a roguelite game. In a roguelite game, the player must start over if they fail, however, they keep a certain amount of items (in this game's case, coins) and upgrades so they can still progress through each run. It takes time, dedication, and a willingness to try again after failure to complete Tingus's Endless Foray -- in other words, perseverance. We designed the levels to be challenging and even a little frustrating at times, to really bring home the point that the player has to keep trying in order to surpass the many challenges waiting for them in Pit Point Tower. Only through persevering despite initial failures will the player be able to win.

---

## Credits

- **Enemy and player hurt sounds:** Voiced by Joseph Pollard
- **Title screen and background music:** https://ansimuz.itch.io/industrial-parallax-background/
- **Title screen and win/lose screen font:** Press Start 2P by Codeman38 (on DaFont.com)
- **Gun shooting sound:** https://pixabay.com/sound-effects/film-special-effects-pistol-shot-233473/
- **Bullet whiz sound:** https://www.youtube.com/watch?v=pRmn_dqi_XA
- **Sniper sound:** https://www.youtube.com/watch?v=oD9giwoXSEk
