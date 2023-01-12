# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create statuses 
FormState.create(name: "Draft")
FormState.create(name: "Published")
FormState.create(name: "Archived")

#Create forms
Form.create(name: "Test Form", form_state_id: 1)
Form.create(name: "Test Form 2", form_state_id: 1)
Form.create(name: "Test Form 3", form_state_id: 1)

#Create form sections
FormSection.create(name: "Section 1", form_id: 1)
FormSection.create(name: "Section 2", form_id: 1)
FormSection.create(name: "Section 3", form_id: 1)

#Create element types
FormElementQuestionType.create(name: "Text")
FormElementQuestionType.create(name: "Number")
FormElementQuestionType.create(name: "Date")
FormElementQuestionType.create(name: "Time")
FormElementQuestionType.create(name: "Checkbox")
FormElementQuestionType.create(name: "Radio")
FormElementQuestionType.create(name: "Dropdown")
FormElementQuestionType.create(name: "File Upload")
FormElementQuestionType.create(name: "Paragraph")

#Create form elements
FormElement.create(
    title: "Text Field",
    subtitle: "This is a text field",
    form_section_id: 1,
    form_element_question_type_id: 1,
    data: {
        "required": true,
        "label": "Element 1",
        "placeholder": "Enter text here",
        "help_text": "This is a text field"
    }
)

FormElement.create(
    title: "Number Field",
    subtitle: "This is a number field",
    form_section_id: 1,
    form_element_question_type_id: 2,
    data: {
        "required": true,
        "label": "Element 2",
        "placeholder": "Enter number here",
        "help_text": "This is a number field"
    }
)

FormElement.create(
    title: "Date Field",
    subtitle: "This is a date field",
    form_section_id: 1,
    form_element_question_type_id: 3,
    data: {
        "required": true,
        "label": "Element 3",
        "placeholder": "Enter date here",
        "help_text": "This is a date field"
    }
)

FormElement.create(
    title: "Time Field",
    subtitle: "This is a time field",
    form_section_id: 1,
    form_element_question_type_id: 4,
    data: {
        "required": true,
        "label": "Element 4",
        "placeholder": "Enter time here",
        "help_text": "This is a time field"
    }
)