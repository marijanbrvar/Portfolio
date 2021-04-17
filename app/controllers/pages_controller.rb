# frozen_string_literal: true

class PagesController < ApplicationController
  def home
    @posts = Blog.all
<<<<<<< HEAD
=======
    @skills = Skill.all
>>>>>>> model-generator
  end

  def about; end

  def contact; end
end
