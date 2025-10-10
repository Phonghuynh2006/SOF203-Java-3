<c:url value="/save" var="url"/>
<form action="${url}" method="post">
    Fullname: <input name="fullname"><br>
    Birthday (MM/dd/yyyy): <input name="birthday"><br>

    Gender:
    <input type="radio" name="gender" value="true"> Male
    <input type="radio" name="gender" value="false"> Female<br>

    Hobbies:
    <input type="checkbox" name="hobbies" value="R"> Reading
    <input type="checkbox" name="hobbies" value="Traveling"> Traveling
    <input type="checkbox" name="hobbies" value="M"> Music<br>

    Country:
    <select name="country">
        <option value="VN">Việt Nam</option>
        <option value="US" selected>United States</option>
    </select><br>

    Salary: <input name="salary"><br>

    <button>Submit</button>
</form>
