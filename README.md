# LocalizedRender

[![Build Status](https://travis-ci.org/BrandyMint/localized_render.svg?branch=master)](https://travis-ci.org/BrandyMint/localized_render)


Позволяет удобно редаткировать globalized-атрибуты моделей во вьюхах с
поддержкой CSS от bootstrap 3 

## Usage

Имеем модель с атрибутом title подключенным через globalize

```
class Content < ApplicationRecord
  translates :title
end
```

В представлении формы добавляем переключатель между доступными локалями:


```slim
= simple_form_for content do |f|
  = localized_render do |locale|
    = f.input localized_attribute(:title, locale), label: 'Название'
```

Получаем:

![Image of example](https://raw.githubusercontent.com/BrandyMint/localized_render/master/doc/example.gif)


## Methods

Модуль представляет всего два публичных метода:

* localized_render
* localied_attribute_title

## Installation
Add this line to your application's Gemfile:

```ruby
gem 'localized_render'
```

And then execute:
```bash
$ bundle
```

Or install it yourself as:
```bash
$ gem install localized_render
```

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
