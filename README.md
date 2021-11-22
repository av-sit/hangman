## HANGMAN / ВИСЕЛИЦА (консольная игра)
Игроку требуется угадать по буквам слово, загаданное программой. Даётся 7 попыток. После каждой неверной буквы изображение виселицы дополняется частями тела. Если туловище в виселице нарисовано полностью - исчерпано 7 попыток, то отгадывающий игрок проигрывает, считается повешенным.

Слово должно быть именем существительным, нарицательным в именительном падеже единственного числа, либо множественного числа при отсутствии у слова формы единственного числа.

Более подробно об игре, правилах и вариациях можно почитать [в Википедии](http://ru.wikipedia.org/wiki/%D0%92%D0%B8%D1%81%D0%B5%D0%BB%D0%B8%D1%86%D0%B0_(%D0%B8%D0%B3%D1%80%D0%B0)).

Игра написана на языке программирования Ruby 2.7.

Для запуска игры Вам необходим Ruby версии не ниже 2.4.

Как запустить программу с помощью консоли:

* Скачайте файлы из репозитория

`git clone https://github.com/av-sit/hangman.git`

* Откройте консоль

* Перейдите в нужную директорию:

`cd hangman`
* Запустите программу:

`ruby hangman.rb`


Добавление слов в словарь программы:

добавляйте слова в текстовой файл \data\words.txt, сохраните в кодировке utf-8.
