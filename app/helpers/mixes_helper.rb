module MixesHelper
	require 'embedly'
	require 'json'


  def embedly(url)

    embedly_api = Embedly::API.new :key => 'd30e91b2207a40469be014c739c2ddb3', :user_agent => 'Mozilla/5.0 (compatible; mytestapp/1.0; my@email.com)'
    obj = embedly_api.oembed :url => url
    @mix.image =  obj[0].thumbnail_url
    @mix.title = obj[0].title
    @mix.author = obj[0].author_name

  end

end
