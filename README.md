### Call Rake task from another Rake task

For samples see the file rake-from-rake/blob/master/lib/tasks/task-set-one.rake and  rake-from-rake/blob/master/lib/tasks/task-set-two.rake

Sample tasks:

* rake myproject:taskgroup_one:call_tasks_from_group_one  # MyProject | Task Group one | Call tasks from this group
* rake myproject:taskgroup_one:call_tasks_from_group_two  # MyProject | Task Group one | Call tasks from group two
* rake myproject:taskgroup_one:task_one                   # MyProject | Task Group one | task one description
* rake myproject:taskgroup_one:task_two                   # MyProject | Task Group one | task two description
* rake myproject:taskgroup_two:call_tasks_from_group_one  # MyProject | Task Group two | Call tasks from group one
* rake myproject:taskgroup_two:call_tasks_from_group_two  # MyProject | Task Group two | Call tasks from this group
* rake myproject:taskgroup_two:task_one                   # MyProject | Task Group two | task one description
* rake myproject:taskgroup_two:task_two                   # MyProject | Task Group two | task two description

Simple demo to call rake from another rake tasks
