# encoding: utf-8

## (record) builder mini language / domain-specific language (dsl)

module CsvRecord

class Builder  # check: rename to RecordDefinition or RecordDsl or similar - why? why not?
  def initialize
    @clazz = Class.new(Base)
  end

  def field( name, type=:string )   ## note: type defaults to string
    puts "  adding field >#{name}< with type >#{type}<"
    @clazz.field( name, type )  ## auto-add getter and setter
  end

  def string( name )
    puts "  adding string field >#{name}<"
    field( name, :string )
  end

  def integer( name )  ## use number for alias for integer - why? why not???
    puts "  adding integer number field >#{name}<"
    field( name, :integer )
  end

  def float( name )
    puts "  adding float number field >#{name}<"
    field( name, :float )
  end


  def to_record   ## check: rename to just record or obj or finish or end something?
    @clazz
  end
end # class Builder
end # module CsvRecord