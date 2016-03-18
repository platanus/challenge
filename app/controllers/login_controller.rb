require 'pry'

class LoginController < ApplicationController
  def index
    if cookies['password_hash'].nil?
      hash = encrypt(list[rand(list.length)])
      cookies['password_hash'] = hash
      session['password_hash'] = hash
    end

    render :index
  end

  def home
    if cookies['jellyfish'] == 'bananas'
      index
    else
      render 'regular.html', layout: false
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
    Digest::SHA1.hexdigest(string)
  end

  def list
    File.read(list_path).split("\n")
  end

  def list_path
    Rails.application.assets["pokemons.txt"].pathname
  end
end
