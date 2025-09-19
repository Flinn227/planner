# Hours shown on the day schedule. You can leave nils if you want a blank to write in.
HOUR_LABELS = [nil, 9, 10, 11, 12, 1, 2, 3, 4, 5, 6, 7, 8, nil]
HOUR_COUNT = HOUR_LABELS.length
COLUMN_COUNT = 4
LIGHT_COLOR = 'AAAAAA'
MEDIUM_COLOR = '888888'
DARK_COLOR   = '000000'
FONTS = {
  'Jost' => {
    normal: { file: './fonts/FuturaPTMedium.ttf' },
    italic: { file: './fonts/FuturaPTMediumOblique.ttf' },
    bold: { file: './fonts/FuturaPTCondExtraBold.ttf' },
    condensed: { file: './fonts/FuturaPTCondMedium.ttf' },
  }
}
PAGE_SIZE = 'LETTER' # Could also do 'A4'
# Order is top, right, bottom, left
LEFT_PAGE_MARGINS = [36, 72, 36, 36]
RIGHT_PAGE_MARGINS = [36, 36, 36, 72]

# Adjust the quarters to a fiscal year, 1 for Jan, 2 for Feb, etc.
Q1_START_MONTH = 1
QUARTERS_BY_MONTH = (1..12).map { |month| (month / 3.0).ceil }.rotate(1 - Q1_START_MONTH).unshift(nil)

# Adjust the start of semesters
FIRST_SEMESTER_START = 8 # August
SECOND_SEMESTER_START = 1 # January

# Use these if you have sprints of a weekly interval
# SPRINT_EPOCH = Date.parse('2023-01-04')
# SPRINT_LENGTH = 14

# Returns nested array, names by day of week, 0 is Sunday.
def one_on_ones_for sunday
  # Weekly
  sun = []
  mon = []
  tue = %w(Randy)
  wed = %w(Jose Jason)
  thr = %w(Amulya)
  fri = []
  sat = []

  # Biweekly
  cweek = sunday.cweek
  wed << 'Jose Luis' if cweek % 2 == 0
  wed << 'Mamatha'   if cweek % 2 == 1

  # Monthly
  tue << 'Tyler'     if cweek % 4 == 1
  wed << 'Guerrero'  if cweek % 4 == 3

  [sun, mon, tue, wed, thr, fri, sat]
end


