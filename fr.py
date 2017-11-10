strings = {
    'title': 'Online Password Generator',
    'home': 'Foyer',
    'compact': 'Compact',
    'more_options': 'Autres options',
    'about': 'À propos de',
    'subtitle': 'Mots de passe bien faits',
    'title_your_password': 'Votre mot de passe Correct Horse',
    'subtitle_generate_password': 'Générer un nouveau formulaire en cliquant sur le bouton',
    'generate': 'Générer',
    'want_more_options': 'Je veux <a href="options.html">plus d\'options …</a>',
    'generator_words':  'Le mot de passe est généré à partir des mots suivants:',
    'title_good_password': 'Pourquoi est-ce un bon mot de passe?',
    'subtitle_good_password': 'Qu\'est-ce qui fait un bon mot de passe?',
    'text_good_password':
      '''<p>
      Le mot de passe ci-dessus contient 52 bits d'entropie.
      Cela signifie que c'est aussi aléatoire que le résultat de jeter 52 pièces de monnaie dans une'rangée'.
      La raison en est que chaque mot a été choisi au hasard à partir d'une liste de plus de 8192 mots distincts, ce qui correspond à une entropie de 13 bits.
      </p>
      <p>
      Cela signifie qu'il est aussi aléatoire, comme un mot de passe de longueur 8 complètement aléatoire généré à partir de lettres majuscules, minuscules et chiffres.
      <strong>Cependant</strong>, il est beaucoup plus facile à mémoriser qu'un mot de passe aléatoire de 8 caractères.
      Ou comme le dit Randal Munroe:
      </p>''',
    'reference_xkcd':
      '''<p>
      Ceci est tiré du célèbre carton
      <a href="https://xkcd.com/">XKCD (xkcd.com)</a>
      de Randall Munroes.
      </p>''',
    'title_trust': 'Pourquoi puis-je faire confiance à cette page …',
    'subtitle_trust': ' … avec quelque chose d\'aussi important que mon mot de passe?',
    'text_trust':
      '''<p>
      Réponse brève:
      Vous ne devriez pas.
      Tu ne devrais pas faire confiance à un site web avec ça.
      </p>
      <p>
      Cependant, cette page est aussi simple que possible (du point de vue du code).
      Vous pouvez donc vous convaincre vous-même
      </p>
      <ul>
        <li>le mot de passe est généré de manière totalement aléatoire (dans la mesure où votre navigateur implémente Math.random()),</li>
        <li>le mot de passe n'est pas envoyé au serveur</li>
        <li>rien d'autre n'est fait sauf pour la génération du mot de passe</li>
      </ul>
      <p>
      Comme le mot de passe n'est jamais envoyé à un serveur, personne n'aurait pu lire le mot de passe ci-dessus
      (sauf le collègue qui se trouve derrière vous).
      Afin de s'assurer que cette page web n' a pas été modifiée, vous devez vérifier que vous avez connecté ce site web de manière sécurisée via https et que la connexion utilise un certificat de confiance.
      </p>
      <p>
      En regardant la source de ce site, vous pouvez voir que le seul code inséré (en bas de la page) est le fragment que vous pouvez voir ci-dessous.
      Il n' y a pas d'utilisation de JS-Framework, pas d'annonces, pas de Google Analyics, pas de facebook-botton, rien.
      N'hésitez pas à partager cette page sur facebook quand même! :)
      </p>''',
    'title_wordlist': 'Quels mots sont utilisés?',
    'subtitle_wordlist': 'Puis-je télécharger les listes de mots?',
    'text_wordlist':
      '''<p>
      Les listes de mots utilisées peuvent être téléchargées ici:
      </p>''',
    'reference_wordlist':
      '''<p>Ces listes de mots sont tirées du
      <a href="http://wortschatz.uni-leipzig.de/html/wliste.html">projet Wortschatz</a>
      de l'université de Leipzig, en Allemagne.
      Ils sont sous licence
      <a href="https://creativecommons.org/licenses/by-nc/4.0/">CC-BY-NC</a>
      selon les
      <a href="http://wortschatz.uni-leipzig.de/use.html">conditions d'utilisation de Wortschatz.</a>
      Les mots contenant autre chose que des lettres ont été filtrés.
      De plus, les listes ont été converties en minuscules.
      </p>
      <p>
      Vous pouvez utiliser ces fichiers pour générer votre mot de passe localement.
      Si vous utilisez linux, vous pouvez simplement appeler la commande suivante
      (remplacer <&lt;file&gt;> par le fichier actuel) :
      </p>''',
    'option_numberwords': 'Nombre de mots',
    'option_showspaces': 'Afficher les espaces entre les mots',
    'options_need': 'J\'en ai besoin:',
    'options_uppercase': 'Lettres majuscules',
    'options_number': 'Au moins un chiffre',
    'options_specialcharacter': 'Au moins un caractère spécial',
    'translation_hint':
      '''<p>
      This pages has been translated automatically using the
      <a href="https://www.deepl.com/translator">DeepL translator</a>.
      If you find mistakes, do not hesitate to fix them in the
      <a href="https://github.com/zgtm/correcthorse.org/blob/master/fr.py">Github repository</a>.
      </p>'''
}

