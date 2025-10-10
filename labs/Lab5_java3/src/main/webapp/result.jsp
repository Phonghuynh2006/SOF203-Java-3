<p>Fullname: ${bean.fullname}</p>
<p>Birthday: ${bean.birthday}</p>
<p>Gender: ${bean.gender}</p>
<p>Country: ${bean.country}</p>
<p>Salary: ${bean.salary}</p>
<p>Hobbies:
<c:forEach var="h" items="${bean.hobbies}">
    ${h} 
</c:forEach>
</p>
