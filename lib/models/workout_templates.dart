import 'workout.dart';
import '../services/exercise_library_service.dart';

class WorkoutTemplates {
  static final Workout fullBodyWorkout = Workout(
    id: '1',
    title: 'Full Body Workout',
    description: 'Complete full body workout targeting all major muscle groups',
    category: 'Strength',
    difficulty: 'Beginner',
    imageUrl: 'assets/images/workouts/full_body.jpg',
    exercises: ExerciseLibraryService.getDefaultWorkoutExercises('Full Body'),
    addedAt: DateTime.now(),
  );

  static final Workout upperBodyWorkout = Workout(
    id: '2',
    title: 'Upper Body Blast',
    description: 'Intense upper body workout focusing on chest, back, and arms',
    category: 'Strength',
    difficulty: 'Intermediate',
    imageUrl: 'assets/images/workouts/upper_body.jpg',
    exercises: ExerciseLibraryService.getDefaultWorkoutExercises('Upper Body'),
    addedAt: DateTime.now(),
  );

  static final Workout lowerBodyWorkout = Workout(
    id: '3',
    title: 'Lower Body Focus',
    description: 'Leg-focused workout to build strength and stability',
    category: 'Strength',
    difficulty: 'Beginner',
    imageUrl: 'assets/images/workouts/lower_body.jpg',
    exercises: ExerciseLibraryService.getDefaultWorkoutExercises('Lower Body'),
    addedAt: DateTime.now(),
  );

  static final Workout coreWorkout = Workout(
    id: '4',
    title: 'Core Crusher',
    description: 'Core-focused workout for a stronger midsection',
    category: 'Core',
    difficulty: 'Intermediate',
    imageUrl: 'assets/images/workouts/core.jpg',
    exercises: ExerciseLibraryService.getDefaultWorkoutExercises('Core'),
    addedAt: DateTime.now(),
  );

  static final Workout singleMuscleWorkout = Workout(
    id: '5',
    title: 'Single Muscle Split',
    description: 'A 6-day split targeting one muscle group per day',
    category: 'Strength',
    difficulty: 'Beginner',
    imageUrl: 'assets/images/workouts/single_muscle.jpg',
    exercises: _getSingleMuscleWorkoutExercises(),
    customDuration: 180, // Total weekly duration for beginner
    addedAt: DateTime.now(),
  );

  static final Workout intermediateSingleMuscleWorkout = Workout(
    id: '6',
    title: 'Intermediate Single Muscle Split',
    description: 'An intensive 6-day split targeting one muscle group per day with advanced exercises',
    category: 'Strength',
    difficulty: 'Intermediate',
    imageUrl: 'assets/images/workouts/intermediate_single_muscle.jpg',
    exercises: _getIntermediateSingleMuscleWorkoutExercises(),
    customDuration: 270, // Total weekly duration for intermediate
    addedAt: DateTime.now(),
  );

  static final Workout advancedSingleMuscleWorkout = Workout(
    id: '7',
    title: 'Advanced Single Muscle Split',
    description: 'An intense 6-day split with high volume training for experienced lifters',
    category: 'Strength',
    difficulty: 'Advanced',
    imageUrl: 'assets/images/workouts/advanced_single_muscle.jpg',
    exercises: _getAdvancedSingleMuscleWorkoutExercises(),
    customDuration: 540, // Total weekly duration for advanced
    addedAt: DateTime.now(),
  );

  static final List<Workout> allWorkouts = [
    fullBodyWorkout,
    upperBodyWorkout,
    lowerBodyWorkout,
    coreWorkout,
    singleMuscleWorkout,
    intermediateSingleMuscleWorkout,
    advancedSingleMuscleWorkout,
  ];

  static List<Workout> getWorkoutsByCategory(String category) {
    return allWorkouts.where((workout) => workout.category == category).toList();
  }

  static List<Workout> getWorkoutsByDifficulty(String difficulty) {
    return allWorkouts.where((workout) => workout.difficulty == difficulty).toList();
  }

  static ExerciseConfig _getCustomConfig(String exerciseId, String difficulty) {
    // Base sets and reps by difficulty
    int sets = difficulty == 'Beginner' ? 3 : difficulty == 'Intermediate' ? 4 : 5;
    int reps = difficulty == 'Beginner' ? 12 : difficulty == 'Intermediate' ? 10 : 8;

    // Exercise-specific calorie mappings
    final Map<String, Map<String, int>> caloriesByExercise = {
      // Chest exercises
      'barbell benchpresss': {'Beginner': 30, 'Intermediate': 35, 'Advanced': 40},
      'incline_dumbbell_press': {'Beginner': 30, 'Intermediate': 35, 'Advanced': 40},
      'decline_bench_press': {'Beginner': 25, 'Intermediate': 30, 'Advanced': 35},
      'dumbbell_pullover': {'Beginner': 20, 'Intermediate': 30, 'Advanced': 30},
      'chest_dips': {'Beginner': 20, 'Intermediate': 25, 'Advanced': 30},
      'cable_chest_fly': {'Beginner': 25, 'Intermediate': 30, 'Advanced': 30},
      
      // Back exercises
      'deadlifts': {'Beginner': 50, 'Intermediate': 60, 'Advanced': 70},
      'pullups': {'Beginner': 30, 'Intermediate': 35, 'Advanced': 45},
      'latPulldown': {'Beginner': 30, 'Intermediate': 35, 'Advanced': 40},
      'dumbbell_row': {'Beginner': 30, 'Intermediate': 35, 'Advanced': 40},
      'tbar_row': {'Beginner': 25, 'Intermediate': 30, 'Advanced': 35},
      'seated_cable_row': {'Beginner': 25, 'Intermediate': 30, 'Advanced': 35},
      'straight_arm_pulldown': {'Beginner': 20, 'Intermediate': 25, 'Advanced': 30},
      
      // Biceps exercises
      'barbell_curl': {'Beginner': 20, 'Intermediate': 25, 'Advanced': 30},
      'preacher_curl': {'Beginner': 20, 'Intermediate': 25, 'Advanced': 30},
      'hammer_curl': {'Beginner': 20, 'Intermediate': 25, 'Advanced': 30},
      'concentration_curl': {'Beginner': 20, 'Intermediate': 25, 'Advanced': 30},
      'incline_dumbbell_curl': {'Beginner': 20, 'Intermediate': 25, 'Advanced': 30},
      'spider_curl':{'Beginner': 20, 'Intermediate': 25, 'Advanced': 30},
      'cable_curl': {'Beginner': 20, 'Intermediate': 25, 'Advanced': 30},
      
      // Triceps exercises
      'close_grip_bench_press': {'Beginner': 25, 'Intermediate': 30, 'Advanced': 35},
      'skull_crushers': {'Beginner': 20, 'Intermediate': 30, 'Advanced': 30},
      'overhead_tricep_extension': {'Beginner': 20, 'Intermediate': 25, 'Advanced': 30},
      'tricep_pushdowns': {'Beginner': 20, 'Intermediate': 25, 'Advanced': 30},
      'overhead_cable_extension': {'Beginner': 20, 'Intermediate': 25, 'Advanced': 30},
      'tricep_kickbacks': {'Beginner': 20, 'Intermediate': 25, 'Advanced': 30},
      
      // Shoulder exercises
      'barbell_overhead_press': {'Beginner': 25, 'Intermediate': 35, 'Advanced': 40},
      'dumbbell_shoulder_press': {'Beginner': 25, 'Intermediate': 30, 'Advanced': 35},
      'arnold_press': {'Beginner': 25, 'Intermediate': 30, 'Advanced': 35},
      'lateralRaises': {'Beginner': 20, 'Intermediate': 25, 'Advanced': 25},
      'front_raise': {'Beginner': 20, 'Intermediate': 25, 'Advanced': 30},
      'rear_delt_fly': {'Beginner': 20, 'Intermediate': 25, 'Advanced': 25},
      
      // Legs exercises
      'squats': {'Beginner': 50, 'Intermediate': 60, 'Advanced': 65},
      'front_squats': {'Beginner': 45, 'Intermediate': 55, 'Advanced': 60},
      'leg_press': {'Beginner': 40, 'Intermediate': 45, 'Advanced': 50},
      'romanian_deadlifts': {'Beginner': 40, 'Intermediate': 50, 'Advanced': 55},
      'leg_curl': {'Beginner': 25, 'Intermediate': 30, 'Advanced': 35},
      'leg_extension': {'Beginner': 25, 'Intermediate': 30, 'Advanced': 35},
    };

    // Get calories for the specific exercise and difficulty, or use a default value
    int calories = caloriesByExercise[exerciseId]?[difficulty] ?? 
      (difficulty == 'Beginner' ? 70 : difficulty == 'Intermediate' ? 95 : 115);

    return ExerciseConfig(
      sets: sets,
      reps: reps,
      calories: calories,
    );
  }

  static Exercise _findExercise(String muscleGroup, String exerciseId) {
    try {
      final exercises = ExerciseLibraryService.getExercisesByMuscleGroup(muscleGroup);
      print('Looking for $exerciseId in $muscleGroup. Found ${exercises.length} exercises');
      return exercises.firstWhere(
        (e) => e.id == exerciseId,
        orElse: () {
          print('Exercise not found: $exerciseId in $muscleGroup');
          // Return the first exercise of that muscle group as a fallback
          return exercises.first;
        },
      );
    } catch (e) {
      print('Error finding exercise: $muscleGroup / $exerciseId: $e');
      throw Exception('Could not find exercise: $muscleGroup / $exerciseId');
    }
  }

  static List<WorkoutExercise> _getSingleMuscleWorkoutExercises() {
    // Monday - Chest
    final chestExercises = [
      _findExercise('Chest', 'barbell_benchpress'),
      _findExercise('Chest', 'incline_dumbbell_press'),
      _findExercise('Chest', 'cable_chest_fly'),
    ].map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, 'Beginner'),
    )).toList();

    // Tuesday - Back
    final backExercises = [
      _findExercise('Back', 'latPulldown'),
      _findExercise('Back', 'dumbbell_row'),
      _findExercise('Back', 'seated_cable_row'),
    ].map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, 'Beginner'),
    )).toList();

    // Wednesday - Biceps
    final bicepsExercises = [
      _findExercise('Arms', 'barbell_curl'),
      _findExercise('Arms', 'hammer_curl'),
      _findExercise('Arms', 'concentration_curl'),
    ].map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, 'Beginner'),
    )).toList();

    // Thursday - Triceps
    final tricepsExercises = [
      _findExercise('Arms', 'skull_crushers'),
      _findExercise('Arms', 'overhead_tricep_extension'),
      _findExercise('Arms', 'tricep_pushdowns'),
    ].map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, 'Beginner'),
    )).toList();

    // Friday - Shoulders
    final shoulderExercises = [
      _findExercise('Shoulders', 'dumbbell_shoulder_press'),
      _findExercise('Shoulders', 'lateralRaises'),
      _findExercise('Shoulders', 'rear_delt_fly'),
    ].map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, 'Beginner'),
    )).toList();

    // Saturday - Legs
    final legExercises = [
      _findExercise('Legs', 'squats'),
      _findExercise('Legs', 'leg_curl'),
      _findExercise('Legs', 'leg_extension'),
    ].map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, 'Beginner'),
    )).toList();

    // Combine all exercises and map them to WorkoutExercise objects
    return [
      ...chestExercises,
      ...backExercises,
      ...bicepsExercises,
      ...tricepsExercises,
      ...shoulderExercises,
      ...legExercises,
    ];
  }

  static List<WorkoutExercise> _getIntermediateSingleMuscleWorkoutExercises() {
    // Monday - Chest
    final chestExercises = [
      _findExercise('Chest', 'barbell benchpresss'),
      _findExercise('Chest', 'incline_dumbbell_press'),
      _findExercise('Chest', 'dumbbell_pullover'),
      _findExercise('Chest', 'cable_chest_fly'),
    ].map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, 'Intermediate'),
    )).toList();

    // Tuesday - Back
    final backExercises = [
      _findExercise('Back', 'deadlifts'),
      _findExercise('Back', 'latPulldown'),
      _findExercise('Back', 'dumbbell_row'),
      _findExercise('Back', 'seated_cable_row'),
    ].map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, 'Intermediate'),
    )).toList();

    // Wednesday - Biceps
    final bicepsExercises = [
      _findExercise('Arms', 'barbell_curl'),
      _findExercise('Arms', 'preacher_curl'),
      _findExercise('Arms', 'incline_dumbbell_curl'),
      _findExercise('Arms', 'cable_curl'),
    ].map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, 'Intermediate'),
    )).toList();

    // Thursday - Triceps
    final tricepsExercises = [
      _findExercise('Arms', 'close_grip_bench_press'),
      _findExercise('Arms', 'skull_crushers'),
      _findExercise('Arms', 'overhead_tricep_extension'),
      _findExercise('Arms', 'tricep_pushdowns'),
    ].map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, 'Intermediate'),
    )).toList();

    // Friday - Shoulders
    final shoulderExercises = [
      _findExercise('Shoulders', 'dumbbell_shoulder_press'),
      _findExercise('Shoulders', 'arnold_press'),
      _findExercise('Shoulders', 'lateralRaises'),
      _findExercise('Shoulders', 'rear_delt_fly'),
    ].map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, 'Intermediate'),
    )).toList();

    // Saturday - Legs
    final legExercises = [
      _findExercise('Legs', 'squats'),
      _findExercise('Legs', 'leg_press'),
      _findExercise('Legs', 'leg_curl'),
      _findExercise('Legs', 'leg_extension'),
    ].map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, 'Intermediate'),
    )).toList();

    // Combine all exercises and map them to WorkoutExercise objects
    return [
      ...chestExercises,
      ...backExercises,
      ...bicepsExercises,
      ...tricepsExercises,
      ...shoulderExercises,
      ...legExercises,
    ];
  }

  static List<WorkoutExercise> _getAdvancedSingleMuscleWorkoutExercises() {
    // Monday - Chest (6 exercises)
    final chestExercises = [
      _findExercise('Chest', 'barbell benchpresss'),
      _findExercise('Chest', 'incline_dumbbell_press'),
      _findExercise('Chest', 'decline_bench_press'),
      _findExercise('Chest', 'dumbbell_pullover'),
      _findExercise('Chest', 'dips'),
      _findExercise('Chest', 'cable_chest_fly'),
    ].map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, 'Advanced'),
    )).toList();

    // Tuesday - Back (6 exercises)
    final backExercises = [
      _findExercise('Back', 'deadlifts'),
      _findExercise('Back', 'pullups'),
      _findExercise('Back', 'tbar_row'),
      _findExercise('Back', 'dumbbell_row'),
      _findExercise('Back', 'seated_cable_row'),
      _findExercise('Back', 'straight_arm_pulldown'),
    ].map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, 'Advanced'),
    )).toList();

    // Wednesday - Biceps (6 exercises)
    final bicepsExercises = [
      _findExercise('Arms', 'barbell_curl'),
      _findExercise('Arms', 'preacher_curl'),
      _findExercise('Arms', 'incline_dumbbell_curl'),
      _findExercise('Arms', 'hammer_curl'),
      _findExercise('Arms', 'spider_curl'),
      _findExercise('Arms', 'cable_curl'),
    ].map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, 'Advanced'),
    )).toList();

    // Thursday - Triceps (6 exercises)
    final tricepsExercises = [
      _findExercise('Arms', 'close_grip_bench_press'),
      _findExercise('Arms', 'skull_crushers'),
      _findExercise('Arms', 'tricep_pushdowns'),
      _findExercise('Arms', 'overhead_cable_extension'),
      _findExercise('Arms', 'overhead_tricep_extension'),
      _findExercise('Arms', 'tricep_kickbacks'),
    ].map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, 'Advanced'),
    )).toList();

    // Friday - Shoulders (6 exercises)
    final shoulderExercises = [
      _findExercise('Shoulders', 'barbell_overhead_press'),
      _findExercise('Shoulders', 'dumbbell_shoulder_press'),
      _findExercise('Shoulders', 'arnold_press'),
      _findExercise('Shoulders', 'lateralRaises'),
      _findExercise('Shoulders', 'front_raise'),
      _findExercise('Shoulders', 'rear_delt_fly'),
    ].map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, 'Advanced'),
    )).toList();

    // Saturday - Legs (6 exercises)
    final legExercises = [
      _findExercise('Legs', 'squats'),
      _findExercise('Legs', 'front_squats'),
      _findExercise('Legs', 'leg_press'),
      _findExercise('Legs', 'romanian_deadlifts'),
      _findExercise('Legs', 'leg_curl'),
      _findExercise('Legs', 'leg_extension'),
    ].map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, 'Advanced'),
    )).toList();

    // Combine all exercises and map them to WorkoutExercise objects
    return [
      ...chestExercises,
      ...backExercises,
      ...bicepsExercises,
      ...tricepsExercises,
      ...shoulderExercises,
      ...legExercises,
    ];
  }

  static Workout createDaySpecificSingleMuscleWorkout({
    required String difficulty,
    required int dayIndex,
  }) {
    String dayName = ['Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday', 'Saturday'][dayIndex];
    String muscleGroup = ['Chest', 'Back', 'Biceps', 'Triceps', 'Shoulders', 'Legs'][dayIndex];
    String difficultyId = {'Beginner': '5', 'Intermediate': '6', 'Advanced': '7'}[difficulty] ?? '5';
    
    // Calculate daily duration based on total weekly duration
    int weeklyDuration = difficulty == 'Beginner' ? 180 : difficulty == 'Intermediate' ? 270 : 540;
    int duration = weeklyDuration ~/ 6; // Divide weekly duration by number of days
    
    List<WorkoutExercise> exercises = [];
    switch (dayIndex) {
      case 0: // Monday - Chest
        exercises = _getChestExercises(difficulty);
        break;
      case 1: // Tuesday - Back
        exercises = _getBackExercises(difficulty);
        break;
      case 2: // Wednesday - Biceps
        exercises = _getBicepsExercises(difficulty);
        break;
      case 3: // Thursday - Triceps
        exercises = _getTricepsExercises(difficulty);
        break;
      case 4: // Friday - Shoulders 
        exercises = _getShoulderExercises(difficulty);
        break;
      case 5: // Saturday - Legs
        exercises = _getLegExercises(difficulty);
        break;
      default:
        throw Exception('Invalid day index');
    }

    return Workout(
      id: '${difficultyId}_${dayIndex + 1}',
      title: '$dayName - $muscleGroup ($difficulty)',
      description: 'Day ${dayIndex + 1} of 6-day $difficulty single muscle split focusing on $muscleGroup',
      category: 'Strength',
      difficulty: difficulty,
      imageUrl: 'assets/images/workouts/${difficulty.toLowerCase()}_single_muscle.jpg',
      exercises: exercises,
      customDuration: duration,
      addedAt: DateTime.now(),
    );
  }

  static List<WorkoutExercise> _getChestExercises(String difficulty) {
    var exercises = <Exercise>[
      _findExercise('Chest', 'barbell benchpresss'),
      _findExercise('Chest', 'incline_dumbbell_press'),
    ];

    if (difficulty == 'Beginner') {
      exercises.add(_findExercise('Chest', 'cable_chest_fly'));
    } else if (difficulty == 'Intermediate') {
      exercises.addAll([
        _findExercise('Chest', 'dumbbell_pullover'),
        _findExercise('Chest', 'cable_chest_fly'),
      ]);
    } else {
      exercises.addAll([
        _findExercise('Chest', 'decline_bench_press'),
        _findExercise('Chest', 'dumbbell_pullover'),
        _findExercise('Chest', 'chest_dips'),
        _findExercise('Chest', 'cable_chest_fly'),
      ]);
    }

    return exercises.map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, difficulty),
    )).toList();
  }

  static List<WorkoutExercise> _getBackExercises(String difficulty) {
    var exercises = <Exercise>[
      _findExercise('Back', 'deadlifts'),
      _findExercise('Back', 'latPulldown'),
    ];

    if (difficulty == 'Beginner') {
      exercises.add(_findExercise('Back', 'seated_cable_row'));
    } else if (difficulty == 'Intermediate') {
      exercises.addAll([
        _findExercise('Back', 'dumbbell_row'),
        _findExercise('Back', 'seated_cable_row'),
      ]);
    } else {
      exercises.addAll([
        _findExercise('Back', 'pullups'),
        _findExercise('Back', 'tbar_row'),
        _findExercise('Back', 'dumbbell_row'),
        _findExercise('Back', 'seated_cable_row'),
      ]);
    }

    return exercises.map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, difficulty),
    )).toList();
  }

  static List<WorkoutExercise> _getBicepsExercises(String difficulty) {
    var exercises = <Exercise>[
      _findExercise('Arms', 'barbell_curl'),
      _findExercise('Arms', 'hammer_curl'),
    ];

    if (difficulty == 'Beginner') {
      exercises.add(_findExercise('Arms', 'concentration_curl'));
    } else if (difficulty == 'Intermediate') {
      exercises.addAll([
        _findExercise('Arms', 'preacher_curl'),
        _findExercise('Arms', 'cable_curl'),
      ]);
    } else {
      exercises.addAll([
        _findExercise('Arms', 'preacher_curl'),
        _findExercise('Arms', 'incline_dumbbell_curl'),
        _findExercise('Arms', 'spider_curl'),
        _findExercise('Arms', 'cable_curl'),
      ]);
    }

    return exercises.map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, difficulty),
    )).toList();
  }

  static List<WorkoutExercise> _getTricepsExercises(String difficulty) {
    var exercises = <Exercise>[
      _findExercise('Arms', 'close_grip_bench_press'),
      _findExercise('Arms', 'skull_crushers'),
    ];

    if (difficulty == 'Beginner') {
      exercises.add(_findExercise('Arms', 'tricep_pushdowns'));
    } else if (difficulty == 'Intermediate') {
      exercises.addAll([
        _findExercise('Arms', 'overhead_tricep_extension'),
        _findExercise('Arms', 'tricep_pushdowns'),
      ]);
    } else {
      exercises.addAll([
        _findExercise('Arms', 'tricep_pushdowns'),
        _findExercise('Arms', 'overhead_cable_extension'),
        _findExercise('Arms', 'overhead_tricep_extension'),
        _findExercise('Arms', 'tricep_kickbacks'),
      ]);
    }

    return exercises.map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, difficulty),
    )).toList();
  }

  static List<WorkoutExercise> _getShoulderExercises(String difficulty) {
    var exercises = <Exercise>[
      _findExercise('Shoulders', 'barbell_overhead_press'),
      _findExercise('Shoulders', 'lateralRaises'),
    ];

    if (difficulty == 'Beginner') {
      exercises.add(_findExercise('Shoulders', 'rear_delt_fly'));
    } else if (difficulty == 'Intermediate') {
      exercises.addAll([
        _findExercise('Shoulders', 'arnold_press'),
        _findExercise('Shoulders', 'rear_delt_fly'),
      ]);
    } else {
      exercises.addAll([
        _findExercise('Shoulders', 'dumbbell_shoulder_press'),
        _findExercise('Shoulders', 'arnold_press'),
        _findExercise('Shoulders', 'front_raise'),
        _findExercise('Shoulders', 'rear_delt_fly'),
      ]);
    }

    return exercises.map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, difficulty),
    )).toList();
  }

  static List<WorkoutExercise> _getLegExercises(String difficulty) {
    var exercises = <Exercise>[
      _findExercise('Legs', 'squats'),
      _findExercise('Legs', 'leg_press'),
    ];

    if (difficulty == 'Beginner') {
      exercises.add(_findExercise('Legs', 'leg_extension'));
    } else if (difficulty == 'Intermediate') {
      exercises.addAll([
        _findExercise('Legs', 'leg_curl'),
        _findExercise('Legs', 'leg_extension'),
      ]);
    } else {
      exercises.addAll([
        _findExercise('Legs', 'front_squats'),
        _findExercise('Legs', 'romanian_deadlifts'),
        _findExercise('Legs', 'leg_curl'),
        _findExercise('Legs', 'leg_extension'),
      ]);
    }

    return exercises.map((e) => WorkoutExercise(
      exercise: e,
      config: _getCustomConfig(e.id, difficulty),
    )).toList();
  }
}