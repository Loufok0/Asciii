*asciii.txt*     Plugin Vim ASCII Art         *asciii*

---

```
                     ASCII ART PLUGIN POUR VIM
```

---

Auteur: Loufoko (loufoko@gmail.com)
Version: 1.0
Dépendances: `figlet` Licence: MIT

---

CONTENU:

1. Introduction                        |asciiart-intro|
2. Installation                        |asciiart-install|
3. Commandes                           |asciiart-commands|
4. Configuration                       |asciiart-config|
5. Raccourcis                          |asciiart-mappings|
6. Exemples                            |asciiart-examples|

---

1. INTRODUCTION *asciiart-intro*

Ce plugin Vim permet de transformer du texte en ASCII Art en utilisant `figlet`. Le résultat est affiché dans un buffer temporaire. Il peut être utilisé pour personnaliser des commentaires, des fichiers README, ou simplement s'amuser.

---

2. INSTALLATION *asciiart-install*

Requis: `figlet` doit être installé sur votre système.


- Sous Arch Linux:

  ```sh
  sudo pacman -S figlet
  ```

- Sous Linux (Debian/Ubuntu):

  ```sh
  sudo apt install figlet
  ```

- Sous macOS (via Homebrew):

  ```sh
  brew install figlet
  ```

Installation du plugin

- Ajouter "	Plug 'Loufok0/asciii'	" au .vimrc
- Executer :PlugInstall
- Redémarrer Vim

---

3. COMMANDES *asciiart-commands*

- `:AsciiArt <mot>` Génère l'ASCII Art du mot donné et l'affiche dans un buffer temporaire.

  Exemple:

  ```vim
  :AsciiArt Hello
  ```

- `:AsciiFont <police>` Change la police utilisée pour l'ASCII Art.

  Exemple:

  ```vim
  :AsciiFont big
  ```

---

4. CONFIGURATION *asciiart-config*

Le plugin utilise par défaut la police "standard" pour figlet. Vous pouvez la modifier en utilisant la commande `:AsciiFont`.

---

5. RACCOURCIS *asciiart-mappings*

- `<Leader>a` Transforme la ligne actuelle en ASCII Art et l'affiche dans un buffer.

---

6. EXEMPLES *asciiart-examples*

7. Générer "Vim" en ASCII Art :

   ```vim
   :AsciiArt Vim
   ```

8. Changer la police à "big" et générer un mot:

   ```vim
   :AsciiFont big
   :AsciiArt Code
   ```

---

Merci d'utiliser ASCII Art Plugin pour Vim ! 😃


