# frozen_string_literal: true

require_relative 'project'

module Views
  # View for a a list of project entities
  class ProjectsList
    def initialize(projects)
      @projects = projects.map.with_index { |proj, i| Project.new(proj, i) }
    end

    def each(&show)
      @projects.each do |proj|
        show.call proj
      end
    end

    def any?
      @projects.any?
    end
  end
end
