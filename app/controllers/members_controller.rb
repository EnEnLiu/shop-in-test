class MembersController  < ApplicationController

  def index
  end

  def new
    @member = Member.new
  end

  def create
    @member = Member.new(params[:member])

    if @member.save
      redirect_to '/members', notice: '成功加入會員'
    else
      render :new
    end
  end


end