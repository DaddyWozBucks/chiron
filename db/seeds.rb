# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
WorkoutsTemplate.destroy_all
Template.destroy_all
Workout.destroy_all
Exercise.destroy_all

presets = ["BACK ATTACK", "LEG DAY", "BI'S & TRI'S", "SHOULDERS"]
userids = [6,7]
exids = [13,14,15,16,17,18,19,20]


4.times do 
  w = WorkoutsTemplate.create!(user_id: userids.sample, name: presets.sample)
    3.times do w.sessionlists.create!(exercise_id: exids.sample)
    end
end

Template.create!( 
  name: "Lat Pull-Down", 
  instructions:"Grip bar with a wide grip and pull down to shoulder level. Releasing it slowly",
  musclecat: "shoulders, back, triceps",
  weight: true,
  reps: true,
  sets: true,
  distance:false,
  calories:false,
  time:false,
  )

Template.create!( 
  name: "Bench Press", 
  instructions:"Grip bar with a wide grip lower till touching your chest. Breathe out and push.",
  musclecat: "shoulders, back, triceps",
  weight: true,
  reps: true,
  sets: true,
  distance:false,
  calories:false,
  time:false
  )
Template.create!( 
  name: "Deadlift", 
  instructions:"Grip bar with a wide grip and lift witha  straight back. Releasing it slowly",
  musclecat: "shoulders, back, hamstrings",
  weight: true,
  reps: true,
  sets: true,
  distance:false,
  calories:false,
  time:false
  )
Template.create!( 
  name: "Dumbell Flys", 
  instructions:"Hold dumbells in hands and slowly widen till almost flat. return",
  musclecat: "shoulders, back, triceps",
  weight: true,
  reps: true,
  sets: true,
  distance:false,
  calories:false,
  time:false
  )
Template.create!( 
  name: "Cable Flys", 
  instructions:"Stand in the midle of the cable cross machine. Select weight and grip each handle firmly. Lean forward and perfomr a fly motion",
  musclecat: "shoulders, back, triceps",
  weight: true,
  reps: true,
  sets: true,
  distance:false,
  calories:false,
  time:false
  )
Template.create!( 
  name: "Squats", 
  instructions:"Load barbell with wights. Feet shoulder width apart take the weight of the abr between your shoulder blades and lower your body till your legs are at 90 degrees then return to standing position. Do not lock knees",
  musclecat: "glutes, hamstrings, quadriceps",
  weight: true,
  reps: true,
  sets: true,
  distance:false,
  calories:false,
  time:false
  )
Template.create!( 
  name: "Hammer Curls", 
  instructions:"Adjust the bench to a reclingin siting position. Lean back and let arms fall naturally. Curl switching from semi supinated to supinated grip on the up motion and back on the downward motion.",
  musclecat: "biceps",
  weight: true,
  reps: true,
  sets: true,
  distance:false,
  calories:false,
  time:false
  )
Template.create!( 
  name: "Tricep Cable Rope Extensions", 
  instructions:"Attach the rope to the cable machine and select weight. Keeping your abck stright and your shoulders still extend your arms from 90 degrees to straight and slowly return to 90 degrees.",
  musclecat: "triceps",
  weight: true,
  reps: true,
  sets: true,
  distance:false,
  calories:false,
  time:false
  )
Template.create!( 
  name: "Treadmill", 
  instructions:"RUN FORREST RUN!",
  musclecat: "cardio",
  weight: false,
  reps: false,
  sets: false,
  distance: true,
  calories: true,
  time: true
  )
Template.create!( 
  name: "Ergo/Rowing Machine", 
  instructions:"AFirmly secure your feet in teh restraints and grip the bar with an overhand grip. From a crouched postion extend your legs followed by your abck and finally pulling with your arms. Reverse the motion on the inward movement.",
  musclecat: "triceps, back, hamstrings, cardio",
  weight: false,
  reps: false,
  sets: false,
  distance: true,
  calories: true,
  time: true
  )

['member', 'guest', 'staff','admin', 'trainer'].each do |role|
  Role.find_or_create_by({name: role})
end

