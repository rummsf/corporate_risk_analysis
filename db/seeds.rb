#Location.create!(
#[
#{country:"United Kingdom",state:"London",city:"London",address:"30 Fenchurch Street",postcode:"EC3M 3BD"},
#{country:"United Kingdom",state:"Cambridgeshire",city:"Cambridge",address:"1 Francis Crick Avenue, Cambridge Biomedical Campus",postcode:"CB2 0AA"},
#{country:"United States",state:"Pennsylvania",city:"Philadelphia",address:"1500 Market St 35th Floor",postcode:"19102-0"},
#{country:"United States",state:"California",city:"Burbank",address:"500 S Buena Vista St",postcode:"91521"},
#{country:"United States",state:"New York",city:"New York",address:"111 Eighth Avenue",postcode:"10011"},
#{country:"United Kingdom",state:"London",city:"London",address:"1 St James's Square",postcode:"SW1Y 4PD"},
#{country:"United Kingdom",state:"Surrey",city:"Weybridge",address:"The Heights, Brooklands",postcode:"KT13 0XP"}
#]
#)
#
#Company.create!([{name:"Accenture (UK) Limited",company_number: "4757301",status:"active",jurisdiction_code: "gb",incorporation_date: "2003-05-08", location_id: 1},
#{name:"Astra Zeneca plc",company_number: "2723534",status:"active",jurisdiction_code: "gb",incorporation_date: "1992-06-17", location_id: 2},
#{name:"Comcast Corporation",company_number: "2714593",status:"active",jurisdiction_code: "us_pa",incorporation_date: "1996-09-16", location_id: 3},
#{name:"The Walt Disney Company",company_number: "C1770422",status:"active",jurisdiction_code: "us_ca",incorporation_date: "1995-09-19", location_id: 4},
#{name:"PepsiCo Inc",company_number: "1131190",status:"active",jurisdiction_code: "us_ny",incorporation_date: "1986-12-17", location_id: 5},
#{name:"BP P.L.C.",company_number: "102498",status:"active",jurisdiction_code: "gb",incorporation_date: "1909-04-17", location_id: 6},
#{name:"Procter and Gamble (Health and Beauty Care) Limited",company_number: "436549",status:"active",jurisdiction_code: "gb",incorporation_date: "1947-06-06", location_id: 7}])
#
#arr = ['Akmal', 'Aileen Louise Nathan', 'Alexander George Buckthorp', 'Anthony Joseph Appleton', 'Anthony Joseph Appleton', 'Christopher John Young', 'Daisy Victoria Gray', 'Gianluca Branda', 'Ian Morley', 'Rebecca Jane Goodall', 'Victoria Ann Ensla Tiffin', 'Vijay Indroo Sitlani', 'Alan Boeckmann', 'Alison Jane Carnwath', 'Ann Patricia Dowling', 'Antony Burgmans', 'Brendan Robert Nelson', 'Brian Gilvary', 'Carl-Henric Svanberg', 'David John Jackson', 'Denise Dillon', 'Frank Lee (“Skip”) #Bowman', 'Freedom Phuthuma Nhleko', 'Hannah Ashdown', 'Helge Lund', 'Ian Edward Lamert Davis', 'Jens Bertelsen', 'Melody Boone Meyer', 'Nils Smedegaard Andersen', 'Pamela Daley', 'Paula Rosput Reynolds', 'Robert John Sawers', 'Robert Warren Dudley', 'Daniel Kenneth Burton', 'Emma Therese McGuigan', 'Oliver James Benzecry', 'Patrick Brian Francis Rowe', 'Patrick Brian Francis Rowe', 'Simon John Whitehouse', 'Zahra Bahrololoumi', 'Adrian Charles Noel Kemp', 'Deborah Disanzo Eldracher', 'Genevieve #Bernadetter Berger', 'Graham Chipchase', 'Leif Valdemar Johansson', 'Marc Pierre Jean Dunoyer', 'Marcus Wallenberg', 'Pascal Claude Roland Soriot', 'Philip Arthur John Broadley', 'Rudolph Harold Peter Markham', 'Sabera Nazneen Rahman', 'Sherilyn Dawn McCoy', 'Shriti Vadera', 'Indra Nooyi', 'C Stephen Backstrom', 'John R Alchin', 'Stanley Wang', 'Stephen B Burke']
#
#arr.each do |name|
#  Director.create!(name: name)
#end

CompanyDirector.create!(
[
{company_id: 7, director_id: 2, position:"director"},
{company_id: 7,director_id: 3,position:"director"},
{company_id: 7,director_id: 4,position:"secretary"},
{company_id: 7,director_id: 5,position:"director"},
{company_id: 7,director_id: 6,position:"director"},
{company_id: 7,director_id: 7,position:"director"},
{company_id: 7,director_id: 8,position:"director"},
{company_id: 7,director_id: 9,position:"director"},
{company_id: 7,director_id: 10,position:"director"},
{company_id: 7,director_id: 11,position:"director"},
{company_id: 7,director_id: 12,position:"director"},
{company_id: 6,director_id: 13,position:"director"},
{company_id: 6,director_id: 14,position:"director"},
{company_id: 6,director_id: 15,position:"director"},
{company_id: 6,director_id: 16,position:"director"},
{company_id: 6,director_id: 17,position:"director"},
{company_id: 6,director_id: 18,position:"director"},
{company_id: 6,director_id: 19,position:"director"},
{company_id: 6,director_id: 20,position:"secretary"},
{company_id: 6,director_id: 21,position:"secretary"},
{company_id: 6,director_id: 22,position:"director"},
{company_id: 6,director_id: 23,position:"director"},
{company_id: 6,director_id: 24,position:"secretary"},
{company_id: 6,director_id: 25,position:"director"},
{company_id: 6,director_id: 26,position:"director"},
{company_id: 6,director_id: 27,position:"secretary"},
{company_id: 6,director_id: 28,position:"director"},
{company_id: 6,director_id: 29,position:"director"},
{company_id: 6,director_id: 30,position:"director"},
{company_id: 6,director_id: 31,position:"director"},
{company_id: 6,director_id: 32,position:"director"},
{company_id: 6,director_id: 33,position:"director"},
{company_id: 2,director_id: 34,position:"director"},
{company_id: 1,director_id: 35,position:"director"},
{company_id: 1,director_id: 36,position:"director"},
{company_id: 1,director_id: 37,position:"secretary"},
{company_id: 1,director_id: 38,position:"director"},
{company_id: 1,director_id: 39,position:"director"},
{company_id: 1,director_id: 40,position:"director"},
{company_id: 6,director_id: 41,position:"secretary"},
{company_id: 2,director_id: 42,position:"director"},
{company_id: 2,director_id: 43,position:"director"},
{company_id: 2,director_id: 44,position:"director"},
{company_id: 2,director_id: 45,position:"director"},
{company_id: 2,director_id: 46,position:"director"},
{company_id: 2,director_id: 47,position:"director"},
{company_id: 2,director_id: 48,position:"director"},
{company_id: 2,director_id: 49,position:"director"},
{company_id: 2,director_id: 50,position:"director"},
{company_id: 2,director_id: 51,position:"director"},
{company_id: 2,director_id: 52,position:"director"},
{company_id: 2,director_id: 53,position:"director"},
{company_id: 3,director_id: 54,position:"chief executive officer"},
{company_id: 3,director_id: 55,position:"vice president"},
{company_id: 3,director_id: 56,position:"secretary"},
{company_id: 3,director_id: 57,position:"treasurer"},
{company_id: 3,director_id: 58,position:"president"}])
