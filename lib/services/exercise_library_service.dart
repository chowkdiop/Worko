import '../models/workout.dart';

class ExerciseLibraryService {  static final Map<String, List<Exercise>> _exercises = {
    'Chest': [
      Exercise(
        id: 'pushups',
        name: 'Push-ups',
        description: 'A compound exercise that targets your chest, shoulders, and triceps',
        targetMuscles: 'Chest, Shoulders, Triceps',
        imageUrl: 'assets/images/workouts/pushup.jpg',
      ),
      Exercise(
        id: 'benchpress',
        name: 'Bench Press',
        description: 'A fundamental chest exercise that builds upper body strength',
        targetMuscles: 'Chest, Shoulders, Triceps',
        imageUrl: 'assets/images/workouts/benchpress.jpg',
      ),
      Exercise(
        id: 'dips',
        name: 'Dips',
        description: 'A bodyweight exercise that targets chest and triceps',
        targetMuscles: 'Chest, Triceps',
        imageUrl: 'assets/images/workouts/dips.jpeg',
      ),      Exercise(
        id: "barbell benchpresss",
        name: "Barbell Bench Press",
        description: "A compound weightlifting exercise that primarily targets the chest, shoulders, and triceps.",
        targetMuscles: "Chest, Shoulders, Triceps",
        imageUrl: 'assets/images/workouts/barbell_benchpress.jpg',
      ),
      Exercise(
        id: "incline_dumbbell_press",
        name: "Incline Dumbbell Press",
        description: "An upper chest focused exercise that targets the clavicular head of the pectoralis major",
        targetMuscles: "Chest, Shoulders, Triceps",
        imageUrl: 'assets/images/workouts/incline_dumbbell_press.jpg',
      ),
      Exercise(
        id: "cable_chest_fly",
        name: "Cable Chest Fly",
        description: "An isolation exercise that targets the chest muscles through horizontal adduction",
        targetMuscles: "Chest",
        imageUrl: 'assets/images/workouts/cable_chest_fly.jpg',
      ),
      Exercise(
        id: "dumbbell_pullover",
        name: "Dumbbell Pullover",
        description: "A compound exercise that targets both the chest and lats through a large range of motion",
        targetMuscles: "Chest, Back",
        imageUrl: 'assets/images/workouts/dumbbell_pullover.jpeg',
      ),
      Exercise(
        id: 'decline_bench_press',
        name: 'Decline Bench Press',
        description: 'A bench press variation that targets the lower chest',
        targetMuscles: 'Chest, Shoulders, Triceps',
        imageUrl: 'assets/images/workouts/decline_bench_press.jpeg',
      ),
      Exercise(
        id: 'chest_dips',
        name: 'Chest Dips',
        description: 'A bodyweight exercise emphasizing the lower chest with a forward lean',
        targetMuscles: 'Chest, Triceps, Shoulders',
        imageUrl: 'assets/images/workouts/chest_dips.jpg',
      ),
    ],    'Legs': [
      Exercise(
        id: 'squats',
        name: 'Squats',
        description: 'A foundational lower body exercise that builds strength and stability',
        targetMuscles: 'Quadriceps, Hamstrings, Glutes',
        imageUrl: 'assets/images/workouts/squat.jpg',
      ),
      Exercise(
        id: 'front_squats',
        name: 'Front Squats',
        description: 'A squat variation that emphasizes the quadriceps and core stability',
        targetMuscles: 'Quadriceps, Core',
        imageUrl: 'assets/images/workouts/front_squats.jpg',
      ),
      Exercise(
        id: 'leg_press',
        name: 'Leg Press',
        description: 'A machine compound exercise for lower body development',
        targetMuscles: 'Quadriceps, Hamstrings, Glutes',
        imageUrl: 'assets/images/workouts/leg_press.jpg',
      ),
      Exercise(
        id: 'romanian_deadlifts',
        name: 'Romanian Deadlifts',
        description: 'A hip-hinge movement that targets the posterior chain',
        targetMuscles: 'Hamstrings, Lower Back, Glutes',
        imageUrl: 'assets/images/workouts/romanian_deadlifts.jpg',
      ),
      Exercise(
        id: 'lunges',
        name: 'Lunges',
        description: 'A unilateral leg exercise that improves balance and strength',
        targetMuscles: 'Quadriceps, Hamstrings, Glutes',
        imageUrl: 'assets/images/workouts/lunges.jpg',
      ),
      Exercise(
        id: 'calfRaises',
        name: 'Calf Raises',
        description: 'An isolation exercise for developing calf muscles',
        targetMuscles: 'Calves',
        imageUrl: 'assets/images/workouts/calfraises.jpg',
      ),
      Exercise(
        id: 'leg_curl',
        name: 'Leg Curl',
        description: 'An isolation exercise targeting the hamstring muscles',
        targetMuscles: 'Hamstrings',
        imageUrl: 'assets/images/workouts/leg_curl.jpeg',
      ),
      Exercise(
        id: 'leg_extension',
        name: 'Leg Extension',
        description: 'An isolation exercise targeting the quadriceps muscles',
        targetMuscles: 'Quadriceps',
        imageUrl: 'assets/images/workouts/leg_extension.jpg',
      ),
      Exercise(
        id: 'front_squats',
        name: 'Front Squats',
        description: 'A squat variation that emphasizes the quadriceps and core stability',
        targetMuscles: 'Quadriceps, Core',
        imageUrl: 'assets/images/workouts/front_squats.jpg',
      ),
      Exercise(
        id: 'leg_press',
        name: 'Leg Press',
        description: 'A machine compound exercise for lower body development',
        targetMuscles: 'Quadriceps, Hamstrings, Glutes',
        imageUrl: 'assets/images/workouts/leg_press.jpg',
      ),
      Exercise(
        id: 'romanian_deadlifts',
        name: 'Romanian Deadlifts',
        description: 'A hip-hinge movement that targets the posterior chain',
        targetMuscles: 'Hamstrings, Lower Back, Glutes',
        imageUrl: 'assets/images/workouts/romanian_deadlifts.jpg',
      ),
    ],
    'Back': [
      Exercise(
        id: 'pullups',
        name: 'Pull-ups',
        description: 'An upper body exercise that targets your back and biceps',
        targetMuscles: 'Back, Biceps',
        imageUrl: 'assets/images/workouts/pullup.jpg',
      ),
      Exercise(
        id: 'rows',
        name: 'Rows',
        description: 'A compound pulling exercise that targets the back muscles',
        targetMuscles: 'Back, Biceps',
        imageUrl: 'assets/images/workouts/rows.jpg',
      ),      Exercise(
        id: 'latPulldown',
        name: 'Lat Pulldown',
        description: 'A machine exercise that targets the latissimus dorsi',
        targetMuscles: 'Back, Biceps',
        imageUrl: 'assets/images/workouts/latpulldown.jpg',
      ),
      Exercise(
        id: 'dumbbell_row',
        name: 'Dumbbell Row',
        description: 'A unilateral back exercise that targets the latissimus dorsi and rhomboids',
        targetMuscles: 'Back, Biceps',
        imageUrl: 'assets/images/workouts/dumbbell_row.jpg',
      ),
      Exercise(
        id: 'seated_cable_row',
        name: 'Seated Cable Row',
        description: 'A compound pulling exercise that targets the entire back musculature',
        targetMuscles: 'Back, Biceps',
        imageUrl: 'assets/images/workouts/seated_cable_row.jpg',
      ),
      Exercise(
        id: 'deadlifts',
        name: 'Deadlifts',
        description: 'A compound exercise that targets the entire posterior chain',
        targetMuscles: 'Back, Legs, Core',
        imageUrl: 'assets/images/workouts/deadlifts.jpg',
      ),
      Exercise(
        id: 'tbar_row',
        name: 'T-Bar Row',
        description: 'A compound rowing movement that emphasizes mid-back development',
        targetMuscles: 'Back, Biceps',
        imageUrl: 'assets/images/workouts/tbar_row.jpeg',
      ),
      Exercise(
        id: 'straight_arm_pulldown',
        name: 'Straight-arm Pulldown',
        description: 'An isolation exercise that targets the lats while keeping the arms straight',
        targetMuscles: 'Back',
        imageUrl: 'assets/images/workouts/straight_arm_pulldown.jpeg',
      ),
    ],
    'Core': [
      Exercise(
        id: 'plank',
        name: 'Plank',
        description: 'An isometric core exercise that builds stability and endurance',
        targetMuscles: 'Core, Shoulders',
        imageUrl: 'assets/images/workouts/plank.jpg',
      ),
      Exercise(
        id: 'crunches',
        name: 'Crunches',
        description: 'A basic abdominal exercise targeting the rectus abdominis',
        targetMuscles: 'Core',
        imageUrl: 'assets/images/workouts/crunches.jpg',
      ),
      Exercise(
        id: 'russianTwists',
        name: 'Russian Twists',
        description: 'A rotational exercise that targets the obliques',
        targetMuscles: 'Core, Obliques',
        imageUrl: 'assets/images/workouts/russiantwists.jpg',
      ),
    ],
    'Shoulders': [
      Exercise(        id: 'barbell_overhead_press',
        name: 'Barbell Overhead Press',
        description: 'A compound exercise for developing shoulder strength',
        targetMuscles: 'Shoulders',
        imageUrl: 'assets/images/workouts/barbell_overhead_press.jpg',
      ),      Exercise(
        id: 'lateralRaises',
        name: 'Lateral Raises',
        description: 'An isolation exercise targeting the lateral deltoids',
        targetMuscles: 'Shoulders',
        imageUrl: 'assets/images/workouts/lateralraises.jpg',
      ),
      Exercise(
        id: 'dumbbell_shoulder_press',
        name: 'Dumbbell Shoulder Press',
        description: 'A compound movement for overall shoulder development with dumbbells',
        targetMuscles: 'Shoulders, Triceps',
        imageUrl: 'assets/images/workouts/dumbbell_shoulder_press.jpg',
      ),
      Exercise(
        id: 'rear_delt_fly',
        name: 'Rear Delt Fly',
        description: 'An isolation exercise targeting the posterior deltoids',
        targetMuscles: 'Shoulders',
        imageUrl: 'assets/images/workouts/rear_delt_fly.jpeg',
      ),
      Exercise(
        id: 'arnold_press',
        name: 'Arnold Press',
        description: 'A shoulder press variation that incorporates rotation for complete deltoid development',
        targetMuscles: 'Shoulders, Triceps',
        imageUrl: 'assets/images/workouts/arnold_press.jpeg',
      ),
      Exercise(
        id: 'front_raise',
        name: 'Front Raise',
        description: 'An isolation exercise targeting the anterior deltoids',
        targetMuscles: 'Shoulders',
        imageUrl: 'assets/images/workouts/front_raise.jpeg',
      ),
    ],
    'Arms': [Exercise(
        id: 'bicepCurls',
        name: 'Bicep Curls',
        description: 'An isolation exercise for bicep development',
        targetMuscles: 'Biceps',
        imageUrl: 'assets/images/workouts/bicepcurls.jpg',
      ),
      Exercise(
        id: 'barbell_curl',
        name: 'Barbell Curl',
        description: 'A compound exercise that allows for heavy loading of the biceps',
        targetMuscles: 'Biceps, Forearms',
        imageUrl: 'assets/images/workouts/barbell_curl.jpg',
      ),
      Exercise(
        id: 'hammer_curl',
        name: 'Hammer Curl',
        description: 'A bicep variation that emphasizes the brachialis and forearm development',
        targetMuscles: 'Biceps, Forearms',
        imageUrl: 'assets/images/workouts/hammer_curl.jpeg',
      ),
      Exercise(
        id: 'concentration_curl',
        name: 'Concentration Curl',
        description: 'An isolation exercise that maximizes bicep peak contraction',
        targetMuscles: 'Biceps',
        imageUrl: 'assets/images/workouts/concentration_curl.jpeg',
      ),      Exercise(
        id: 'tricepExtensions',
        name: 'Tricep Extensions',
        description: 'An isolation exercise targeting the triceps',
        targetMuscles: 'Triceps',
        imageUrl: 'assets/images/workouts/tricepextensions.jpg',
      ),
      Exercise(
        id: 'skull_crushers',
        name: 'Skull Crushers',
        description: 'A lying tricep extension exercise that effectively targets all three heads of the triceps',
        targetMuscles: 'Triceps',
        imageUrl: 'assets/images/workouts/skull_crushers.jpeg',
      ),
      Exercise(
        id: 'overhead_tricep_extension',
        name: 'Overhead Tricep Extension',
        description: 'An overhead movement that emphasizes the long head of the triceps',
        targetMuscles: 'Triceps',
        imageUrl: 'assets/images/workouts/overhead_tricep_extension.jpeg',
      ),
      Exercise(
        id: 'tricep_pushdowns',
        name: 'Tricep Pushdowns',
        description: 'A cable exercise that isolates the triceps through downward extension',
        targetMuscles: 'Triceps',
        imageUrl: 'assets/images/workouts/tricep_pushdowns.jpeg',
      ),
      Exercise(
        id: 'preacher_curl',
        name: 'Preacher Curl',
        description: 'An isolation exercise for biceps that eliminates body momentum',
        targetMuscles: 'Biceps',
        imageUrl: 'assets/images/workouts/preacher_curl.jpeg',
      ),
      Exercise(
        id: 'incline_dumbbell_curl',
        name: 'Incline Dumbbell Curl',
        description: 'A bicep exercise performed on an incline bench for increased stretch',
        targetMuscles: 'Biceps',
        imageUrl: 'assets/images/workouts/incline_dumbbell_curl.jpeg',
      ),
      Exercise(
        id: 'spider_curl',
        name: 'Spider Curl',
        description: 'A bicep isolation exercise performed lying face down on an incline bench',
        targetMuscles: 'Biceps',
        imageUrl: 'assets/images/workouts/spider_curl.jpeg',
      ),
      Exercise(
        id: 'cable_curl',
        name: 'Cable Curl',
        description: 'A bicep exercise using cables for constant tension',
        targetMuscles: 'Biceps',
        imageUrl: 'assets/images/workouts/cable_curl.jpeg',
      ),
      Exercise(
        id: 'close_grip_bench_press',
        name: 'Close-grip Bench Press',
        description: 'A compound exercise that emphasizes tricep development',
        targetMuscles: 'Triceps, Chest',
        imageUrl: 'assets/images/workouts/close_grip_bench_press.jpeg',
      ),
      Exercise(
        id: 'overhead_cable_extension',
        name: 'Overhead Cable Extension',
        description: 'A tricep isolation exercise using cables for constant tension',
        targetMuscles: 'Triceps',
        imageUrl: 'assets/images/workouts/overhead_cable_extension.jpg',
      ),
      Exercise(
        id: 'tricep_kickbacks',
        name: 'Tricep Kickbacks',
        description: 'An isolation movement targeting the triceps through extension',
        targetMuscles: 'Triceps',
        imageUrl: 'assets/images/workouts/tricep_kickbacks.jpg',
      ),
    ],
    'Cardio': [
      Exercise(
        id: 'jumpingJacks',
        name: 'Jumping Jacks',
        description: 'A full-body cardio exercise that raises heart rate',
        targetMuscles: 'Full Body',
        imageUrl: 'assets/images/workouts/jumpingjacks.jpg',
      ),
      Exercise(
        id: 'mountainClimbers',
        name: 'Mountain Climbers',
        description: 'A dynamic exercise combining cardio and core engagement',
        targetMuscles: 'Core, Cardio',
        imageUrl: 'assets/images/workouts/mountainclimbers.jpg',
      ),
      Exercise(
        id: 'burpees',
        name: 'Burpees',
        description: 'A high-intensity full body exercise',
        targetMuscles: 'Full Body',
        imageUrl: 'assets/images/workouts/burpees.jpg',
      ),
    ],
  };

  static List<Exercise> getAllExercises() {
    return _exercises.values.expand((e) => e).toList();
  }

  static List<Exercise> getExercisesByMuscleGroup(String muscleGroup) {
    return _exercises[muscleGroup] ?? [];
  }

  static List<String> getMuscleGroups() {
    return _exercises.keys.toList();
  }
  static List<WorkoutExercise> getDefaultWorkoutExercises(String workoutType) {
    final defaultConfig = ExerciseConfig(sets: 3, reps: 12, calories: 50);
    final cardioConfig = ExerciseConfig(sets: 3, reps: 30, calories: 100);

    switch (workoutType) {
      case 'Full Body':
        return [
          _exercises['Chest']![0], // Push-ups
          _exercises['Legs']![0], // Squats
          _exercises['Back']![1], // Rows
          _exercises['Core']![0], // Plank
          _exercises['Shoulders']![0], // Shoulder Press
          _exercises['Cardio']![0], // Jumping Jacks
        ].map((e) => WorkoutExercise(
          exercise: e, 
          config: e.targetMuscles.contains('Cardio') ? cardioConfig : defaultConfig
        )).toList();
      
      case 'Upper Body':
        return [
          _exercises['Chest']![0], // Push-ups
          _exercises['Back']![0], // Pull-ups
          _exercises['Shoulders']![0], // Shoulder Press
          _exercises['Arms']![0], // Bicep Curls
          _exercises['Arms']![1], // Tricep Extensions
        ].map((e) => WorkoutExercise(exercise: e, config: defaultConfig)).toList();
      
      case 'Lower Body':
        return [
          _exercises['Legs']![0], // Squats
          _exercises['Legs']![1], // Lunges
          _exercises['Legs']![2], // Calf Raises
          _exercises['Core']![0], // Plank
          _exercises['Cardio']![0], // Jumping Jacks
        ].map((e) => WorkoutExercise(
          exercise: e,
          config: e.targetMuscles.contains('Cardio') ? cardioConfig : defaultConfig
        )).toList();
      
      case 'Core':
        return [
          _exercises['Core']![0], // Plank 
          _exercises['Core']![1], // Crunches
          _exercises['Core']![2], // Russian Twists
          _exercises['Cardio']![1], // Mountain Climbers
        ].map((e) => WorkoutExercise(
          exercise: e,
          config: e.targetMuscles.contains('Cardio') ? cardioConfig : defaultConfig
        )).toList();
      
      default:
        return [];
    }
  }
}
