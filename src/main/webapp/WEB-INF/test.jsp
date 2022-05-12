<div class="pagebg1">
			<div class="pagebgOuter">
				<div class="pageOuter">
					 <div class="tax_title">--&raquo; Best Student Fund &laquo;-- </div>
					<div class="tax">
						<h2>Give Noor Academy of Arizona up to $2,435 <br/>at NO COST to you!!!</h2>
						<div class="tax_form_outer">
							<form method="post">
								<h3>DONOR INFORMATION</h3>
								<h5>Please fill out the highlighted fields</h5>
								<div class="tax_form">
									First Name: <span class="star">*</span><input type="text" name="first_name" value="" id="first_name" class="w365 mR20 required"  />
									Last Name: <span class="star">*</span><input type="text" name="last_name" value="" id="last_name" class="w390 required"  />
								</div>
								<div class="tax_form pL13">
									Address: <span class="star">*</span><input type="text" name="address" value="" id="address" class="w365 mR63 required"  />
									City: <span class="star">*</span><input type="text" name="city" value="" id="city" class="w90 mR10 required"  />
									State: <span class="star">*</span><input type="text" name="state" value="" id="state" class="w113 mR8 required"  />
									ZipCode: <span class="star">*</span><input type="text" name="zip" value="" id="zip" class="w55 required"  />
								</div>
								<div class="tax_form pL22">
									Phone: <span class="star">*</span><input type="text" name="phone" value="" id="phone" class="w365 mR51 required"  />
									Email: <span class="star">*</span><input type="text" name="email" value="" id="email" class="w390 required"  />
								</div>
								<br/>
								<h3>You May donate toward "B" Only If you donate the maximum for "A" for the same taxable year.</h3>
								<h4>A. Original AZ State Private School Tax Credit</h4>
								<ul>
									<li>A <strong><u>single</u></strong> or <strong><u>head of household</u></strong> taxpayer can receive up to <strong><u>$611</u></strong> in Arizona income tax credit.</li>
									<li>A <strong><u>married couple filing a joint return</u></strong> can receive up to <strong><u>$1,221</u></strong> in Arizona income tax credit.</li>
								</ul>
								<h4>B. Switcher AZ State Private School Tax Credit</h4>
								<ul>
									<li>A <strong><u>single</u></strong> or <strong><u>head of household</u></strong> taxpayer can receive up to <strong><u>$608</u></strong> in Arizona income tax credit.</li>
									<li>A <strong><u>married couple filing a joint return</u></strong> can receive up to <strong><u>$1,214</u></strong> in Arizona income tax credit.</li>
								</ul>
								<span class="star">*</span> <select name="type" id="type" class="select" onchange="type_change()">
									<option value="" selected="selected">Filing Status</option>
									<option value="single" >Single Taxpayer</option>
									<option value="married" >Married Filing joint</option>
								</select> 
																<div id="single_container" class="tax_box" style="display:none">
									<table width="100%" cellpadding="0" cellspacing="0">
										<tr>
											<td width="57%" class="title">Single Taxpayer</td>
											<td width="20%" class="title">Max</td>
											<td width="23%" class="title">My Donation</td>
										</tr>
										<tr>
											<td class="text">Donation A</td>
											<td class="text">$611</td>
											<td class="text">
												$ 
												<input type="text" name="single_donation_a" value="" id="single_donation_a" onblur="single_enable_disable()" class="w90 required"  />
											</td>
										</tr>
										<tr>
											<td class="text">Donation B</td>
											<td class="text">$608</td>
											<td class="text">
												$ 
												<input type="text" name="single_donation_b" value="" id="single_donation_b" onblur="show_total()" class="w90 required"  />
											</td>
										</tr>
										<tr>
											<td class="text">Total Donation (A+B) </td>
											<td class="text">$1,219</td>
											<td class="text"><span class="price">$ <strong id="total_single">0</strong></span></td>
										</tr>
									</table>
								</div>
																<div id="married_container" class="tax_box" style="display:none">
									<table width="100%" cellpadding="0" cellspacing="0">
										<tr>
											<td width="57%" class="title">Married Filing Joint</td>
											<td width="20%" class="title">Max</td>
											<td width="23%" class="title">My Donation</td>
										</tr>
										<tr>
											<td class="text">Donation A</td>
											<td class="text">$1,221</td>
											<td class="text">
												$ 
												<input type="text" name="married_donation_a" value="" id="married_donation_a" onblur="married_enable_disable()" class="w90 required"  />
											</td>
										</tr>
										<tr>
											<td class="text">Donation B</td>
											<td class="text">$1,214</td>
											<td class="text">
												$ 
												<input type="text" name="married_donation_b" value="" id="married_donation_b" onblur="show_total()" class="w90 required"  />
											</td>
										</tr>
										<tr>
											<td class="text">Total Donation (A+B) </td>
											<td class="text">$2,435</td>
											<td class="text"><span class="price">$ <strong id="total_married">0</strong></span></td>
										</tr>
									</table>
								</div>
								<div class="tax_form">
									I want my total donation(A+B) of <span class="price">$<u><strong id="total"></strong></u></span> for tax year <input type="text" name="year" value="" id="year" class="w55 required"  />
 to go to <strong>Noor Academy of Arizona</strong>.
								</div>
								<h4>Have you previously donated money to any Student Tuition Organization (STO) such as Best Student Fund this year?</h4>
								<div class="tax_form">
									<input type="radio" name="already_paid" value="no" id="already_paid_no" onchange="already_paid_enable_disable()"  />
									No, this is my first time donating to STO this year.<br/>
									<input type="radio" name="already_paid" value="yes" id="already_paid_yes" onchange="already_paid_enable_disable()"  />
									Yes, it was to 
									<input type="text" name="already_paid_name" value="" id="already_paid_name" class="w90"  />
									in the amount of $ 
									<input type="text" name="already_paid_amount" value="" id="already_paid_amount" class="w55"  />
									and i will claim it for tax year 20
									<input type="text" name="already_paid_year" value="" id="already_paid_year" class="w55"  />
								</div>
							
								<!--<input type="submit" value="" class="paybtn" />-->
								
								<!--<input type ="submit" value="submit" class="paybtn" /> -->
								<form action="https://www.paypal.com/cgi-bin/webscr" method="post" target="_top"> 
								<input type="hidden" name="cmd" value="_s-xclick"> 
								<input type="hidden" name="amount" value="<c:out value = "${monies}"/>" />
								<input type="hidden" name="hosted_button_id" value="QTBDZB9T34W4U">
								<input type="image" src="https://www.paypalobjects.com/en_US/i/btn/btn_donateCC_LG.gif" border="0" name="submit" alt="PayPal - The safer, easier way to pay online!"> 
								<img alt="" border="0" src="https://www.paypalobjects.com/en_US/i/scr/pixel.gif" width="1" height="1"> </form>
                                	<div style="text-align:center">
                                	    <br>
								    <h3>Questions: Call Noor Academy of AZ at <b>480-829-1443</b> or write to BSF at <b>beststudentfund@yahoo.com</b> </h3> 
								</div>
								
							</form>
						</div>
					</div>            	
				</div>
			</div>
			
		</div>
</html>