

 function updateMedic(id, name, element, weight,description,
 price, categoryId,manufactoryId,supplierId,typeId) {
        let fecthDate = {
            method: 'PUT',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify({
                "name": name,
                "element": element,
                "weight": weight,
                "description": description,
                "categoryId": categoryId,
                "price":price,
                "manufactoryId": manufactoryId,
                "supplierId": supplierId,
                "typeId": typeId
            })
        }
        return fetch(`/medicWeb/api/medicine/` + id, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)
    }

    function getMedicById(id) {
        let fecthDate = {
            method: 'GET',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8083/medicWeb/api/medicine/` + id, fecthDate)
                .then(res => res.json())
                .then(data => data)
                .catch(err => err)
    }
 function deleteMedicine(id) {
        if (confirm("Bạn chắc chắn xóa ?")== true) {
             let fect = {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8083/medicWeb/api/medicine/` + id, fect)
                .then(res => res.json())
                .then(data => data,location.reload())    
          window.reload();
        }
        
    }
     function deleteUser(id) {
        if (confirm("Bạn chắc chắn xóa ?")== true) {
             let fect = {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8083/medicWeb/api/user-` + id, fect)
                .then(res => res.json())
                .then(data => data,location.reload())                            
            window.reload();
        }
        
    }
    
    function addToPrescription(id, name,description) {
    
    fetch("/medicWeb/api/prescription", {
        method: 'post',
        body: JSON.stringify({
            "medicineId": id,
            "name": name,
            "description":description,
            "count": 1
         }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function(res) {
        return res.json()
    }).then(function(data) {
        let counter = document.getElementById("cartCounter")
        counter.innerText = data;
    })
}