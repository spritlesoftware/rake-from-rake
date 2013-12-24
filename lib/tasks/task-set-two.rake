namespace :myproject do
  namespace :taskgroup_two do

    desc "MyProject | Task Group two | task one description"
    task task_one: :environment do
    	puts "I am task one from - Tasks group two"
    end

	desc "MyProject | Task Group two | task two description"
    task task_two: :environment do
    	puts "I am task two from - Tasks group two"
    end

    desc "MyProject | Task Group two | Call tasks from this group"
    task call_tasks_from_group_two: :environment do
    	Rake::Task["myproject:taskgroup_two:task_one"].invoke
    	Rake::Task["myproject:taskgroup_two:task_two"].invoke
    end

    desc "MyProject | Task Group two | Call tasks from group one"
    task call_tasks_from_group_one: :environment do
        Rake::Task["myproject:taskgroup_one:task_one"].invoke
        Rake::Task["myproject:taskgroup_one:task_two"].invoke
    end

  end
end