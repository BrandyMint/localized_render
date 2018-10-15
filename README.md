# LocalizedRender

[![Build Status](https://travis-ci.org/BrandyMint/localized_render.svg?branch=master)](https://travis-ci.org/BrandyMint/localized_render)


Позволяет удобно редаткировать globalized-атрибуты моделей во вьюхах с
поддержкой CSS от bootstrap 3 

## Usage

Имеем модель с атрибутом title подключенным через globalize

```ruby
class Content < ApplicationRecord
  translates :title
end
```

Добавляем в контроллер:

```ruby
class ApplicationController < ActionController::Base
  helper LocalizedRender.helpers
end

```

В представлении формы добавляем переключатель между доступными локалями:


```slim
= simple_form_for content do |f|
  = localized_render do |locale|
    = f.input localized_attribute(:title, locale)
```

Получаем:

![Image of example](https://raw.githubusercontent.com/BrandyMint/localized_render/master/doc/example.gif)


## Доступные методы

Модуль представляет всего два публичных метода:

* localized_render - рендерит несколько input-ов для разных локалей в виде
  bootstrap css nav-tabs
* localied_attribute_title - отдает название атрибута с постфиксом в виде локали
  (_ru, /_en). Используйте для этого gem globalize-accessors

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

Рекомендую использовать gem globalize-accessors

## Contributing
Contribution directions go here.

## License
The gem is available as open source under the terms of the [MIT License](https://opensource.org/licenses/MIT).
