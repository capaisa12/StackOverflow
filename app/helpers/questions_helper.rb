module QuestionsHelper
  def form_title
    @questions.new_record? ? "Registrar Pregunta" : "Modificar Pregunta"
  end
end
