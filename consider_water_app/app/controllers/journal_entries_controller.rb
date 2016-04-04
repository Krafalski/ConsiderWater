class JournalEntriesController < ApplicationController

  def index
    @journal_entries = JournalEntry.all
  end

  def show
    #@user = User.find(params[:id])
    @journal_entry = JournalEntry.find(params[:id])
  end

  def new
    @journal_entry = JournalEntry.new
    @users = User.all
  end

  def create
    @journal_entry = User.find(session[:current_user_id]).journal_entries.build(journal_entry_params)
    if @journal_entry.save
      flash[:success] = "Journal Entry created"
      redirect_to journal_entries_path(@journal_entry)
    else
    end
  end


  # def create
  #   # @user = User.find(params[:id])
  #   @journal_entry = JournalEntry.new(journal_entry_params)
  #   if @journal_entry.save
  #     redirect_to journal_entries_path(@journal_entry)
  #   else
  #   redirect_to root_path
  # end
  # end

  # def create
  #   @journal_entry = @user.journal_entries.create(journal_entry_params)
  #   redirect_to root_path
  # end

  def edit
    #@user = User.all
    @journal_entry = JournalEntry.find(params[:id])
  end

  def update
    # @user = User.find(params[:id])
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
