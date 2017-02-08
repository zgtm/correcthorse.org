<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <title>CorrectHorse.org – {{! title }}</title>
    <link rel="stylesheet" href="../css/bulma.css">
    <link rel="stylesheet" href="../css/ch.css">
  </head>
  <body>




    <section class="hero is-info is-bold">
      <div class="hero-head">
        <div class="container">
          <nav class="nav">
            <div class="columns">
              <div class="column">
                <div class="nav-center nav-menu">
                  % if currentsite == "index.html":
                  <span class="nav-item">{{! home }}</span>
                  % else:
                  <a class="nav-item" href="index.html">{{! home }}</a>
                  % end
                  % if currentsite == "compact.html":
                  <span class="nav-item">{{! compact }}</span>
                  % else:
                  <a class="nav-item" href="compact.html">{{! compact }}</a>
                  % end
                  % if currentsite == "options.html":
                  <span class="nav-item">{{! more_options }}</span>
                  % else:
                  <a class="nav-item" href="options.html">{{! more_options }}</a>
                  % end
                </div>
              </div>
              <div class="column">
                <div class="nav-center nav-menu">
                  % if currentlang == "en":
                  <span class="nav-item">English</span>
                  % else:
                  <a class="nav-item" href="../en/{{! currentsite }}">English</a>
                  % end
                  % if currentlang == "de":
                  <span class="nav-item">Deutsch</span>
                  % else:
                  <a class="nav-item" href="../de/{{! currentsite }}">Deutsch</a>
                  % end
                  % if currentlang == "fr":
                  <span class="nav-item">Français</span>
                  % else:
                  <a class="nav-item" href="../fr/{{! currentsite }}">Français</a>
                  % end
                  % if currentlang == "nl":
                  <span class="nav-item">Nederlands</span>
                  % else:
                  <a class="nav-item" href="../nl/{{! currentsite }}">Nederlands</a>
                  % end
                </div>
              </div>
              <div class="column">
                <div class="nav-right nav-menu">
                  <a class="nav-item" href="../about.html">{{! about }}</a>
                </div>
              </div>
            </div>
          </nav>
        </div>
      </div>
      <header class="header">
        <div class="container">
          <div class="columns">
            <div class="column">
              <h1 class="title is-1">Correct Horse<span style="font-size:large"> .org</span></h1>
              <h2 class="subtitle is-3">Passwords done right</h2>
            </div>
            % if currentsite != "compact.html":
            <div class="column is-narrow">
              <div class="box">
                <img src="../img/small.png">
              </div>
            </div>
            % end
          </div>
        </div>
      </header>
    </section>


    <section class="section">
      <div class="container">
        <h1 class="title">{{! title_your_password }}</h1>
        <h2 class="subtitle">{{! subtitle_generate_password }}</h2>
        <hr>
        <div class="columns">
          <div class="column">
            <p class="control">
               <button class="button is-primary is-medium" onclick="generatePassword();">{{! generate }}</button>
            </p>
            <p class="control">
              <input class="input is-medium is-success" type="text" placeholder="" id="password">
            </p>
            % if currentsite == "index.html":
            <p>
              {{! want_more_options }}
            </p>
            % end
          </div>
          <div class="column">
            <p>{{! generator_words }}</p>
            <p class="control">
              <textarea class="textarea" placeholder="" id="wordlist">{{! wordlist }}</textarea>
            </p>
          </div>
        </div>
        % if currentsite == "options.html":
        <div class="columns">
          <div class="column">
            <label class="label">{{! option_numberwords }}</label>
            <p class="control">
              <input class="input" size="5" type="number" value="4" name="quantity" min="1" max="10" id="numwords" onchange="generatePassword();">
            </p>
            <p class="control">
              <label class="checkbox">
                <input type="checkbox" id="spaces" checked="checked" onchange="generatePassword();">
                {{! option_showspaces }}
              </label>
            </p>
          </div>
          <div class="column">
            {{! options_need }}
            <p class="control">
              <label class="checkbox">
                <input type="checkbox" id="upchar" onchange="generatePassword();">
                {{! options_uppercase }}
              </label>
            </p>
            <p class="control">
              <label class="checkbox">
                <input type="checkbox" id="number" onchange="generatePassword();">
                {{! options_number }}
              </label>
            </p>
            <p class="control">
              <label class="checkbox">
                <input type="checkbox" id="spchar" onchange="generatePassword();">
                {{! options_specialcharacter }}
              </label>
            </p>
          </div>
        </div>
        % end
      </div>
    </section>


    % if currentsite == "index.html":
    <section class="section">
      <div class="container">
        <h1 class="title">{{! title_good_password }}</h1>
        <h2 class="subtitle">{{! subtitle_good_password }}</h2>
        <hr>
        <div class="content">
          {{! text_good_password }}
          <div class="container" style="width:780px; margin-top:20px; margin-bottom:20px;">
            <div class="box" >
              <article class="media">
                <div class="media-content">
                  <figure class="image">
                    <img src="../img/password_strength.png" style="width:740px;">
                  </figure>
                </div>
              </article>
            </div>
          </div>
          {{! reference_xkcd }}
        </div>
      </div>
    </section>


    <section class="section">
      <div class="container">
        <h1 class="title">{{! title_trust }}</h1>
        <h2 class="subtitle">{{! subtitle_trust }}</h2>
        <hr>
        <div class="content">
          {{! text_trust }}
        </div>

        <div class="box" >
          <article class="media">
            <div class="media-content">
              <figure class="highlight">
                <pre><code class="language-html" data-lang="html"><span class="nt">&lt;script&gt;</span>
    <span class="na">function</span> generatePassword() {
        <span class="na">var</span> wordlist = <span class="na">document</span>.getElementById("wordlist").value.split(" ");

        <span class="na">var</span> password = "";
        <span class="na">for</span> (<span class="na">var</span> i = 0; i &lt; 4; i++) {
            password += wordlist[<span class="na">Math</span>.floor(<span class="na">Math</span>.random() * wordlist.length)] + " ";
        }

        <span class="na">document</span>.getElementById("password").value = password;
    }

    generatePassword();
<span class="nt">&lt;/script&gt;</span></code></pre>
              </figure>
            </div>
          </article>
        </div>
      </div>
    </section>



    <section class="section">
      <div class="container">
        <h1 class="title">{{! title_wordlist }}</h1>
        <h2 class="subtitle">{{! subtitle_wordlist }}</h2>
        <hr>
        <div class="content">
          {{! text_wordlist }}
        </div>
        <div class="columns">
          <div class="column">
            <p>English: <a href="../words/english.txt">english.txt</a></p>
            <p>8861 words</p><p>MD5: cdc20e6fe19c26fe44403d2e9f3c213c</p><p>SHA1: 4099869628b6b18ee52319db6588ec68f54d6a2b</p>
          </div>
          <div class="column">
            Deutsch / German: <a href="../words/german.txt">german.txt</a>
            <p>9353 words</p><p>MD5: 089a7f1d15f54bfd574b7c0e3e735a9d</p><p>SHA1: 5aadf36486bbb5156aa3d0980a7d2786fcdde8f2</p>
          </div>
        </div>
        <div class="columns">
          <div class="column">
            Français / French: <a href="../words/french.txt">french.txt</a>
            <p>8377 words</p><p>MD5: 6f14bcbf6d62619f9ce4e0ba027e545b</p><p>SHA1: 87d292a813353a93c54ed0a9a0658170a802c0a2</p>
          </div>
          <div class="column">
            Nederlands / Netherlands: <a href="../words/netherlands.txt">netherlands.txt</a>
            <p>9192 words</p><p>MD5: b976733df4653155a506f07c9a54d6d6</p><p>SHA1: c5e60dbcc0dd51025418d8be3926c80d33f71226</p>
          </div>
        </div>
        <hr>
        <div class="content">
          {{! reference_wordlist }}
        </div>
        <div class="box" >
          <article class="media">
            <div class="media-content">
              <figure class="highlight">
                <pre><code class="language-bash" data-lang="bash">shuf -n 4 &lt;file&gt; | tr '\n' ' '</code></pre>
              </figure>
            </div>
          </article>
        </div>
      </div>
    </section>



    <footer class="footer">
      <div class="container">
        <div class="content has-text-centered">
          <p>
          </p>
        </div>
      </div>
    </footer>
    % end

    
    % if currentsite == "options.html":
    <script>
      function generatePassword() {
          var wordlist = document.getElementById("wordlist").value.split(" ");

          var password = "";

          var num = document.getElementById("numwords").value;
          for (var i = 0; i < num; i++) {
              var word = wordlist[Math.floor(Math.random() * wordlist.length)];
              if (document.getElementById("upchar").checked)
                  word = word.charAt(0).toUpperCase() + word.slice(1);
              password += word;
              if (document.getElementById("spaces").checked)
                  password += " ";
          }
          if (document.getElementById("spchar").checked)
              password += ".";

          if (document.getElementById("number").checked)
              password += "0";

          document.getElementById("password").value = password;
      }

      generatePassword();
    </script>
    % else:
    <script>
      function generatePassword() {
          var wordlist = document.getElementById("wordlist").value.split(" ");

          var password = "";

          for (var i = 0; i < 4; i++) {
              password += wordlist[Math.floor(Math.random() * wordlist.length)] + " ";
          }

          document.getElementById("password").value = password;
      }

      generatePassword();
    </script>
    % end


  </body>
</html>
