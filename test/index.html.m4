m4_define(`TITLE',`Sample Tempalte')
m4_define(`SUBTITLE',`Subtitle')
m4_define(`AUTHOR',`Amit Bakshi')
m4_define(`PRESENTATION',
    SLIDE(`Title 1',
        POINT(`Some point')
        POINT(`Some other point'))
    TRANSITION(`Transition: Slide')
    SLIDE(`Title 2',
        POINT(`Some new point')
        IMAGE(`EDITOR',`images/curves.jpg',`500px',`50%'))
    SLIDE(`Title 3',
        POINT(`A graph')
        IMAGE(`',`graph.png',`500px',`50%'))
    LARGE(`Thank you!',
        POINT(`Questions? Comments?')
        LINK(`Amit Bakshi',`http://whatever.com')))
