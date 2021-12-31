

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
    
    function addToPrescription(id, name,type) {
    event.preventDefault();
    fetch("/medicWeb/api/prescription", {
        method: 'post',
        body: JSON.stringify({
            "medicineId": id,
            "name": name,
            "count": 1,
            "description":document.getElementById("contentId").value,
            "type": type
         }),
        headers: {
            "Content-Type": "application/json"
        }
    }).then(function(res) {
         console.info(res)
        return res.json();
    }).then(function(data) {
         console.info(data);
//         let counter = document.getElementById("cartCounter")
//      counter.innerText = data.count
         location.reload();
    })
    }
    
    function updatePres(obj,medicineId){
   fetch("/medicWeb/api/prescription",{
       method: "put",
       body:JSON.stringify({
           "medicineId": medicineId,
            "name": "",
            "count": obj.value,
            "description":document.getElementById("contentId").value,
            "type": ""
       }),
       headers:{
           "Content-type":"application/json"
       }
   }).then(function(res){
       return res.json()
   }).then(function (data){
       location.reload()
   })
}
    
      function deletePres(id) {
          event.preventDefault();
        if (confirm("Bạn chắc chắn xóa ?")== true) {
             let fect = {
            method: 'DELETE',
            headers: {
                'Content-Type': 'application/json'
            },
            body: JSON.stringify()
        }
        return fetch(`http://localhost:8083/medicWeb/api/prescription/delete-` + id, fect)
                .then(res => res.json())
                .then(data => data,location.reload())                            
            window.reload();
        }
        
    }
    
    function add(){
    if(confirm("Bạn chắc chắn ?")== true){
        fetch("/medicWeb/api/add",{
            method: "post"
        }).then(function (res){
            return res.json();
        }).then(function(code){
            console.info(code);
            location.reload();
       
        });
//        fetch(`/medicWeb/api/add`, {
//        method: "POST",
//        headers: {
//            "Content-Type": "application/json"
//        }
//    }).then(res => {
//        if (res.status == 200) {
//            location.reload();
//        } else {
//            alert("Something wrong!!!");
//        }
//    })
// Swal.fire(
//            'Thành công!',
//            'Đặt hàng thành công!',
//            'success'
//        )
    }
}