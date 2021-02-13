class NewFormulas
    
    def initialize
      @formulas = FormulasPage.new
    end

    def set_name(formula_name)
      @formulas.name.set formula_name
    end

    def fill_form
      @formulas.key_words.set "Fórmula básica 199"
      @formulas.key_words.send_keys :enter
      @formulas.restrict_true.click
      @formulas.html1.click
      sleep 2
    end

    def edit_fill_form
      @formulas.key_words.set "Fórmula básica 195"
      @formulas.key_words.send_keys :enter
      @formulas.restrict_false.click
      @formulas.html1.click
      sleep 2
    end

    def back
      @formulas.back.click
      sleep 2
    end

    def save
      @formulas.save.click
      sleep 3
    end

  end