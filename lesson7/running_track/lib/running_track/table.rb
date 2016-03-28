require 'json'
require 'active_support/core_ext/hash/slice'
require 'terminal-table'

module RunningTrack
  class Table

    HEADINGS = ["District", "Address", "HelpPhone", "ObjectHasWifi"]

    def print
      @table ||= create_table
      puts @table
    end

    private

    def initialize data
      # p data.read
      @rows = prepare data
    end

    def prepare data
      JSON.parse(data.read).map! do |row|
        row['Cells'].slice(*HEADINGS).values.flatten
      end
    end

    def create_table
      p "[Table]: create table"
      sep_rows = @rows.zip(Array.new(@rows.count - 1){ :separator }).flatten(1).compact
      Terminal::Table.new rows: sep_rows, headings: HEADINGS
    end

  end
end
