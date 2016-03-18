require 'pry'

class LoginController < ApplicationController
  def index
    if cookies['password_hash'].nil?
      hash = encrypt(list[rand(list.length)])
      cookies['password_hash'] = hash
      session['password_hash'] = hash
    end
  end

  def home
    if cookies['jellyfish'] == 'bananas'
      render :index
    else
      render 'regular.html'
    end
  end

  def check
    if session['attempts'].nil?
      session['attempts'] = 0
    end
    session['attempts'] = session['attempts'].to_i + 1

    @attempts = session['attempts']
    @result = (encrypt(params[:password]) == session['password_hash'])
    render "index"
  end

  private

  def encrypt(string)
    Digest::SHA1.base64digest(string)
  end

  def list
    ['Storm','Cyclops','Wolverine']
  end
end
