#emememememm
#MMDMMDMDDM
load 'drone.rb'

puts "Drones do Caribe v1.1"
puts "Digite a coordenada x limite da ilha:"
lim_x = gets.chomp.to_i

puts "Digite a coordenada y limite da ilha:"
lim_y = gets.chomp.to_i

loop do
  puts "Digite o par ordenado da posicao inicial do drone"
  @par = gets.chomp.split(' ')
  if(@par.length != 3)
    puts "Entrada invalida"
  end
  break if(@par.length == 3)
end

drone = Drone.new(@par[0].to_i, @par[1].to_i, @par[2], lim_x, lim_y)

puts "Digite a sequencia de movimentos do drone:"

cmd = gets.chomp.split('')

cmd.each do |x| drone.command(x) end

drone.status





