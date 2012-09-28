class SubjectsController < InheritedResources::Base
  belongs_to :school

  def create
    super do |success, failure|
      success.html do
        redirect_to subjects_path
      end
    end
  end
 
  def update
    super do |success, failure|
      success.html do
        redirect_to subjects_path
      end
    end
  end

  def destroy
    super do |success, failure|
      success.html do
        redirect_to subjects_path
      end
    end
  end

  protected
    def begin_of_association_chain
      @school = current_user.school
    end
end
