  <div id="tendency" style="width:750px;height:400px;"></div>
<script src="${request.getContextPath()}/js/utils/dist/echarts.js" type="text/javascript"></script>  

  <script type="text/javascript">

        require.config({
            paths: {
                echarts:'${request.getContextPath()}/js/utils/dist'		
            }

        }); 

        require(
        [
            'echarts',
            'echarts/chart/bar',
 			'echarts/chart/pie',
            'echarts/chart/line'

        ],

        function (ec1) {

        
       var  option = {
        	tooltip : {
       	    trigger: 'axis'
    },
   	 	 calculable : true,
    xAxis : [
        {
            type : 'category',
             axisLabel : {
                show:true,
                interval: 'auto',    // {number}
                rotate: 45,
                margin: 6,
                formatter: '{value}',
                textStyle: {
                    color: 'blue',
                    fontFamily: 'sans-serif',
                    fontSize: 14,
                    fontStyle: 'italic',
                    fontWeight: 'bold'
                }
            },
            boundaryGap : false,
            data : ${date1}
        }
    ],
    yAxis : [
        {
            type : 'value'
        }
    ],
    series : [
        {
            name:'',
            type:'line',
            stack: '',
            itemStyle: {
                normal: {
                    label : {
                        show: true,
                    }
                }
            },
            data:${compositeindex}
        }
    ]
    };

			  var myChart=ec1.init(document.getElementById('tendency'));
              myChart.setOption(option); 
 			 }
    );

    </script>

