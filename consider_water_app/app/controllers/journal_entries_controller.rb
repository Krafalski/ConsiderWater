class JournalEntriesController < ApplicationController

  def index
    current_user
    @journal_entries = User.find(session[:current_user_id]).journal_entries.order(created_at: :desc)
  end

  def show
    current_user
    @journal_entry = JournalEntry.find(params[:id])
  end

  def new
    current_user
    @journal_entry = current_user.journal_entries.new
  end

# use .build rather than .new when new things have an association?
  def create
    @journal_entry = current_user.journal_entries.build(journal_entry_params)
    if @journal_entry.save
      redirect_to user_journal_entries_path(@journal_entry)
    else
      #some sort of error message?
    end
  end


  def edit
    @journal_entry = current_user.journal_entries.find(params[:id])
    # @journal_entry = JournalEntry.find(params[:id])
  end

  def update
    @journal_entry = JournalEntry.find(params[:id])
    @journal_entry.update(journal_entry_params)
    redirect_to user_journal_entries_path
  end

  def destroy
    @journal_entry = JournalEntry.find(params[:id])
    @journal_entry.destroy
    redirect_to user_journal_entries_path
  end

private
  def journal_entry_params
    params.require(:journal_entry).permit(:entry_title, :entry_main, :user_id, :id)
  end

end
