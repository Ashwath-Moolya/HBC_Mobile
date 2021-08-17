*** Variables ***

#xpath=//android.widget.EditText[@class="android.widget.EditText"]
#id=android.widget.EditText:id/login-form-email
#xpath=//android.widget.TextView[@text="Search"]

${createAccount} =  xpath=//android.widget.TextView[@text="CREATE ACCOUNT"]

#Create Account page
${createaccountfname} =  id=android.widget.EditText:id/registration-form-fname
${createaccountlname} =  id=android.widget.EditText:id/registration-form-lname
${createaccountemail} =  id=android.widget.EditText:id/registration-form-email
${createaccountpwd} =  id=android.widget.EditText:id/registration-form-password
${createaccountconfirmpwd} =  id=android.widget.EditText:id/registration-form-password-confirm
${createaccountzipcode} =  id=android.widget.EditText:id/registration-form-zipcode
${createaccountphone} =  id=android.widget.EditText:id/registration-form-phone