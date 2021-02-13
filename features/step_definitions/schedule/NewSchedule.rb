class NewSchedule
    
    def initialize
      @schedule = SchedulePage.new
      @patient = PatientPage.new
    end
  
    def new_schedule
      @schedule.new_schedule_button.click
    end

    def fill_current_date_schedule
      @schedule.start_time.set  (Time.now-120).strftime("%H:%M")
      @schedule.end_time.set (Time.now+3480).strftime("%H:%M")
      sleep 2
    end

    def fill_back_time_schedule

      @schedule.start_time.set  (Time.now-120).strftime("%H:%M")
      @schedule.end_time.set (Time.now+3480).strftime("%H:%M")
    end

    def fill_schedule_form

      @schedule.procedure.click
      @schedule.procedure_field.set 'Consulta'
      @schedule.procedure_field.send_keys :enter

      @dataatual = Date.today
      @dataatual = @dataatual.strftime("%d/%m/%Y")
      @schedule.start_date.click
      @schedule.start_date1.click
      @schedule.start_date.set @dataatual
      @schedule.start_date.send_keys :escape

      @schedule.start_time.set  (Time.now+3800).strftime("%H:%M")
      @schedule.end_time.set (Time.now+7500).strftime("%H:%M")

      sleep 3

      @schedule.add_patient.click

      sleep 3

      #Create a new Patient
      @patient_form = NewPatient.new
      @patient_form.set_name('A Patient to schedule '+ rand(9999).to_s)
      @patient_form.fill_patient_form_basic
      @patient_form.save_patient
      sleep 2
    end

    def fill_schedule_form_only

      @schedule.procedure.click
      @schedule.procedure_field.set 'Consulta'
      @schedule.procedure_field.send_keys :enter

      @dataatual = Date.today
      @dataatual = @dataatual.strftime("%d/%m/%Y")
      @schedule.start_date.set @dataatual
      @schedule.start_date.send_keys :escape

      @schedule.start_time.set  '09:10'
      @schedule.end_time.set '10:00'

      sleep 3

    end

    def fill_schedule_form_validations

      @schedule.procedure.click
      @schedule.procedure_field.set 'Consulta'
      @schedule.procedure_field.send_keys :enter

      @dataatual = Date.today
      @dataatual = @dataatual.strftime("%d/%m/%Y")
      @schedule.start_date.click
      @schedule.start_date1.click
      @schedule.start_date.set @dataatual
      @schedule.start_date.send_keys :escape

      @schedule.start_time.set  (Time.now+3800).strftime("%H:%M")
      @schedule.end_time.set (Time.now+7500).strftime("%H:%M")

      @schedule.add_patient.click

      sleep 3

      #Create a new Patient
      @patient_form = NewPatient.new
      @patient_form.set_name('A Patient to schedule '+ rand(9999).to_s)
      @patient_form.fill_patient_form_basic
      @patient_form.not_email
      @patient_form.save_patient

      sleep 3

      # if @schedule.send_wpp.selected? == true
      #  raise Exception.new "Botão do Whatsapp está desabilitado incorretamente."
      #end

      #if @schedule.send_email.selected? == false
      #  raise Exception.new "Botão de e-mail está desabilitado incorretamente."
      #end

      # if @schedule.add_orientation.disabled? == false
      #  raise Exception.new "Botão de Orientação está desabilitado incorretamente."
      #end
      #if @schedule.add_pre_consult.disabled? == true
      #  raise Exception.new "Botão de pré-consulta está desabilitado incorretamente."
      #end

    end

    def fill_check_schedule_form

      @schedule.start_date.click
      sleep 1
      @schedule.start_date1.click
      sleep 1
      @schedule.start_date.set '00/00/0000'
      sleep 1
      @schedule.start_date.send_keys :escape
      @schedule.start_time.set  ''
      @schedule.end_time.set ''

    end


    def fill_schedule_form_edit
      @schedule.procedure.click
      @schedule.procedure_field.set 'Primeira Consulta'
      @schedule.procedure_field.send_keys :enter
      sleep 3

    end

    def edit_date_2_schedule

      @dataatual = Date.today + 2
      @dataatual = @dataatual.strftime("%d/%m/%Y")

      @schedule.start_date.click
      sleep 1
      @schedule.start_date1.click
      sleep 1
      @schedule.start_date.set @dataatual
      @schedule.start_date.send_keys :escape
    end

    def edit_date__1_schedule

      @dataatual = Date.today + 1
      @dataatual = @dataatual.strftime("%d/%m/%Y")

      @schedule.start_date.click
      sleep 1
      @schedule.start_date1.click
      sleep 1
      @schedule.start_date.set @dataatual
      @schedule.start_date.send_keys :escape
    end

    def edit_date_schedule

      @dataatual = Date.today
      @dataatual = @dataatual.strftime("%d/%m/%Y")

      @schedule.start_date.click
      sleep 1
      @schedule.start_date1.click
      sleep 1
      @schedule.start_date.set @dataatual
      @schedule.start_date.send_keys :escape
    end

    def save_schedule
      @schedule.save_button.click
    end

  end