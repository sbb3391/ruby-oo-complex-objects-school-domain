require 'pry'

class School

    attr_accessor :roster

    def initialize(roster)
        roster = {}
        @roster = roster
    end

    def add_student(name, grade)
        if @roster.has_key?(grade)
            @roster[grade] << name
        else 
            @roster[grade] = []
            @roster[grade] << name
        end
        roster
    end

    def grade(grade)
        @roster[grade]
    end

    def sort
       @roster.each do |grade, name|
        name.sort!
       end
       @roster.sort.to_h
    end







end


