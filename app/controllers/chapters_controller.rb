class ChaptersController < ApplicationController
   before_action :set_chapter, only: [:show, :edit, :update, :destroy]
   before_filter :authenticate_user!
   before_filter :ensure_admin

   def index
     @chapters = Chapter.all
   end

   def show
   end

   def new
     @chapter = Chapter.new
   end

   def edit
   end

   def create
     @chapter = Chapter.new(chapter_params)
     if @chapter.save
       redirect_to @chapter, notice: 'Chapter was successfully created.'
     else
       render action: 'new'
     end
   end

   def update
     if @chapter.update(chapter_params)
       redirect_to @chapter, notice: 'Chapter was successfully updated'
     else
       render action: 'edit'
     end
   end

   def destroy
     @chapter.destroy
     redirect_to chapters_url
   end

   private
   # Use callbacks to share common setup or constraints between actions.
    def set_chapter
      @chapter = Chapter.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def chapter_params
      params.require(:chapter).permit(:name, :salesforce_id, :state_program)
    end


end
