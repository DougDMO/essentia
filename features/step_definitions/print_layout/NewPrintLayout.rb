class NewPrintLayout
    
    def initialize
      @layout = PrintLayoutPage.new
    end

    def set_name(layout_name)
      @layout.title_name.set layout_name
    end

    def fill_form_default
      @layout.print_default.set(true)

      @layout.name_pdefault.set "Médico Default"
      @layout.specialty_pdefault.set "Especialidade Default"
      @layout.abbreviation_pdefault.set "Default"
      @layout.number_council_pdefault.set "0050"

      @layout.footer.click
      (@layout.fileupload_footer).attach_file("rodape.png")
      sleep 2
      @layout.confirm_fileupload_footer.click
      sleep 2

      @layout.show_date_default.click
      @layout.show_phone_default.click
      @layout.show_email_default.click
    end

    def fill_form_default_incomplete
      @layout.print_default.set(true)

      @layout.name_pdefault.set "Médico Default"
      @layout.specialty_pdefault.set "Especialidade Default"
      @layout.abbreviation_pdefault.set "Default"
      @layout.number_council_pdefault.set "0050"

      @layout.footer.click

    end

    def edit_fill_form_default

      @layout.print_default.set(true)

      @layout.name_pdefault.set "Médico Default Update"
      @layout.specialty_pdefault.set "Especialidade Default Update"
      @layout.abbreviation_pdefault.set "Default Update"
      @layout.number_council_pdefault.set "0050-U"

      @layout.footer.click

      @layout.show_date_default.click
      @layout.show_phone_default.click
      @layout.show_email_default.click
    end

    def fill_form_letterhead
      @layout.print_letterhead.set(true)

      @layout.top_margin.set "4"
      @layout.bottom_margin.set "5"

      @layout.show_date_letterhead.click
      @layout.show_phone_letterhead.click
      @layout.show_email_letterhead.click
    end

    def edit_fill_form_letterhead

      @layout.print_letterhead.set(true)

      @layout.top_margin.set "3"
      @layout.bottom_margin.set "2"

      @layout.show_date_letterhead.click
      @layout.show_phone_letterhead.click
      @layout.show_email_letterhead.click
    end

    def fill_form_image
      @layout.print_image.set(true)

      (@layout.fileupload_image).attach_file("superior.png")
      sleep 2
      @layout.confirm_fileupload_image.click
      sleep 2

      @layout.footer.click
      (@layout.fileupload_footer).attach_file("rodape.png")
      sleep 2
      @layout.confirm_fileupload_footer.click
      sleep 2

      @layout.show_date_image.click
      @layout.show_phone_image.click
      @layout.show_email_image.click
    end

    def edit_fill_form_image

      @layout.print_image.set(true)

      @layout.footer.click

      @layout.show_date_image.click
      @layout.show_phone_image.click
      @layout.show_email_image.click
    end

    def back
      @layout.back.click
      sleep 2
    end

    def preview
      @layout.button_preview.click
      sleep 2
    end

    def save
      @layout.save.click
      sleep 5
    end

  end