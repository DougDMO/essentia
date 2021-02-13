class NewPatient
    
    def initialize
      @patient = PatientPage.new
    end

    def set_name(patient_name)
      @patient.person_name.set patient_name
    end 

    def fill_patient_form_basic

      set_fill_default

    end

    def set_fill_default
      @patient.person_email.set 'testepaciente@mailinator.com'
      @patient.person_telephone.set '48999999999'

      @patient.person_birth.set '05081983'
      @patient.person_birth.send_keys :escape

      @patient.gender_masc.click
      @patient.gender_masc.set(true)
      sleep 2
    end

    def fill_patient_basic_extra_valid
      set_fill_default

      @patient.not_email.click
      @patient.gender_fem.click
      @patient.gender_fem.set(true)

    end

    def upload(arquivo)
      arquivo.attach_file("paciente.jpg")
    end

    def fill_patient_adic_ext_valid

      sleep 2
      @patient.confirm_fileupload.click

      @patient.person_rg.set '360720717'
      @patient.person_cpf.set '63324866006'

      @patient.profession.set 'Test Analyst'
      @patient.mother_name.set 'Ana Lucia da Silva Teste'
      @patient.father_name.set 'José da Silva Teste'

      @patient.covenant.set 'UNIMED'
      @patient.number_of_wallet.set '1234567890'

      @patient.address_cep.set '88106518'
      @patient.person_logradouro.set 'Rua Teste Essentia'
      @patient.address_nr.set '000'

      @patient.address_compl.set 'casa 01'
      @patient.person_neighborhood.set 'Jardim Eldorado'
        #@patient.contact.set 'Contato Teste'

    end

    def edit_patient_adic_ext_valid

      sleep 2
      @patient.confirm_fileupload.click

      @patient.person_rg.set '360720717'
      @patient.person_cpf.set '63324866006'

      @patient.profession.set 'Test Analyst'
      @patient.mother_name.set 'Ana Lucia da Silva Teste'
      @patient.father_name.set 'José da Silva Teste'

      @patient.covenant.set 'UNIMED'
      @patient.number_of_wallet.set '1234567890'

    end

    def fill_patient_medic_ext_valid

      @patient.allergies.set 'Sem Alergias'
      @patient.allergies.send_keys :tab

      @patient.vegantrue.click
      @patient.vegantrue.set(true)

      sleep 2

      @patient.veganfalse.click
      @patient.veganfalse.set(true)

      @patient.annotations.set 'Sem Observações Médicas'

      sleep 3

    end

    def fill_patient_medic_ext_valid_C

      @patient.allergies.set 'Sem Alergias'
      @patient.allergies.send_keys :tab

      @patient.vegantrue.click
      @patient.vegantrue.set(true)

      sleep 2

      @patient.veganfalse.click
      @patient.veganfalse.set(true)

      sleep 3

    end

    def edit_patient_form_basic
      @patient.person_email.set 'testepacienteupdate@mailinator.com'
      @patient.person_telephone.set '48999999999'
    end


    def edit_patient_profile_form
      @patient.person_email.set 'testepacienteupdate@mailinator.com'
      @patient.person_telephone.set '48999999999'
    end

    def not_email
      @patient.not_email.click
    end

    def secondform
      @patient.info_additional.click
      sleep 3
    end

    def back
      @patient.back.click
      sleep 3
    end

    def save_patient
      @patient.save_button.click
      sleep 3
    end 
end 