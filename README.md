# Test-BDD-Cucumber-Definitions [![Build Status](https://travis-ci.org/ivanych/Test-BDD-Cucumber-Definitions.svg?branch=master)](https://travis-ci.org/ivanych/Test-BDD-Cucumber-Definitions)

Коллекция шагов для функционального тестирования в стиле Cucumber на языке Perl.

# Шаги

Шаги могут быть написаны на разных языках. В настоящее время есть шаги на двух языках:

* In - Internal (внутренний псевдо-язык)
* Ru - Русский

# Определения

Определения всех имеющихся шагов написаны как отдельные функции. Это позволяет легко создавать новые шаги,
используя для этого готовые определения. Новые шаги просто собираются из готовых определений как конструктор.

Допустим, есть шаг:

    When запрошена страница 'http://metacpan.org'

и его определение:

    get_page('http://metacpan.org');

Есть второй шаг:

    Then страница загрузилась успешно

и его определение:

    check_code(200);

Теперь можно легко создать новый шаг:

    Given загружена страница 'http//metacpan.org'

просто объединив два определения:

    get_page('http://metacpan.org');
    check_code(200);    

# Модули

Дистрибутив содержит несколько модулей для работы с различными протоколами и данными.

## HTTP

Модуль содержит функции для работы с веб-ресурсами по протоколу HTTP.

## Struct

Модуль содержит функции для работы с perl-структурами данных.

## Zip

Модуль содержит функции для работы с переменными

## Zip

Модуль содержит функции для работы с архивами Zip
