<div class="row-fluid">
    <div class="span6">
        <c:forEach var="error" items="${errors}">
            <div class="alert alert-error">
                <i class="icon-remove-sign"></i>
                    ${error.category} ${error.message}
            </div>
        </c:forEach>
    </div>
</div>

