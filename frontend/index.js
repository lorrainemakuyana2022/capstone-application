
console.clear()

const renderedTable = document.getElementById('data')

const currentStatusHTMLElement = document.getElementById('status')

function fetchData() {

    fetch('http://localhost:8080/api/get-data')
        .then(response => response.json())
        .then(response => {
            let data = response.data
            
            const currentStatus = data[0].class

            if (currentStatus === 'undefined' || currentStatus === 'uncertain') {
                currentStatusHTMLElement.className = 'undefined'
            } else {
                currentStatusHTMLElement.className = ''
            }

            currentStatusHTMLElement.innerHTML = currentStatus
            
            renderedTable.innerHTML = ""

            for (let i = 1; i < data.length; i++) {
                const row_data = data[i];
                const time = row_data.class_time.substr(11, 8)
                const status = row_data.class
                renderedTable.innerHTML += `<tr> <td>${time}</td> <td>${status}</td> </tr>`
                
            }
        })

}

let interval = 500

setInterval(() => {
    fetchData()
}, interval);
