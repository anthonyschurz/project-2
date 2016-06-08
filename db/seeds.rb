require './models/adjective.rb'
require './models/hillaryname.rb'
require './models/berniename.rb'

Adjective.destroy_all
Hillaryname.destroy_all
Berniename.destroy_all

Adjective.create([

    {letter: "A", adjective: "Timid"},
    {letter: "B", adjective: "Low-Energy"},
    {letter: "C", adjective: "Lying"},
    {letter: "D", adjective: "Weak"},
    {letter: "E", adjective: "Boring"},
    {letter: "F", adjective: "Overrated"},
    {letter: "G", adjective: "Jealous"},
    {letter: "H", adjective: "Moody"},
    {letter: "I", adjective: "Repulsive"},
    {letter: "J", adjective: "Yucky"},
    {letter: "K", adjective: "Unreliable"},
    {letter: "L", adjective: "Silly"},
    {letter: "M", adjective: "Fussy"},
    {letter: "N", adjective: "Ugly"},
    {letter: "O", adjective: "Hideous"},
    {letter: "P", adjective: "Dirty"},
    {letter: "Q", adjective: "Moron"},
    {letter: "R", adjective: "Little"},
    {letter: "S", adjective: "Crazy"},
    {letter: "T", adjective: "Cowardly"},
    {letter: "U", adjective: "Vain"},
    {letter: "V", adjective: "Clown"},
    {letter: "W", adjective: "Goofy"},
    {letter: "X", adjective: "Slob"},
    {letter: "Y", adjective: "Tiny"},
    {letter: "Z", adjective: "Flaccid"}

])


Hillaryname.create([

    {name: "Lying Hillary"},
    {name: "Crooked Hillary"},
    {name: "Incompetent Hillary"}

])


Berniename.create([

    {name: "Crazy Bernie"},
    {name: "Socialist Bernie"},
    {name: "Bleeding Heart Bernie"}

])
