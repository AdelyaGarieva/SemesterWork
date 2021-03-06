<!doctype html>
<#import "spring.ftl" as spring>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <title>Document</title>
<#--    <link rel="stylesheet" href="https://vk.com/doc99916294_544558697?hash=c23b98998fd962260c&dl=826844dc49a2e1a0fd">-->

</head>

<body>
<#include "parts/header.ftl">
<!-- ##### Breadcumb Area Start ##### -->
<div>
    <div class="container h-100">
        <div class="row h-100 align-items-center">
            <div class="col-12">
                <div class="page-title text-center">
                    <h2><@spring.message "signUp.page.registration"/></h2>
                </div>
            </div>
        </div>
    </div>
</div>
<!-- ##### Breadcumb Area End ##### -->

<!-- ##### Checkout Area Start ##### -->
<div class="checkout_area section-padding-80">
    <div class="container">
        <div class="row">


            <div class="col-md-6 offset-md-3">
                <@spring.bind "signUpForm"/>
                <form class="form-horizontal" method="post" action="/registration">

                    <div class="order-details-confirmation" style="text-align: center;">
                        <div class="col-md-12 mb-4">
                            <label for="first_name"><@spring.message "signUp.page.name"/> <span>*</span></label>
                            <@spring.formInput "signUpForm.name" "class='form-control'"/>
                            <@spring.showErrors "<br>","error"/>
                        </div>
                        <div class="col-md-12 mb-4">
                            <label for="last_name"><@spring.message "signUp.page.surname"/> <span>*</span></label>
                            <@spring.formInput "signUpForm.surname" "class='form-control'"/>
                            <@spring.showErrors "<br>","error"/>
                        </div>
                        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}">
                        <div class="col-12 mb-4">
                            <label for="email_address"><@spring.message "signUp.page.email"/> <span>*</span></label>
                            <@spring.formInput "signUpForm.email" "class='form-control'"/>
                            <@spring.showErrors "<br>","error"/>
                        </div>
                        <div class="col-12 mb-4">
                            <label for="password"><@spring.message "signUp.page.password"/> <span>*</span></label>
                            <@spring.formPasswordInput "signUpForm.password" "class='form-control'"/>
                            <@spring.showErrors "<br>","error"/>
                        </div>

                        <button type="submit" class="btn essence-btn"><@spring.message "signUp.page.signUp"/>
                        </button>
                        </br></br>
                        <a href="/login"><@spring.message "signUp.page.signIn"/></a>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
<!-- ##### Checkout Area End ##### -->

</body>
</html>