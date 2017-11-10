strings = {
    'title': 'Online Password Generator',
    'home': 'Home',
    'compact': 'Compact',
    'more_options': 'More options',
    'about': 'About',
    'subtitle': 'Passwords done right', 
    'title_your_password': 'Your Correct Horse password',
    'subtitle_generate_password': 'Generate a new one by clicking the button',
    'generate': 'Generate',
    'want_more_options': 'I want <a href="options.html">more options …</a>',
    'generator_words':  'The password is generated from the following words:',
    'title_good_password': 'Why is this a good password?',
    'subtitle_good_password': 'What makes a good password?',
    'text_good_password':
      '''<p>
      The password above contains 52 bits of entropy.
      This means, it is as random as the result of throwing 52 coins in a row.
      The reason for that is because every word has been randomly selected from a list of over 8192 distinct words—corresponding to an entropy of 13 bits.
      </p>
      <p>
      That means, it is as random, as a completely random password of length 8 generated from uppercase letters, lowercase letters and numbers.
      <strong>However</strong> it is much more memorable than a complete random password of 8 characters.
      Or as Randal Munroe puts it:
      </p>''',
    'reference_xkcd':
      '''<p>
      This is taken from Randall Munroes famous carton
      <a href="https://xkcd.com/">XKCD (xkcd.com)</a>.
      </p>''',
    'title_trust': 'Why can I trust this page …',
    'subtitle_trust': ' … with something such important as my passwort?',
    'text_trust':
      '''<p>
      Short answer:
      You shouldn't.
      You shouldn't trust <strong>any</strong> website with that.
      </p>
      <p>
      However, this page is made as simple as possible
      (from the code point of view).
      So you can convince yourself that
      </p>
      <ul>
        <li>the password is generated completely random (as far as your browser
        implements Math.random()),</li>
        <li>the password is not send to the server,</li>
        <li>nothing else is done except for the password generation.</li>
      </ul>
      <p>
      Because the password is never sent to any server, also nobody in between could have read the password above
      (except from the coworker standing behind you).
      In order to make sure, that also this web page has not been modified at all, you should check that you connected this website securely via https and the connection is using a trusted certificate.
      </p>
      <p>
      By viewing the source of this website, you can see that the only code inserted (at the bottom of the page) is the snippet you can see below.
      There is no JS-Framework use, no ads are embedded, neither is google analyics, there is no facebook-botton, nothing.
      Feel free to share this page on facebook anyway! :)
      </p>''',
    'title_wordlist': 'Which words are used?',
    'subtitle_wordlist': 'Can I download the wordlists?',
    'text_wordlist':
      '''<p>
      The wordlists used can be downloaded here:
      </p>''',
    'reference_wordlist':
      '''<p>
      These wordlists are taken from the
      <a href="http://wortschatz.uni-leipzig.de/html/wliste.html">Wortschatz project</a>
      of the Leipzig university, Germany.
      They are licensed under
      <a href="https://creativecommons.org/licenses/by-nc/4.0/">CC-BY-NC</a>
      according to the
      <a href="http://wortschatz.uni-leipzig.de/use.html">Wortschatz terms of usage</a>.
      Words containing anything else but letters have been filtered out.
      Also, the lists have been converted to full lowercase.
      </p>
      <p>
      You can use these files to generate your password locally.
      If you are using Linux, you can just invoke the following command
      (replacing &lt;file&gt; with the actual file):
      </p>''',
    'option_numberwords': 'Number of words', 
    'option_showspaces': 'Show spaces between words',
    'options_need': 'I need:', 
    'options_uppercase': 'Upper case letters', 
    'options_number': 'At least one number',
    'options_specialcharacter': 'At least one special character',
}

