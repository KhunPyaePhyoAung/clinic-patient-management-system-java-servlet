<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<section class="w-100">
	<div class="container bg-white">
		<h2>${viewTitle}</h2>
		
		<c:url var="saveUrl" value="/doctor/prescriptions/save"></c:url>
		<form action="${saveUrl}" method="post">
			<div class="row mt-4">
			
				<div class="row form-group w-50">
					<div class="col form-group w-50">
						<label for="">Doctor</label>
						<input type="text" value="U Tun Naing" readonly />
					</div>
					<div class="col form-group w-50">
						<label for="">Patient</label>
						<select name="">
							<option value="" selected disabled hidden>-- select patient --</option>
			            	<option value="">Mg Thein Than</option>
			            	<option value="">Ma Myo Thidar</option>
			            	<option value="">U Win Tin</option>
						</select>
					</div>
				</div>
				
				
				<div class="row form-group w-50">
					<div class="col form-group w-100">
						<label for="">Visit Date</label>
						<input type="date"/>
					</div>
					
					<div class="col form-group w-100">
						<label for="">Visit Time</label>
						<input type="time"/>
					</div>
					
					<div class="col form-group w-100">
						<label for="">Next Visit Date</label>
						<input type="date"/>
					</div>
				</div>
				
			</div>
			
			
			<div class="row mt-4">

				<div class="row form-group w-50">
					<div class="col form-group w-100">
						<label for="">Blood Pressure (mm Hg)</label>
						<input type="text" pattern="[0-9]+/[0-9]+" placeholder="eg: 120/80"/>
						
					</div>
					<div class="col form-group w-100">
						<label for="">Temperature (°F)</label>
						<input type="number" pattern="[0-9]+([\.][0-9]+)?" step="any" min="0" placeholder="eg: 90.6" />
					</div>
					<div class="col form-group w-100">
						<label for="">Pulse Rate (BPM)</label>
						<input type="number" pattern="[0-9]+([\.][0-9]+)?" step="any" min="0" placeholder="eg: 60" />
					</div>
				</div>			
				
				<div class="col form-group w-50">
					<label for="">Disease</label>
					<select name="" id="">
						<option value="">-- select disease --</option>
		            	<option value="">Headache</option>
		            	<option value="">Allergies</option>
		            	<option value="">Stomach Aches</option>
					</select>
				</div>
			</div>
			
			<h3 class="mt-4">Medicines</h3>
			
			<table class="w-100 mt-2">
				<thead>
					<tr>
						<th class="w-10ch" rowspan="2">#</th>
						<th rowspan="2">Medicine</th>
						<th colspan="4">Dosage</th>
						<th class="w-10ch" rowspan="2">Qty</th>
						<th class="w-10ch" rowspan="2">Duration</th>
						<th rowspan="2">Comment</th>
						<th class="w-10ch" rowspan="2">Action</th>
					</tr>
					
					<tr>
						<th class="w-8ch"><i class="fa-solid fa-circle"></i></th>
						<th class="w-8ch"><i class="fa-solid fa-sun"></i></th>
						<th class="w-8ch"><i class="fa-solid fa-cloud-sun"></i></th>
						<th class="w-8ch"><i class="fa-solid fa-moon"></i></th>
					</tr>
				</thead>
				<tbody>
					<tr>
						<td class="text-right content-box">1</td>
						<td>Amlodipine</td>
						<td class="text-center">2</td>
						<td class="text-center">1</td>
						<td class="text-center">0</td>
						<td class="text-center">0.5</td>
						<td class="text-center content-box">12</td>
						<td class="text-center content-box">3</td>
						<td>After food</td>
						<td></td>
					</tr>
					<tr>
						<td class="text-right content-box">2</td>
						<td>Metformin</td>
						<td class="text-center">1</td>
						<td class="text-center">1</td>
						<td class="text-center">1</td>
						<td class="text-center">1</td>
						<td class="text-center content-box">6</td>
						<td class="text-center content-box">3</td>
						<td>After Food</td>
						<td></td>
					</tr>
					<tr>
						<td class="text-right content-box">3</td>
						<td>Levothyroxine</td>
						<td class="text-center">1</td>
						<td class="text-center">1</td>
						<td class="text-center">1</td>
						<td class="text-center">1</td>
						<td class="text-center content-box">10</td>
						<td class="text-center content-box">3</td>
						<td>After Food</td>
						<td></td>
					</tr>
				</tbody>
			</table>
			
			
			<div class="row form-group mt-4 w-100">
				<div class="col form-group w-30">
					<label for="">Medicine</label>
					<select name="">
						<option value="" selected disabled hidden>-- select medicine --</option>
						<option value="">Amlodipine</option>
						<option value="">Metformin</option>
						<option value="">Levothyroxine</option>
					</select>
				</div>
				
				<div class="col form-group w-10">
					<label for="">Morning</label>
					<input type="number" pattern="[0-9]+([\.][0-9]+)?" step="any" min="0" />
				</div>
				
				<div class="col form-group w-10">
					<label for="">Afternoon</label>
					<input type="number" pattern="[0-9]+([\.][0-9]+)?" step="any" min="0" />
				</div>
				
				<div class="col form-group w-10">
					<label for="">Evening</label>
					<input type="number" pattern="[0-9]+([\.][0-9]+)?" step="any" min="0" />
				</div>
				
				
				<div class="col form-group w-10">
					<label for="">Night</label>
					<input type="number" pattern="[0-9]+([\.][0-9]+)?" step="any" min="0" />
				</div>
				
				<div class="col form-group w-10">
					<label for="">Qty</label>
					<input type="number" pattern="[0-9]+([\.][0-9]+)?" step="any" min="0" />
				</div>
				
				<div class="col form-group w-10">
					<label for="">Duration (Day)</label>
					<input type="number" min="1" />
				</div>
				
				<div class="col form-group w-30">
					<label for="">Comment</label>
					<input type="text" />
				</div>
				
				<div class="flex-col-bottom self-stretch">
					<button class="btn btn-orange" type="button" href="">+</button>
				</div>
			</div>
			
			<div class="mt-4">
				<h3>Note</h3>
				<textarea class="w-100 mt-2" rows="5"></textarea>                                                   
			</div>
			
			<div class="d-flex justify-content-end mt-4">
				<c:url var="cancelUrl" value="/doctor/prescriptions/search" />
				<a class="btn btn-gray mr-1" href="${cancelUrl}">Cancel</a>
				
                <button class="btn btn-primary" type="submit">Save</button>
            </div>
            
			
			
		</form>
	</div>
</section>
