(function(){
  var out$ = typeof exports != 'undefined' && exports || this;
  out$.TaskCtrl = TaskCtrl;
  function TaskCtrl($scope){
    $scope.tasks = [
      {
        done: true,
        text: 'you did it'
      }, {
        done: false,
        text: 'hey bruv'
      }
    ];
    $scope.formMode = false;
    $scope.remaining = function(){
      return $scope.tasks.count(function(it){
        return !it.done;
      });
    };
    $scope.addTask = function(){
      var that;
      if (that = $scope.taskText) {
        $scope.tasks.push({
          done: false,
          text: that
        });
      }
      $scope.formMode = false;
    };
    $scope.clean = function(){
      var res$, i$, ref$, len$, task;
      res$ = [];
      for (i$ = 0, len$ = (ref$ = $scope.tasks).length; i$ < len$; ++i$) {
        task = ref$[i$];
        if (!task.done) {
          res$.push(task);
        }
      }
      $scope.tasks = res$;
    };
  }
}).call(this);
