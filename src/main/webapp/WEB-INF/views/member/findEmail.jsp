<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include
        file="../include/header.jspf" %>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>

<!-- Page Content-->

<form commandName="memberVO" id="createForm" action="${path}/member/findResultEmail" method="post">

    <section class="py-5">
        <div class="container px-5">
            <div class="row gx-5 justify-content-center">
                <div class="col-lg-6">
                    <meta charset="UTF-8"/>
                    <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
                    <link
                            href="${path}/resources/dist/css/member/findEmail.css"
                            rel="stylesheet"
                            type="text/css"
                    />
                    <form
                            commandName="memberVO"
                            id="createForm"
                            action="${path}/member/findResultEmail"
                            method="post"
                    >
                        <div id="content">
                            <div class="login_wrap">
                                <div id="findIdArea1" class="login_wrap_inner">
                                    <h2 class="log_logo">계모임</h2>
                                    <h3 class="simp_log_ttl">이메일 찾기</h3>
                                    <fieldset class="find_field">
                                        <dl>
                                            <dt>이름</dt>
                                            <dd>
                                                <input
                                                        id="name"
                                                        name="name"
                                                        maxlength="10"
                                                        placeholder="이름을 입력해 주세요."
                                                        type="text"
                                                />
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>생년월일</dt>
                                            <dd>
                                                <input
                                                        id="ssn"
                                                        name="ssn"
                                                        placeholder="생년월일 6자리를 입력해 주세요."
                                                        type="text"
                                                />
                                            </dd>
                                        </dl>
                                        <dl>
                                            <dt>휴대폰</dt>
                                            <dd>
                                                <input
                                                        id="phone"
                                                        name="phone"
                                                        maxlength="14"
                                                        placeholder="휴대폰 번호를 ‘-’ 없이 입력해 주세요."
                                                        type="text"
                                                />
                                            </dd>
                                        </dl>
                                    </fieldset>
                                    <div class="login_btns_wrap">
                                        <a
                                                class="login"
                                                id="findIdBtn"
                                                onclick="fnSubmit(); return false;"
                                                href="javascript:void(0)"
                                        >확인</a
                                        >
                                    </div>
                                    <div class="findidpw_btns_wrap">
                                        <p><a href="<%=request.getContextPath()%>/member/findPwd">비밀번호 찾기</a></p>
                                        <p><a href="<%=request.getContextPath()%>/member/login">로그인</a></p>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </form>

                    <%@ include file="../include/footer.jspf" %>
                </div>
            </div>
        </div>
    </section>
</form>

<%--javascript--%>

<script>
    var path = "${pageContext.request.contextPath }";

    $(document).ready(function () {
        var msg = "${msg}";
        if (msg != "") {
            alert(msg);
        }
    });

    function fnSubmit() {
        var email_rule =
            /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
        var phone_rule = /^\d{2,3}\d{3,4}\d{4}$/;

        if ($("#name").val() == null || $("#name").val() == "") {
            alert("이름을 입력해주세요.");
            $("#name").focus();

            return false;
        }
    //
        if ($("#phone").val() == null || $("#phone").val() == "") {
            alert("휴대폰 번호를 입력해주세요.");
            $("#phone").focus();

            return false;
        }

        // if (!phone_rule.test($("#phone").val())) {
        //     alert("전화번호 형식에 맞게 입력해주세요.");
        //     return false;
        // }

        if ($("#ssn").val() == null || $("#ssn").val() == "") {
            alert("생년월일를 입력해주세요.");
            $("#phone").focus();

            return false;
        }
    //
        if (confirm("이메일을 찾으시겠습니까?")) {
            $("#createForm").submit();

            return false;
        }
    }

</script>