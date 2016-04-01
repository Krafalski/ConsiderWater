class JournalEntriesController < ApplicationController

  def index
    @journal_entries = JournalEntry.all
  end

  def show
    @journal_entry = JournalEntry.find(params[:id])
  end

  def new
    @journal_entry = JournalEntry.new
  end

  def create
    @journal_entry = JournalEntry.create(journal_entry_params)
    redirect_to root_path
  end

  def edit
    @journal_entry = JournalEntry.find(params[:id])
  end

  def update
    @journal_entry = JournalEntry.find(params[:id])
    @journal_entry.update(journal_entry_params)
    redirect_to root_path
  end

  def destroy
    @journal_entry = JournalEntry.find(params[:id])
    @journal_entry.destroy
    redirect_to root_path
  end

  def journal_entry_params
    params require(:entry_main).permit(:entry_title)
  end
  
end
