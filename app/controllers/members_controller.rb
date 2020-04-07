class MembersController  < ApplicationController

  def index
    @member = Member.new
  end

  def new
    @member = Member.new
  end

  def list
    find_member
  end

  

  def show
    find_member
  end

  def create
    @member = Member.new(member_params)

    if @member.save
      redirect_to '/members/list', notice: '成功加入會員'
    else
      render :index
    end
  end
  
  private
  def member_params
    params.require(:member).permit(:email, :password, :name)
  end

  def find_member
    @member = Member.find_by(params[:id])
  end


end