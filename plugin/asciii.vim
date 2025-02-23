" Vérifier si figlet est installé
if !executable("figlet")
  echoerr "Figlet n'est pas installé. Installez-le avec 'sudo apt install figlet'."
  finish
endif

" Variable pour la police utilisée
let g:asciiart_font = "standard"

" Fonction pour générer l'ASCII Art
function! AsciiArt(word)
  let l:cmd = "figlet -f " . g:asciiart_font . " " . shellescape(a:word)
  let l:output = systemlist(l:cmd)

  " Créer un buffer temporaire pour afficher l'output
  new
  setlocal buftype=nofile
  setlocal bufhidden=wipe
  setlocal nobuflisted
  call setline(1, l:output)
endfunction

" Fonction pour convertir la ligne actuelle
function! AsciiArtCurrentLine()
  let l:line = getline(".")
  call AsciiArt(l:line)
endfunction

" Fonction pour changer la police
function! AsciiFont(font)
  let g:asciiart_font = a:font
  echo "Police ASCII changée en : " . g:asciiart_font
endfunction

" Commandes Vim
command! -nargs=1 AsciiArt call AsciiArt(<f-args>)
command! -nargs=1 AsciiFont call AsciiFont(<f-args>)

" Mapping du raccourci <Leader>a pour transformer la ligne actuelle
nnoremap <Leader>a :call AsciiArtCurrentLine()<CR>

