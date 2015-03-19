Country.delete_all
Country.create(:id=>61,:iso=>"DO",:name=>"Dominican Republic")

City.delete_all
City.create(:id=>735,:iso=>"27",:name=>"Valverde",:country_id=>61)
City.create(:id=>736,:iso=>"26",:name=>"Santiago Rodríguez",:country_id=>61)
City.create(:id=>737,:iso=>"25",:name=>"Santiago",:country_id=>61)
City.create(:id=>738,:iso=>"24",:name=>"San Pedro de Macorís",:country_id=>61)
City.create(:id=>739,:iso=>"23",:name=>"San Juan",:country_id=>61)
City.create(:id=>740,:iso=>"33",:name=>"San Cristóbal",:country_id=>61)
City.create(:id=>741,:iso=>"21",:name=>"Sánchez Ramírez",:country_id=>61)
City.create(:id=>742,:iso=>"20",:name=>"Samaná",:country_id=>61)
City.create(:id=>743,:iso=>"19",:name=>"Hermanas Mirabal",:country_id=>61)
City.create(:id=>744,:iso=>"18",:name=>"Puerto Plata",:country_id=>61)
City.create(:id=>745,:iso=>"35",:name=>"Peravia",:country_id=>61)
City.create(:id=>746,:iso=>"16",:name=>"Pedernales",:country_id=>61)
City.create(:id=>747,:iso=>"34",:name=>"Distrito Nacional",:country_id=>61)
City.create(:id=>748,:iso=>"32",:name=>"Monte Plata",:country_id=>61)
City.create(:id=>749,:iso=>"15",:name=>"Monte Cristi",:country_id=>61)
City.create(:id=>750,:iso=>"31",:name=>"Monseñor Nouel",:country_id=>61)
City.create(:id=>751,:iso=>"14",:name=>"María Trinidad Sánchez",:country_id=>61)
City.create(:id=>752,:iso=>"30",:name=>"La Vega",:country_id=>61)
City.create(:id=>753,:iso=>"12",:name=>"La Romana",:country_id=>61)
City.create(:id=>754,:iso=>"10",:name=>"La Altagracia",:country_id=>61)
City.create(:id=>755,:iso=>"09",:name=>"Independencia",:country_id=>61)
City.create(:id=>756,:iso=>"29",:name=>"Hato Mayor",:country_id=>61)
City.create(:id=>757,:iso=>"08",:name=>"Espaillat",:country_id=>61)
City.create(:id=>758,:iso=>"28",:name=>"El Seíbo",:country_id=>61)
City.create(:id=>759,:iso=>"11",:name=>"Elías Piña",:country_id=>61)
City.create(:id=>760,:iso=>"06",:name=>"Duarte",:country_id=>61)
City.create(:id=>761,:iso=>"04",:name=>"Dajabón",:country_id=>61)
City.create(:id=>762,:iso=>"03",:name=>"Barahona",:country_id=>61)
City.create(:id=>763,:iso=>"02",:name=>"Baoruco",:country_id=>61)
City.create(:id=>764,:iso=>"01",:name=>"Azua",:country_id=>61)
City.create(:id=>765,:iso=>"36",:name=>"San José de Ocoa",:country_id=>61)
City.create(:id=>766,:iso=>"37",:name=>"Santo Domingo",:country_id=>61)

Position.delete_all

Position.create!(:name => "Portero", :short_name => "POR")
Position.create!(:name => "Defensa Central", :short_name => "DC")
Position.create!(:name => "Defensa de Corte (Stopper)", :short_name => "DDC")
Position.create!(:name => "Defensa libre por el centro (Libero)", :short_name => "DLC")
Position.create!(:name => "Defensa Lateral", :short_name => "DL")
Position.create!(:name => "Defensa Libre por la Banda (Carrilero)", :short_name => "DM")
Position.create!(:name => "Defensa", :short_name => "DEF")
Position.create!(:name => "Mediocampista", :short_name => "MD")
Position.create!(:name => "Mediocampista Ofensivo", :short_name => "MCO")
Position.create!(:name => "Mediocampista Central", :short_name => "MC")
Position.create!(:name => "Mediocampista Defensivo", :short_name => "MCD")
Position.create!(:name => "Volante", :short_name => "V")
Position.create!(:name => "Volante Lateral", :short_name => "LV")
Position.create!(:name => "Volante de Contención", :short_name => "VCT")
Position.create!(:name => "Volante de Salida", :short_name => "VS")
Position.create!(:name => "Volante por la Banda", :short_name => "VB")
Position.create!(:name => "Volante Mixto", :short_name => "VM")
Position.create!(:name => "Volante de Creación", :short_name => "VCR")
Position.create!(:name => "Volante con Llegada", :short_name => "VLI")
Position.create!(:name => "Media Punta", :short_name => "MP")
Position.create!(:name => "Punta Neto", :short_name => "PN")
Position.create!(:name => "Segunda Punta", :short_name => "SP")
Position.create!(:name => "Delantero Central", :short_name => "DC")
Position.create!(:name => "Extremo", :short_name => "PE")
Position.create!(:name => "Extremo Derecho", :short_name => "PD")
Position.create!(:name => "Extremo Izquierdo", :short_name => "PI")
Position.create!(:name => "Puntero", :short_name => "PP")
Position.create!(:name => "Delantero", :short_name => "D")

TechRole.delete_all

TechRole.create!(:name => "Director Deportivo", :short_name => "DP")
TechRole.create!(:name => "Director Técnico", :short_name => "DT")
TechRole.create!(:name => "Asistente Técnico")
TechRole.create!(:name => "Segundo Entrenador")
TechRole.create!(:name => "Médico")
TechRole.create!(:name => "Preparador Físico")
TechRole.create!(:name => "Fisioterapeuta")
TechRole.create!(:name => "Utilero")
TechRole.create!(:name => "Masajista")
TechRole.create!(:name => "Entrenador de Porteros")
TechRole.create!(:name => "Entrenador de Defensas")
TechRole.create!(:name => "Entrenador de Mediocampistas")
TechRole.create!(:name => "Entrenador de Delanteros")

PlayType.delete_all

PlayType.create!(:name => "¡¡¡Goooooool!!!", :value => 1, :commentary => "de")

PlayType.create!(:name => "Tiro a Puerta", :value => 2, :commentary => "ha realizado un")
PlayType.create!(:name => "Tiro Desviado", :value => 3, :commentary => "ha realizado un")
PlayType.create!(:name => "Tiro de Esquina", :value => 4, :commentary => "ha realizado un")
PlayType.create!(:name => "Tiro Libre", :value => 5, :commentary => "ha realizado un")
PlayType.create!(:name => "Tiro de Penal", :value => 6, :commentary => "ha realizado un")

PlayType.create!(:name => "Penal Fallado", :value => 13, :commentary => "ha realizado un")

PlayType.create!(:name => "Falta", :value => 7, :commentary => "ha realizado una")
PlayType.create!(:name => "Fuera de Juego", :value => 8, :commentary => "ha recibido un")

PlayType.create!(:name => "Remate Parado", :value => 9, :commentary => "ha hecho")
PlayType.create!(:name => "Fuera de Juego", :value => 8, :commentary => "ha recibido un")

PlayType.create!(:name => "Tarjeta Roja", :value => 11, :commentary => "ha recibido")
PlayType.create!(:name => "Tarjeta Amarilla", :value => 12, :commentary => "ha recibido")

PlayType.create!(:name => "Saque de Banda", :value => 21, :commentary => "ha realizado un")
PlayType.create!(:name => "Saque de Puerta", :value => 22, :commentary => "ha realizado un")

PlayType.create!(:name => "Jugada Peligrosa", :value => 23, :commentary => "ha realizado una")

PlayType.create!(:name => "Fairplay", :value => 101, :commentary => "ha realizado un")

Season.delete_all

season = Season.create!(:country_id => 61, :name => "Liga Dominicana de Fútbol", :year => 2015)

Round.delete_all

(1..18).each do |number|
    Round.create!(:name => "Jornada " + number.to_s, :season => season)
end

TechnicalStaff.delete_all
Player.delete_all
Person.delete_all
#
#  id                     :integer          not null, primary key
#  first_name             :string(255)
#  middle_name            :string(255)
#  last_name              :string(255)
#  sur_name               :string(255)
#  sex                    :string(255)
#  identification_number  :string(255)
#  birthdate              :date
#  phone                  :string(255)
#  mobile                 :string(255)
#  additional_phone       :string(255)
#  email                  :string(255)
#  salary                 :decimal(, )
#  additional_information :text
#  photo                  :string(255)
#  city_id                :integer
#  created_at             :datetime
#  updated_at             :datetime
#  country_id             :integer
#
Person.create!(first_name: "", middle_name: "", last_name: "", sur_name: "", sex: "", 
                identification_number: "", birthdate: "", phone: "", mobile: "",
                additional_phone: "", email: "", salary: nil, additional_information: "",
                photo: "", city_id: nil, country_id: nil)