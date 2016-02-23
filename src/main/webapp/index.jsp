<html ng-app="numbersApp">
<head>
    <title>Numbers</title>
    <script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.5.0/angular.min.js"></script>
    <script src="app/controller.js"></script>
</head>
<body ng-controller="numbersAppController" data-ng-init="getNumber()">
<div align="center"><h2>Numbers</h2>
    <table border="1">
        <thead>
        <tr>
            <th width="150">Integer</th>
            <th width="150">Prime</th>
        </tr>
        </thead>
        <tbody>
        <tr ng-repeat="row in rows">
            <td width="150" align="right">{{row}}</td>
            <td width="150" align="right">{{row|largestPrime}}</td>
        </tr>
        <tr>
            <td colspan="2" align="center">
                <button ng-click="stop()">
                    STOP
                </button>
            </td>
        </tr>
        </tbody>
    </table>
</div>
</body>
</html>
