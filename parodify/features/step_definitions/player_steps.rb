Dado('Login com {string} e {string}') do |email, password|
  visit 'http://parodify.qaninja.com.br'
  click_on 'Login'

  find('#user_email').set email
  find('#user_password').set password
  click_on 'Log in'
end

Dado('que eu gosto de muito {string}') do |cat|
  find("a[href='/search/new']").click
  find("img[src$='#{cat.downcase}.png']").click
end

Quando('toco a seguinte canção:') do |table|
  @parody = table.rows_hash

  find('a', text: @parody[:banda]).click # encontra a banda e acessa a página da banda

  song = find('.song-item', text: @parody[:parodia]) # encontra a música
  song.find('.fa-play-circle').click # encontra o botão e toca a música
end

Então('essa paródia deve ficar em modo de reprodução') do
  song_play = find('.playing') # busca o elemento que está em execução
  expect(song_play).to have_text @parody[:parodia] # neste elemento existe o texto

  sleep 10 # temporário
end
