/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function generateColor(){
    let r =parseInt(Math.random()*255);
    let g =parseInt(Math.random()*255);
    let b =parseInt(Math.random()*255);
    
    return `rgb(${r}, ${g}, ${b})`
}

function yearChart(id,statsLabels=[], statsinfo =[]) {

    
    const data = {
        labels: statsLabels,
        datasets:[{
                label: 'TURNOVER - YEAR',
                data: statsinfo,
                borderColor:'rgb(75, 192, 192)',
                 backgroundColor: 'rgba(75, 192, 192,0.2)',
                borderWidth: 1
            }]
    };

    const config = {
        type: 'bar',
        data: data,
    };
    let c = document.getElementById(id).getContext("2d")
    new Chart(c, config)
}

function statsChart(id,statsLables=[], statsinfo =[]){
    
    const data = {
        labels: statsLables,
        datasets:[{
                label: 'TURNOVER - MONTH',
                data: statsinfo,
                fill: false,
                borderColor: 'rgb(75, 192, 192)',
                tension: 0.1
            }]
    };
      

    const config = {
        type: 'line',
        data: data,
    };
    let c = document.getElementById(id).getContext("2d")
    new Chart(c, config)
    }

