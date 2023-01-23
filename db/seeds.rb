# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Create statuses 
FormState.create!(name: "Draft")
FormState.create!(name: "Published")
FormState.create!(name: "Archived")
FormState.create!(name: "Unpublished")

#Create forms
Form.create!(name: "Test Form", form_state_id: 1, description: "This is a test form")

#Create FormSectionTypes
FormSectionType.create!(name: "Page")
FormSectionType.create!(name: "Section")
FormSectionType.create!(name: "Workflow")

#Create form sections
FormSection.create!(title: "Section 1", subtitle: "First Page", form_id: 1, form_section_type_id: 1)
FormSection.create!(title: "Section 2", subtitle: "Second Page", form_id: 1, form_section_type_id: 1)
FormSection.create!(title: "Section 3", subtitle: "Third Page", form_id: 1, form_section_type_id: 1)

#Create element types
FormElementQuestionType.create!(name: "Text")
FormElementQuestionType.create!(name: "Number")
FormElementQuestionType.create!(name: "Date")
FormElementQuestionType.create!(name: "Time")
FormElementQuestionType.create!(name: "Checkbox")
FormElementQuestionType.create!(name: "Radio")
FormElementQuestionType.create!(name: "Dropdown")
FormElementQuestionType.create!(name: "File Upload")
FormElementQuestionType.create!(name: "Paragraph")

#Create form elements
FormElement.create!(
    title: "Text Field",
    subtitle: "This is a text field",
    form_id: 1,
    form_section_id: 1,
    form_element_question_type_id: 1,
    label: "Element 1",
    required: true,
    position: 1,
    data: {
        "placeholder": "Enter text here",
        "help_text": "This is a text field"
    }
)

FormElement.create!(
    title: "Number Field",
    subtitle: "This is a number field",
    form_id: 1,
    form_section_id: 1,
    form_element_question_type_id: 2,
    label: "Element 2",
    required: false,
    position: 2,
    data: {
        "placeholder": "Enter number here",
        "help_text": "This is a number field"
    }
)

FormElement.create!(
    title: "Date Field",
    subtitle: "This is a date field",
    form_id: 1,
    form_section_id: 2,
    form_element_question_type_id: 3,
    label: "Element 3",
    required: true,
    position: 1,
    data: {
        "placeholder": "Enter date here",
        "help_text": "This is a date field"
    }
)

FormElement.create!(
    title: "Time Field",
    subtitle: "This is a time field",
    form_id: 1,
    form_section_id: 3,
    form_element_question_type_id: 4,
    label: "Element 4",
    required: true,
    position: 1,
    data: {
        "placeholder": "Enter time here",
        "help_text": "This is a time field"
    }
)