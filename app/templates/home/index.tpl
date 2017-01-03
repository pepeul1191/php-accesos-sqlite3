<!DOCTYPE html>
<html>
    <head>
        <title>TODO supply a title</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="shortcut icon" href="{Configuration::get('base_url')}public/assets/site/img/favicon.ico" type="image/x-icon">
        <!-- Inicio CSS -->
        <link href="{Configuration::get('base_url')}public/bower_components/bootstrap/dist/css/bootstrap.min.css" rel="stylesheet" type="text/css"/>
        <link href="{Configuration::get('base_url')}public/bower_components/font-awesome/css/font-awesome.min.css" rel="stylesheet" type="text/css"/>
        <link href="{Configuration::get('base_url')}public/assets/site/css/styles.css" rel="stylesheet" type="text/css"/>
        <!-- Fin CSS -->
        <!-- Inicio Angular -->
        <script src="{Configuration::get('base_url')}public/bower_components/angular/angular.min.js" type="text/javascript"></script>
        <script src="{Configuration::get('base_url')}public/bower_components/angular-resource/angular-resource.min.js" type="text/javascript"></script>
        <script src="{Configuration::get('base_url')}public/bower_components/angular-route/angular-route.min.js" type="text/javascript"></script>
        <script src="{Configuration::get('base_url')}public/scripts/routes.js" type="text/javascript"></script>
        <script src="{Configuration::get('base_url')}public/scripts/controllers/note.js" type="text/javascript"></script>
        <!-- Fin Angular -->
    </head>
    <body ng-app="myLanguageApp">
        <header ng-include="'views/layouts/application/header.html'"></header>
        <div class="body-app">
            {{"Hola"}}
            <input type="text" ng-model="name">
            <div ng-bind="name"></div>
            <div> hello {{name}}</div>

            <div ng-controller="languges">
                Select your Favorite Language : <br>
                <button class="btn btn-default" ng-click="php()">PHP</button><br>
                <button class="btn btn-default" ng-click="javascript()">JavaScript</button><br>
                <button class="btn btn-default" ng-click="cpp()">C++</button><br>
                <button class="btn btn-default" ng-click="java()">Java</button><br>

                <p>You have selected : {{myFavLanguage}}</p>
            </div>
        </div>
        <footer ng-include="'views/layouts/application/footer.html'"></footer>

        <script type="text/javascript">var BASE_URL = "http://localhost/accesos/";</script>
        <script type="text/javascript">
            var application = angular.module("myLanguageApp", []);
            application.controller("languges", ["$scope", function($scope){
                $scope.myFavLanguage = "none";
                $scope.php = function(){
                    $scope.myFavLanguage = "php";
                };
                $scope.javascript = function(){
                    $scope.myFavLanguage = "javascript";
                };
                $scope.cpp = function(){
                    $scope.myFavLanguage = "cpp";
                };
                $scope.java = function(){
                    $scope.myFavLanguage = "java";
                };
            }]);
        </script>
        <!-- Inicio Javascript -->
        <script src="{Configuration::get('base_url')}public/bower_components/jquery/dist/jquery.min.js" type="text/javascript"></script>
        <script src="{Configuration::get('base_url')}public/bower_components/bootstrap/dist/js/bootstrap.min.js" type="text/javascript"></script>
        <script src="{Configuration::get('base_url')}public/bower_components/mootools-core/dist/mootools-core.min.js" type="text/javascript"></script>
        <script src="{Configuration::get('base_url')}public/bower_components/underscore/underscore-min.js" type="text/javascript"></script>
        <script src="{Configuration::get('base_url')}public/bower_components/requirejs/require.js" type="text/javascript"></script>
        <!-- Fin Javascript -->
    </body>
</html>