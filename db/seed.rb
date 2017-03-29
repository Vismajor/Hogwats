require ('pg')
require( 'pry-byebug' )
require_relative('../models/student')
require_relative('../models/house')
require_relative('sql_runner')

["Griffydoor", "Hawaiian", "Snagglepuss", "Raisinbran"].each{ |name| House.new({'name' => name}).save }