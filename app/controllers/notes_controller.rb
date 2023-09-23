class NotesController < ApplicationController
  before_action :set_note, only: %i[show]
  def index
    @notes = Note.all
  end

  def show
  end

  private

  def set_note
    @note = Note.find(params[:id])
  end

  def new
    @note = Note.new
  end
end
