Example Vermintide 2 Mod for implementing a Custom ConflictDirector

Simply copying the `directors` folder into your own mod along with the hook `LevelAnalysis._setup_level_data` and it's acomping mod:set()/mod:get() scheme for adding ConflictDirectors, is enough to implement a custom ConflictDirectors; on level by level basis.