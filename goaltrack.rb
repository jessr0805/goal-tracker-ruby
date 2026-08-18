current_goals = []
past_goals = []
goals = {
    "current" => current_goals,
    "past" => past_goals
}
loop do
    puts "====================================="
    puts "          🎯 GOAL TRACKER           "
    puts "====================================="
    puts "\n📊 Active Goals: "
    puts "🏆 Completed: "
    puts "📈 Overall Progress: "
    puts "\nWhere would you like to go?"
    puts 
    puts "1. 📊 Dashboard"
    puts "2. ➕ Create Goal?"
    puts "3. 📈 Update Progress"
    puts "4. 🔍 Find Goal"
    puts "5. 📅 Upcoming Deadlines"
    puts "6. 🏆 Completed Goals"
    puts "7. 💾 Save & Exit"
    puts
    print "\nChoice: "
    location_choice = gets.chomp.to_i
    case location_choice
    when 1
        puts "Welcome to the dashboard!"
        goals["current"].each do |current|
            puts "🎯 Goal: #{current["name"]}"
            puts "📂 Category: #{current["category"]}"
            puts "📊 Progress: #{current["progress"]} / #{current["target"]} #{current["unit"]}"
            puts "📅 Deadline: #{current["deadline"]}"
        end
    when 2
        print "Goal Name: "
        new_goal_name = gets.chomp
        print "Category: "
        new_goal_category = gets.chomp
        print "Progress: "
        new_goal_progress = gets.chomp.to_i
        print "Target: "
        new_goal_target = gets.chomp.to_i
        print "Unit: "
        new_goal_unit = gets.chomp
        print "Deadline: "
        new_goal_deadline = gets.chomp
        new_goal = {
            "name" => new_goal_name,
            "category" => new_goal_category,
            "progress" => new_goal_progress,
            "target" => new_goal_target,
            "unit" => new_goal_unit,
            "deadline" => new_goal_deadline
        }
        current_goals << new_goal
    when 7
        puts "Are you sure you want to leave?"
        leave = gets.chomp.downcase
        if leave == "yes"
            break
        else
            puts "Okay."
        end
    else
        puts "#{location_choice} is not an option."
    end
end