<%@page import="org.pstcl.ea.util.EAUtil"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ page isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib prefix="sec"
	uri="http://www.springframework.org/security/tags"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


	<div class="container-fluid">


		<span class="lead">Report Data for the month of <fmt:formatDate
				value="${reportMonthYearDate}" pattern="MMM,yyyy" />
		</span>

		<div id="da111ilyTxnTable_wrapper" class="table-responsive ">


			<table id="dailyTxnTable"
				class="table table-striped table-bordered table-hover">

				<thead>
					<tr>


						<th>Description</th>
						<th width="100">Interface</th>
						<th>Energy imported at Boundary points (MWh)</th>
						<th>Energy Exported at Boundary points (MWh)</th>
						<th>Total Interface Points</th>
						<th>CMRI data taken</th>
						<th>Data taken from other sources (Manual Entry)</th>


					</tr>
				</thead>
				<tbody>
					<tr>
						<th>Energy Interchange Between Interstate & PSTCL Substations</th>
						<td align="right" >I-T</td>

						<td align="right" >${consolidatedLossReportModel.lossReportModelMap["I_T"].sumEntity.importBoundaryPtMWH}</td>

						<td align="right">${consolidatedLossReportModel.lossReportModelMap["I_T"].sumEntity.exportBoundaryPtMWH}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["I_T"].totalLocations.size()}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["I_T"].pointsCountDataAvailable}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["I_T"].manualEntryLocations.size()}</td>


					</tr>
					<tr>
						<th>Energy Interchange Between Punjab Generating Plants &
							PSTCL Substations</th>
						<td align="right">G-T</td>

						<td align="right">${consolidatedLossReportModel.lossReportModelMap["G_T"].sumEntity.importBoundaryPtMWH}</td>

						<td align="right">${consolidatedLossReportModel.lossReportModelMap["G_T"].sumEntity.exportBoundaryPtMWH}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["G_T"].totalLocations.size()}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["G_T"].pointsCountDataAvailable}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["G_T"].manualEntryLocations.size()}</td>

					</tr>
					<tr>
						<th>Energy exchanged at Transmission-Distribution Boundary</th>
						<td align="right"></td>
						<td align="right"></td>
						<th>T-D Interface points</th>
						<td align="right"></td>
						<td align="right"></td>
						<td align="right"></td>
					<tr>
						<th>220/66kV Transformers</th>
						<td align="right">T-D</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_220_66"].sumEntity.importBoundaryPtMWH}</td>

						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_220_66"].sumEntity.exportBoundaryPtMWH}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_220_66"].totalLocations.size()}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_220_66"].pointsCountDataAvailable}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_220_66"].manualEntryLocations.size()}</td>

					</tr>
					<tr>
						<th>132/66kV Transformers</th>
						<td align="right">T-D</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_132_66"].sumEntity.importBoundaryPtMWH}</td>

						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_132_66"].sumEntity.exportBoundaryPtMWH}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_132_66"].totalLocations.size()}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_132_66"].pointsCountDataAvailable}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_132_66"].manualEntryLocations.size()}</td>
					</tr>
					<tr>
						<th>132/33kV Transformers</th>
						<td align="right">T-D</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_132_33"].sumEntity.importBoundaryPtMWH}</td>

						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_132_33"].sumEntity.exportBoundaryPtMWH}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_132_33"].totalLocations.size()}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_132_33"].pointsCountDataAvailable}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_132_33"].manualEntryLocations.size()}</td>

					</tr>
					<tr>
						<th>132/11kV Transformers</th>
						<td align="right">T-D</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_132_11"].sumEntity.importBoundaryPtMWH}</td>

						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_132_11"].sumEntity.exportBoundaryPtMWH}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_132_11"].totalLocations.size()}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_132_11"].pointsCountDataAvailable}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["T_D_132_11"].manualEntryLocations.size()}</td>

					</tr>
					<tr>
						<th>Independent Lines at 220kV & 132KV connected from PSTCL
							substations</th>
						<td align="right">T-D</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["INDEPENDENT"].sumEntity.importBoundaryPtMWH}</td>

						<td align="right">${consolidatedLossReportModel.lossReportModelMap["INDEPENDENT"].sumEntity.exportBoundaryPtMWH}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["INDEPENDENT"].totalLocations.size()}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["INDEPENDENT"].pointsCountDataAvailable}</td>
						<td align="right">${consolidatedLossReportModel.lossReportModelMap["INDEPENDENT"].manualEntryLocations.size()}</td>

					</tr>
					<tr>
						<th>Total Energy Interchange Between PSPCL Substations and PSTCL at Specified Transformers</th>
						<td align="right"></td>
						<td align="right">${consolidatedLossReportModel.sumAllTD.importBoundaryPtMWH}</td>

						<td align="right">${consolidatedLossReportModel.sumAllTD.exportBoundaryPtMWH}</td>
						<td align="right">${consolidatedLossReportModel.countAllTD}</td>
						<td align="right">${consolidatedLossReportModel.countAllTDDataAvailable}</td>
						<td align="right">${consolidatedLossReportModel.countAllTDDataManualEntry}</td>
						
					</tr>

					<tr>
						<th>Total Energy Interchange between PSTCL and Interstate Tie
							Lines & Punjab Generating Plants (I-T)+(G-T)</th>
						<td align="right"></td>
						<th style="text-align:right">${consolidatedLossReportModel.sumITGT.importBoundaryPtMWH}</th>

						<th style="text-align:right">${consolidatedLossReportModel.sumITGT.exportBoundaryPtMWH}</th>
						<td align="right">${consolidatedLossReportModel.countITGT}</td>
						<td align="right">${consolidatedLossReportModel.countITGTDataAvailable}</td>
						<td align="right">${consolidatedLossReportModel.countITGTDataManualEntry}</td>
						
					</tr>
					<tr>
						<th>Total Energy Interchange between PSTCL and PSPCL
							Distribution system (T-D)</th>
						<td align="right"></td>
						<th style="text-align:right">${consolidatedLossReportModel.sumAllTD.importBoundaryPtMWH}</th>

						<th style="text-align:right">${consolidatedLossReportModel.sumAllTD.exportBoundaryPtMWH}</th>
					<td align="right">${consolidatedLossReportModel.countAllTD}</td>
						<td align="right">${consolidatedLossReportModel.countAllTDDataAvailable}</td>
						<td align="right">${consolidatedLossReportModel.countAllTDDataManualEntry}</td>
						
					</tr>
					<tr>
						<th>Total energy exchanged</th>
						<td align="right"></td>
						<th style="text-align:right">${consolidatedLossReportModel.sumAll.importBoundaryPtMWH}</th>

						<th style="text-align:right">${consolidatedLossReportModel.sumAll.exportBoundaryPtMWH}</th>
						<td align="right">${consolidatedLossReportModel.countAll}</td>
						<td align="right">${consolidatedLossReportModel.countAllDataAvailable}</td>
						<td align="right">${consolidatedLossReportModel.countAllDataManualEntry}</td>
						
					</tr>
					<tr>
						<th>Difference between above</th>
						<td align="right"></td>
						<th style="text-align:right">${consolidatedLossReportModel.difference}</th>
						<td align="right"></td>
						<td align="right"></td>
						<td align="right"></td>
						<td align="right"></td>
					</tr>
					<tr>
						<th>PSTCL Loss In percentage</th>
						<td align="right"></td>
						<th style="text-align:right">${consolidatedLossReportModel.percentage}</th>
						<td align="right"></td>
						<td align="right"></td>
						<td align="right"></td>

						<td align="right"></td>
					</tr>

				</tbody>
			</table>
		</div>
	</div>



