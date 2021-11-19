class Game
  TOTAL_ERRORS_ALLOWED = 7

  def initialize(word)
    @letters = word.chars
    @user_guesses = []
  end

  def errors
    @user_guesses - normalize_word
  end

  def errors_made
    errors.length
  end

  def errors_allowed
    TOTAL_ERRORS_ALLOWED - errors_made
  end

  def letters_to_guess
    @letters.map do |letter|
      if @user_guesses.include?(normalize_letter(letter))
        letter
      end
    end
  end

  def lost?
    errors_allowed == 0
  end

  def normalize_letter(letter)
    case letter
    when "Ё"
      "Е"
    when "Й"
      "И"
    else
      letter
    end
  end

  def normalize_word
    @letters.map { |letter| normalize_letter(letter) }
  end

  def over?
    won? || lost?
  end

  def play!(letter)
    if !over? && !@user_guesses.include?(normalize_letter(letter))
      @user_guesses << normalize_letter(letter)
    end
  end

  def word
    @letters.join
  end

  def won?
    (normalize_word - @user_guesses).empty?
  end
end
