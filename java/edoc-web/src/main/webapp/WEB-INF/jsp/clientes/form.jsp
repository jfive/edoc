<div class="container-fluid">
    <div class="page-header"><h3>Novo Cliente</h3></div>

    <%@ include file="../decorators/errors.jsp" %>

    <div class="form-page">
        <div class="row-fluid form-wrapper">
            <!-- left column -->
            <div class="span9 with-sidebar">
                <div class="container">
                    <form action="<c:url value='adiciona' />" method="post" class="inline-input">
                        <div class="span12 field-box">
                            <label>Name:</label>
                            <input type="text" name="cliente.nome" class="span8"/>
                        </div>

                        <div class="span11 field-box actions">
                            <input type="submit" class="btn-glow primary" value="Create Client">
                            <span>OR</span>
                            <input type="reset" value="Cancel" class="reset">
                        </div>
                    </form>
                </div>
            </div>
        </div>
    </div>

</div>