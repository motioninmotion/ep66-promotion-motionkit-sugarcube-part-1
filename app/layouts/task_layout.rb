class TaskLayout < MK::Layout
  def layout
    root :task do
      add UILabel, :notes
    end
  end

  def task_style
    background_color "#FFFFFF".uicolor # UIColor.whiteColor
  end

  def notes_style
    number_of_lines 0
    text_alignment :center.nsalignment # NSTextAlignmentCenter

    constraints do
      left 20
      right -20
    end
  end

  def add_top_layout_guide_constraint(controller)
    unless @constraint_added
      @constraint_added = true

      constraints(:notes) do
        top.equals(controller.topLayoutGuide, :bottom).plus(20)
      end
    end
  end
end
