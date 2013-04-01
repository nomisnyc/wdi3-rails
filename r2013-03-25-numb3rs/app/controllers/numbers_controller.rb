class NumbersController<ApplicationController

  def index
  end

  def show
   letters = Word.find(params[:id]).split.map do |letter|
     Code.first.characters.where(:symbol => letter).first.hex
    @number.hex2bin(letter)
   end
  end

end
