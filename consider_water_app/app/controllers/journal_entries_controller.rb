class JournalEntriesController < ApplicationController

  def index
    @journal_entries = User.find(session[:current_user_id]).journal_entries
  end

  def show
    #@user = User.find(params[:id])
    @journal_entry = JournalEntry.find(params[:id])
  end

  def new
    @journal_entry = JournalEntry.new
    @users = User.all
  end
# use .build rather than .new when new things have an association?
  def create
    @journal_entry = User.find(session[:current_user_id]).journal_entries.build(journal_entry_params)
    if @journal_entry.save
      redirect_to journal_entries_path(@journal_entry)
    else
      #some sort of error message?
    end
  end


  def edit
    @journal_entry = JournalEntry.find(params[:id])
  end

  def update
    @journal_entry = JournalEntry.find(params[:id])
    @journal_entry.update(journal_entry_params)
    redirect_to journal_entries_path
  end

  def destroy
    @journal_entry = JournalEntry.find(params[:id])
    @journal_entry.destroy
    redirect_to journal_entries_path
  end

private
  def journal_entry_params
    params.require(:journal_entry).permit(:entry_title, :entry_main, :user, :id)
  end

end
