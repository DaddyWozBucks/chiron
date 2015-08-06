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




Template.create!( 
  name: "Lat Pull-Down", 
  instructions:"Sit down on a pull-down machine with a wide bar attached to the top pulley. Make sure that you adjust the knee pad of the machine to fit your height. These pads will prevent your body from being raised by the resistance attached to the bar.
Grab the bar with the palms facing forward using the prescribed grip. Note on grips: For a wide grip, your hands need to be spaced out at a distance wider than shoulder width. For a medium grip, your hands need to be spaced out at a distance equal to your shoulder width and for a close grip at a distance smaller than your shoulder width.
As you have both arms extended in front of you holding the bar at the chosen grip width, bring your torso back around 30 degrees or so while creating a curvature on your lower back and sticking your chest out. This is your starting position.
As you breathe out, bring the bar down until it touches your upper chest by drawing the shoulders and the upper arms down and back. Tip: Concentrate on squeezing the back muscles once you reach the full contracted position. The upper torso should remain stationary and only the arms should move. The forearms should do no other work except for holding the bar; therefore do not try to pull down the bar using the forearms.
After a second at the contracted position squeezing your shoulder blades together, slowly raise the bar back to the starting position when your arms are fully extended and the lats are fully stretched. Inhale during this portion of the movement.
Repeat this motion for the prescribed amount of repetitions.",
  musclecat: "shoulders, back, triceps",
  weight: true,
  reps: true,
  sets: true,
  distance:false,
  calories:false,
  time:false,
  imgurl: "assets/lat_pulldowns.jpg",
  img_target_url: "assets/lat_pulldowns_target.gif"
  )

Template.create!( 
  name: "BarBell Bench Press", 
  instructions:"Lie back on a flat bench. Using a medium width grip (a grip that creates a 90-degree angle in the middle of the movement between the forearms and the upper arms), lift the bar from the rack and hold it straight over you with your arms locked. This will be your starting position.
From the starting position, breathe in and begin coming down slowly until the bar touches your middle chest.
After a brief pause, push the bar back to the starting position as you breathe out. Focus on pushing the bar using your chest muscles. Lock your arms and squeeze your chest in the contracted position at the top of the motion, hold for a second and then start coming down slowly again. Tip: Ideally, lowering the weight should take about twice as long as raising it.
Repeat the movement for the prescribed amount of repetitions.
When you are done, place the bar back in the rack.",
  musclecat: "chest, shoulders, triceps",
  weight: true,
  reps: true,
  sets: true,
  distance:false,
  calories:false,
  time:false,
  imgurl: "assets/barbell_bench_press.jpg",
  img_target_url: "assets/barbell_bench_press_target.gif"
  )
Template.create!( 
  name: "Barbell Deadlift", 
  instructions:"Stand in front of a loaded barbell.
While keeping the back as straight as possible, bend your knees, bend forward and grasp the bar using a medium (shoulder width) overhand grip. This will be the starting position of the exercise. Tip: If it is difficult to hold on to the bar with this grip, alternate your grip or use wrist straps.
While holding the bar, start the lift by pushing with your legs while simultaneously getting your torso to the upright position as you breathe out. In the upright position, stick your chest out and contract the back by bringing the shoulder blades back. Think of how the soldiers in the military look when they are in standing in attention.
Go back to the starting position by bending at the knees while simultaneously leaning the torso forward at the waist while keeping the back straight. When the weights on the bar touch the floor you are back at the starting position and ready to perform another repetition.
Perform the amount of repetitions prescribed in the program.
Caution:

This is not an exercise to be taken lightly. If you have back issues, substitute it for a rowing motion instead.
If you have a healthy back, ensure perfect form and never round the back as this can cause back injury. Be cautious as well with the weight used; in case of doubt, use less weight rather than more.",
  musclecat: "shoulders, back, hamstrings",
  weight: true,
  reps: true,
  sets: true,
  distance:false,
  calories:false,
  time:false,
  imgurl: "assets/barbell_deadlift.jpg",
  img_target_url: "assets/barbell_deadlift_target.gif"
  )
Template.create!( 
  name: "Dumbbell Flyes", 
  instructions:"Lie down on a flat bench with a dumbbell on each hand resting on top of your thighs. The palms of your hand will be facing each other.
Then using your thighs to help raise the dumbbells, lift the dumbbells one at a time so you can hold them in front of you at shoulder width with the palms of your hands facing each other. Raise the dumbbells up like you're pressing them, but stop and hold just before you lock out. This will be your starting position.
With a slight bend on your elbows in order to prevent stress at the biceps tendon, lower your arms out at both sides in a wide arc until you feel a stretch on your chest. Breathe in as you perform this portion of the movement. Tip: Keep in mind that throughout the movement, the arms should remain stationary; the movement should only occur at the shoulder joint.
Return your arms back to the starting position as you squeeze your chest muscles and breathe out. Tip: Make sure to use the same arc of motion used to lower the weights.
Hold for a second at the contracted position and repeat the movement for the prescribed amount of repetitions.",
  musclecat: "shoulders, back, triceps",
  weight: true,
  reps: true,
  sets: true,
  distance:false,
  calories:false,
  time:false,
  imgurl: "assets/dumbbell_flyes.jpg",
  img_target_url: "assets/dumbbell_flyes_target.gif"
  )
Template.create!( 
  name: "Cable Flys", 
  instructions:"Position a flat bench between two low pulleys so that when you are laying on it, your chest will be lined up with the cable pulleys.
Lay flat on the bench and keep your feet on the ground.
Have someone hand you the handles on each hand. You will grab each single handle attachment with a palms up grip.
Extend your arms by your side with a slight bend on your elbows. Tip: You will keep this bend constant through the whole movement. Your arms should be parallel to the floor. This is your starting position.
Now start lifting the arms in a semi-circle motion directly in front of you by pulling the cables together until both hands meet at the top of the movement. Squeeze your chest as you perform this motion and breathe out during this movement. Also, hold the contraction for a second at the top. Tip: When performed correctly, at the top position of this movement, your arms should be perpendicular to your torso and the floor touching above your chest.
Slowly come back to the starting position.
Repeat for the recommended amount of repetitions.
Variations: Can also be done on an incline or decline bench, or with dumbbells or an exercise band.",
  musclecat: "shoulders, back, triceps",
  weight: true,
  reps: true,
  sets: true,
  distance:false,
  calories:false,
  time:false,
  imgurl: "assets/flat_bench_cable_flyes.jpg",
  img_target_url: "assets/flat_bench_cable_flyes_target.gif"
  )
Template.create!( 
  name: "Squats", 
  instructions:"This exercise is best performed inside a squat rack for safety purposes. To begin, first set the bar on a rack to just below shoulder level. Once the correct height is chosen and the bar is loaded, step under the bar and place the back of your shoulders (slightly below the neck) across it.
Hold on to the bar using both arms at each side and lift it off the rack by first pushing with your legs and at the same time straightening your torso.
Step away from the rack and position your legs using a shoulder width medium stance with the toes slightly pointed out. Keep your head up at all times and also maintain a straight back. This will be your starting position. (Note: For the purposes of this discussion we will use the medium stance described above which targets overall development; however you can choose any of the three stances discussed in the foot stances section).
Begin to slowly lower the bar by bending the knees and hips as you maintain a straight posture with the head up. Continue down until the angle between the upper leg and the calves becomes slightly less than 90-degrees. Inhale as you perform this portion of the movement. Tip: If you performed the exercise correctly, the front of the knees should make an imaginary straight line with the toes that is perpendicular to the front. If your knees are past that imaginary line (if they are past your toes) then you are placing undue stress on the knee and the exercise has been performed incorrectly.
Begin to raise the bar as you exhale by pushing the floor with the heel of your foot as you straighten the legs again and go back to the starting position.
Repeat for the recommended amount of repetitions.",
  musclecat: "glutes, hamstrings, quadriceps",
  weight: true,
  reps: true,
  sets: true,
  distance:false,
  calories:false,
  time:false,
  imgurl: "assets/barbell_squat.jpg",
  img_target_url: "assets/barbell_squat_target.gif"
  )
Template.create!( 
  name: "Hammer Curls", 
  instructions:"Stand up with your torso upright and a dumbbell on each hand being held at arms length. The elbows should be close to the torso.
The palms of the hands should be facing your torso. This will be your starting position.
Now, while holding your upper arm stationary, exhale and curl the weight forward while contracting the biceps. Continue to raise the weight until the biceps are fully contracted and the dumbbell is at shoulder level. Hold the contracted position for a brief moment as you squeeze the biceps. Tip: Focus on keeping the elbow stationary and only moving your forearm.
After the brief pause, inhale and slowly begin the lower the dumbbells back down to the starting position.
Repeat for the recommended amount of repetitions.",
  musclecat: "biceps",
  weight: true,
  reps: true,
  sets: true,
  distance:false,
  calories:false,
  time:false,
  imgurl: "assets/hammer_curls.jpg",
  img_target_url: "assets/hammer_curls_target.gif"
  )
Template.create!( 
  name: "Tricep Cable Rope Extensions", 
  instructions:"Attach a rope attachment to a high pulley and grab with a neutral grip (palms facing each other).
Standing upright with the torso straight and a very small inclination forward, bring the upper arms close to your body and perpendicular to the floor. The forearms should be pointing up towards the pulley as they hold the rope with the palms facing each other. This is your starting position.
Using the triceps, bring the rope down as you bring each side of the rope to the side of your thighs. At the end of the movement the arms are fully extended and perpendicular to the floor. The upper arms should always remain stationary next to your torso and only the forearms should move. Exhale as you perform this movement.
After holding for a second, at the contracted position, bring the rope slowly up to the starting point. Breathe in as you perform this step.
Repeat for the recommended amount of repetitions.",
  musclecat: "triceps",
  weight: true,
  reps: true,
  sets: true,
  distance:false,
  calories:false,
  time:false,
  imgurl: "assets/tricep_pushdown_cable.jpg",
  img_target_url: "assets/tricep_pushdown_cable_target.gif"
  )
Template.create!( 
  name: "Treadmill", 
  instructions:"To begin, step onto the treadmill and select the desired option from the menu. Most treadmills have a manual setting, or you can select a program to run. Typically, you can enter your age and weight to estimate the amount of calories burned during exercise. Elevation can be adjusted to change the intensity of the workout.
Treadmills offer convenience, cardiovascular benefits, and usually have less impact than running outside. A 150 lb person will burn over 450 calories running 8 miles per hour for 30 minutes. Maintain proper posture as you run, and only hold onto the handles when necessary, such as when dismounting or checking your heart rate. AKA RUN FORREST RUN!",
  musclecat: "cardio",
  weight: false,
  reps: false,
  sets: false,
  distance: true,
  calories: true,
  time: true,
  imgurl: "assets/treadmill.jpg",
  img_target_url: "assets/treadmill_target.gif"
  )
Template.create!( 
  name: "Ergo/Rowing Machine", 
  instructions:"To begin, seat yourself on the rower. Make sure that your heels are resting comfortably against the base of the foot pedals and that the straps are secured. Select the program that you wish to use, if applicable. Sit up straight and bend forward at the hips.
There are three phases of movement when using a rower. The first phase is when you come forward on the rower. Your knees are bent and against your chest. Your upper body is leaning slightly forward while still maintaining good posture. Next, push against the foot pedals and extend your legs while bringing your hands to your upper abdominal area, squeezing your shoulders back as you do so. To avoid straining your back, use primarily your leg and hip muscles.
The recovery phase simply involves straightening your arms, bending the knees, and bringing your body forward again as you transition back into the first phase.",
  musclecat: "triceps, back, hamstrings, cardio",
  weight: false,
  reps: false,
  sets: false,
  distance: true,
  calories: true,
  time: true,
  imgurl: "assets/rowing_ergo.jpg",
  img_target_url: "assets/rowing_ergo_target.gif"
  )
Template.create!( 
  name: "Body Weight Reverse Lunge", 
  instructions:"Begin in a standing position. Your hands should be on your hips or hanging at your sides. Look directly forward, keeping your chest up, with your feet shoulder-width apart. This will be your starting position.
Initiate the movement by taking a step to the rear, allowing your hips and knees to flex to lower your body. Contacting the back leg through only the ball of the foot, descend until your knee nearly touches the ground. Use a slow and controlled motion, paying special attention to proper mechanics and posture. The knee should stay in line with the foot, and the thoracic spine should remain neutral.
After a brief pause, return to the starting position by driving through the heel of the front leg to extend the knees and hips.
This movement can be done completely on one side before switching, or can be performed in an alternating fashion.",
  musclecat: "triceps, back, hamstrings, cardio",
  weight: true,
  reps: true,
  sets: true,
  distance: false,
  calories: false,
  time: false,
  imgurl: "assets/body_weight_reverse_lunge.jpg",
  img_target_url: "assets/body_weight_reverse_lunge_target.gif"
  )
Template.create!( 
  name: "Barbell Delt Row", 
  instructions:"Stand up straight while holding a barbell using a wide (higher than shoulder width) and overhand (palms facing your body) grip.
Bend knees slightly and bend over as you keep the natural arch of your back. Let the arms hang in front of you as they hold the bar. Once your torso is parallel to the floor, flare the elbows out and away from your body. Tip: Your torso and your arms should resemble the letter T. Now you are ready to begin the exercise.
While keeping the upper arms perpendicular to the torso, pull the barbell up towards your upper chest as you squeeze the rear delts and you breathe out. Tip: When performed correctly, this exercise should resemble a bench press in reverse. Also, refrain from using your biceps to do the work. Focus on targeting the rear delts; the arms should only act as hooks.
Slowly go back to the initial position as you breathe in.
Repeat for the recommended amount of repetitions.",
  musclecat: "shopudler, back, delts",
  weight: true,
  reps: true,
  sets: true,
  distance: false,
  calories: false,
  time: false,
  imgurl: "assets/barbell_delt_row.jpg",
  img_target_url: "assets/barbell_delt_row_target.gif"
 )
Template.create!( 
  name: "Barbell Incline Bench Press", 
  instructions:"Lie back on an incline bench. Using a medium-width grip (a grip that creates a 90-degree angle in the middle of the movement between the forearms and the upper arms), lift the bar from the rack and hold it straight over you with your arms locked. This will be your starting position.
As you breathe in, come down slowly until you feel the bar on you upper chest.
After a second pause, bring the bar back to the starting position as you breathe out and push the bar using your chest muscles. Lock your arms in the contracted position, squeeze your chest, hold for a second and then start coming down slowly again. Tip: it should take at least twice as long to go down than to come up.
Repeat the movement for the prescribed amount of repetitions.
When you are done, place the bar back in the rack.",
  musclecat: "triceps, back, hamstrings, cardio",
  weight: true,
  reps: true,
  sets: true,
  distance: false,
  calories: false,
  time: false,
  imgurl: "assets/barbell_incline_bench_press.jpg",
  img_target_url: "assets/barbell_incline_bench_press_target.gif"
  )
Template.create!( 
  name: "Air Bike", 
  instructions:"Lie flat on the floor with your lower back pressed to the ground. For this exercise, you will need to put your hands beside your head. Be careful however to not strain with the neck as you perform it. Now lift your shoulders into the crunch position.
Bring knees up to where they are perpendicular to the floor, with your lower legs parallel to the floor. This will be your starting position.
Now simultaneously, slowly go through a cycle pedal motion kicking forward with the right leg and bringing in the knee of the left leg. Bring your right elbow close to your left knee by crunching to the side, as you breathe out.
Go back to the initial position as you breathe in.
Crunch to the opposite side as you cycle your legs and bring closer your left elbow to your right knee and exhale.
Continue alternating in this manner until all of the recommended repetitions for each side have been completed.",
  musclecat: "abdominals",
  weight: true,
  reps: true,
  sets: true,
  distance: false,
  calories: false,
  time: false,
  imgurl: "assets/air_bike.jpg",
  img_target_url: "assets/air_bike_target.gif"
  )
Template.create!( 
  name: "Bent Knee Hip Raise", 
  instructions:"To begin, seat yourself on the rower. Make sure that your heels are resting comfortably against the base of the foot pedals and that the straps are secured. Select the program that you wish to use, if applicable. Sit up straight and bend forward at the hips.
There are three phases of movement when using a rower. The first phase is when you come forward on the rower. Your knees are bent and against your chest. Your upper body is leaning slightly forward while still maintaining good posture. Next, push against the foot pedals and extend your legs while bringing your hands to your upper abdominal area, squeezing your shoulders back as you do so. To avoid straining your back, use primarily your leg and hip muscles.
The recovery phase simply involves straightening your arms, bending the knees, and bringing your body forward again as you transition back into the first phase.",
  musclecat: "triceps, back, hamstrings, cardio",
  weight: true,
  reps: true,
  sets: true,
  distance: false,
  calories: false,
  time: false,
  imgurl: "assets/bent_knee_hip_raise.jpg",
  img_target_url: "assets/bent_knee_hip_raise_target.gif"
  )

exids = []
w = Template.all
  w.each do |t|
    exids.push(t.id)
  end

b = WorkoutsTemplate.create!(
  name: "Back Day",
  imgurl: "assets/bent_over_bar_rows_target.gif"
  )
  5.times do b.sessionlists.create!(exercise_id: exids.sample)
    end

l = WorkoutsTemplate.create!(
  name: "Leg Day",
  imgurl: "assets/barbell_lunge_target.gif"
  )
  5.times do l.sessionlists.create!(exercise_id: exids.sample)
      end

s = WorkoutsTemplate.create!(
  name: "Shoulders",
  imgurl: "assets/lat_pulldowns_target.gif"
  )
  5.times do s.sessionlists.create!(exercise_id: exids.sample)
      end

a = WorkoutsTemplate.create!(
  name: "Arms - Bi's & Tri's",
  imgurl: "assets/close_grip_ezbar_curl_with_band_target.gif"
  )
  5.times do a.sessionlists.create!(exercise_id: exids.sample)
      end

sp = WorkoutsTemplate.create!(
  name: "Six Packs Ahoy! - Ab Attack",
  imgurl: "assets/close_grip_ezbar_curl_with_band_target.gif"
  )
  5.times do sp.sessionlists.create!(exercise_id: exids.sample)
      end

gvt = WorkoutsTemplate.create!(
  name: "German Volume Training",
  imgurl: "assets/barbell_bench_press_target.gif"
  )
  5.times do gvt.sessionlists.create!(exercise_id: exids.sample)
      end

hit = WorkoutsTemplate.create!(
  name: "H.I.T. - High Intensity Training",
  imgurl: "assets/close_grip_ezbar_curl_with_band_target.gif"
  )
  5.times do hit.sessionlists.create!(exercise_id: exids.sample)
      end

cr = WorkoutsTemplate.create!(
  name: "Crossfit",
  imgurl: "assets/air_bike_target.gif"
  )
  5.times do cr.sessionlists.create!(exercise_id: exids.sample)
      end


['member', 'guest', 'staff','admin', 'trainer'].each do |role|
  Role.find_or_create_by({name: role})
end

