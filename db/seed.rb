require ('pg')
require( 'pry-byebug' )
require_relative('../models/student')
require_relative('../models/house')
require_relative('sql_runner')

[
 {"name" => "Griffydoor", "image_url" => "http://doortechincca.com/script_images/image_2.jpg"},
 {"name" => "Hawaiian", "image_url" => "https://media.giphy.com/media/nVgs5srxDxNWE/giphy.gif"},
 {"name" => "Snagglepuss", "image_url" => "http://static.tvtropes.org/pmwiki/pub/images/snagglepuss2_1476.jpg"},
 {"name" => "Raisinbran", "image_url" => "http://www.passionforsavings.com/content/uploads/2012/07/321.gif"}
 ].each{ |house| House.new(house).save }