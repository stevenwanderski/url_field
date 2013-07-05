#URL field

Sometimes you want to accept a URL field on one of your models. Take for example a Company model with a website field. You want the URL to always have "http://" but sometimes users enter http://, sometimes they dont.

Your app shouldn't care. Enter the URL field plugin.

This simple plugin allows you to enter either "http://www.example.com" or just "www.example.com" and in either case it will store "http://www.example.com"

Note: this is simply a Rails 3 gem version of Paul Campbell's Rails 2 plugin ("http://www.pabcas.com":http://www.pabcas.com). All gem logic is thanks to Paul!

##Install

Include the following in your Gemfile:

```ruby
gem 'url_field', :git => "git://github.com/wandoledzep/url_field.git"
```

##Usage

```ruby
class Company < ActiveRecord::Base
  url_field :website
end

@company = Company.new
@company.website = "www.example.com"
@company.save
@company.website # => "http://www.example.com"
```

Https? That works too (but one way only)
```ruby
@company.website = "https://www.example.com"
@company.save
@company.website # => "https://www.example.com"
```

##Extra

###Multiple fields

If you have multiple url_fields in a single model, just pass them as arguments to the url_field method, eg:

```ruby
class Company < ActiveRecord::Base
  url_field :website, :support_website, :more_info_website
end
```

###Access the correctly formed URL at any time

If you want access to the correctly formatted URL at any time (for example if you're passing it to URI.parse, before you save your model), you can prefix your URL field method name with "cleaned_" eg. "cleaned_website" if your field name was website:

```ruby
class Company < ActiveRecord::Base
  url_field :website
end

@company = Company.new
@company.website = "www.example.com"
@company.cleaned_website # => "http://www.example.com"
```