sap.ui.require(
    [
        'sap/fe/test/JourneyRunner',
        'result/test/integration/FirstJourney',
		'result/test/integration/pages/ResultList',
		'result/test/integration/pages/ResultObjectPage'
    ],
    function(JourneyRunner, opaJourney, ResultList, ResultObjectPage) {
        'use strict';
        var JourneyRunner = new JourneyRunner({
            // start index.html in web folder
            launchUrl: sap.ui.require.toUrl('result') + '/index.html'
        });

       
        JourneyRunner.run(
            {
                pages: { 
					onTheResultList: ResultList,
					onTheResultObjectPage: ResultObjectPage
                }
            },
            opaJourney.run
        );
    }
);