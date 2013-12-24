namespace :myproject do
  namespace :taskgroup_one do

    desc "MyProject | Task Group one | task one description"
    task task_one: :environment do
    	puts "I am task one from - Tasks group one"
    end

	desc "MyProject | Task Group one | task two description"
    task task_two: :environment do
    	puts "I am task two from - Tasks group one"
    end

    desc "MyProject | Task Group one | Call tasks from this group"
    task call_tasks_from_group_one: :environment do
    	Rake::Task["myproject:taskgroup_one:task_one"].invoke
    	Rake::Task["myproject:taskgroup_one:task_two"].invoke
    end

    desc "MyProject | Task Group one | Call tasks from group two"
    task call_tasks_from_group_two: :environment do
        Rake::Task["myproject:taskgroup_two:task_one"].invoke
        Rake::Task["myproject:taskgroup_two:task_two"].invoke
    end

  end
end