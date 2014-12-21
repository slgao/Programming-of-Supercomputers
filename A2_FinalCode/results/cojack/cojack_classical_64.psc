<?xml version="1.0" encoding="UTF-8"?>
<Experiment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.lrr.in.tum.de/Periscope" xsi:schemaLocation="http://www.lrr.in.tum.de/Periscope psc_properties.xsd ">

  <date>2013-01-27</date>
  <time>15:35:41</time>
  <numProcs>64</numProcs>
  <numThreads>1</numThreads>
  <dir>/home/hpc/h039u/h039uab/A2.3_total</dir>
  <sir>./gccg.sir</sir>

  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_BCAST</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="64x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="60" thread="0"/>
		<execObj process="56" thread="0"/>
		<execObj process="52" thread="0"/>
		<execObj process="61" thread="0"/>
		<execObj process="49" thread="0"/>
		<execObj process="57" thread="0"/>
		<execObj process="53" thread="0"/>
		<execObj process="62" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="58" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="63" thread="0"/>
		<execObj process="51" thread="0"/>
		<execObj process="59" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="48" thread="0"/>
		<execObj process="12" thread="0"/>
		<execObj process="8" thread="0"/>
		<execObj process="1" thread="0"/>
		<execObj process="5" thread="0"/>
		<execObj process="13" thread="0"/>
		<execObj process="2" thread="0"/>
		<execObj process="9" thread="0"/>
		<execObj process="6" thread="0"/>
		<execObj process="3" thread="0"/>
		<execObj process="14" thread="0"/>
		<execObj process="10" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="15" thread="0"/>
		<execObj process="11" thread="0"/>
		<execObj process="4" thread="0"/>
		<execObj process="40" thread="0"/>
		<execObj process="44" thread="0"/>
		<execObj process="32" thread="0"/>
		<execObj process="37" thread="0"/>
		<execObj process="41" thread="0"/>
		<execObj process="45" thread="0"/>
		<execObj process="33" thread="0"/>
		<execObj process="38" thread="0"/>
		<execObj process="42" thread="0"/>
		<execObj process="46" thread="0"/>
		<execObj process="34" thread="0"/>
		<execObj process="39" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="47" thread="0"/>
		<execObj process="35" thread="0"/>
		<execObj process="36" thread="0"/>
		<execObj process="20" thread="0"/>
		<execObj process="28" thread="0"/>
		<execObj process="16" thread="0"/>
		<execObj process="17" thread="0"/>
		<execObj process="25" thread="0"/>
		<execObj process="21" thread="0"/>
		<execObj process="29" thread="0"/>
		<execObj process="18" thread="0"/>
		<execObj process="26" thread="0"/>
		<execObj process="22" thread="0"/>
		<execObj process="30" thread="0"/>
		<execObj process="19" thread="0"/>
		<execObj process="27" thread="0"/>
		<execObj process="23" thread="0"/>
		<execObj process="31" thread="0"/>
		<execObj process="24" thread="0"/>
	</context>
	<severity>10.4753</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-181" >
	<name>Excessive MPI time due to late root in broadcast</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="64x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="60" thread="0"/>
		<execObj process="56" thread="0"/>
		<execObj process="52" thread="0"/>
		<execObj process="61" thread="0"/>
		<execObj process="49" thread="0"/>
		<execObj process="57" thread="0"/>
		<execObj process="53" thread="0"/>
		<execObj process="62" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="58" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="63" thread="0"/>
		<execObj process="51" thread="0"/>
		<execObj process="59" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="48" thread="0"/>
		<execObj process="40" thread="0"/>
		<execObj process="44" thread="0"/>
		<execObj process="32" thread="0"/>
		<execObj process="37" thread="0"/>
		<execObj process="41" thread="0"/>
		<execObj process="45" thread="0"/>
		<execObj process="33" thread="0"/>
		<execObj process="38" thread="0"/>
		<execObj process="42" thread="0"/>
		<execObj process="46" thread="0"/>
		<execObj process="34" thread="0"/>
		<execObj process="39" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="47" thread="0"/>
		<execObj process="35" thread="0"/>
		<execObj process="36" thread="0"/>
		<execObj process="12" thread="0"/>
		<execObj process="8" thread="0"/>
		<execObj process="1" thread="0"/>
		<execObj process="5" thread="0"/>
		<execObj process="13" thread="0"/>
		<execObj process="2" thread="0"/>
		<execObj process="9" thread="0"/>
		<execObj process="6" thread="0"/>
		<execObj process="3" thread="0"/>
		<execObj process="14" thread="0"/>
		<execObj process="10" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="15" thread="0"/>
		<execObj process="11" thread="0"/>
		<execObj process="4" thread="0"/>
		<execObj process="20" thread="0"/>
		<execObj process="28" thread="0"/>
		<execObj process="16" thread="0"/>
		<execObj process="17" thread="0"/>
		<execObj process="25" thread="0"/>
		<execObj process="21" thread="0"/>
		<execObj process="29" thread="0"/>
		<execObj process="18" thread="0"/>
		<execObj process="26" thread="0"/>
		<execObj process="22" thread="0"/>
		<execObj process="30" thread="0"/>
		<execObj process="19" thread="0"/>
		<execObj process="27" thread="0"/>
		<execObj process="23" thread="0"/>
		<execObj process="31" thread="0"/>
		<execObj process="24" thread="0"/>
	</context>
	<severity>10.4698</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="16" thread="0"/>
		<execObj process="25" thread="0"/>
		<execObj process="17" thread="0"/>
		<execObj process="23" thread="0"/>
		<execObj process="24" thread="0"/>
	</context>
	<severity>33.9319</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="20" thread="0"/>
		<execObj process="21" thread="0"/>
		<execObj process="21" thread="0"/>
		<execObj process="19" thread="0"/>
		<execObj process="20" thread="0"/>
	</context>
	<severity>39.8714</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="13" thread="0"/>
		<execObj process="14" thread="0"/>
		<execObj process="29" thread="0"/>
		<execObj process="27" thread="0"/>
		<execObj process="28" thread="0"/>
	</context>
	<severity>28.839</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="15" thread="0"/>
		<execObj process="25" thread="0"/>
		<execObj process="26" thread="0"/>
		<execObj process="16" thread="0"/>
	</context>
	<severity>47.1364</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="25" thread="0"/>
		<execObj process="24" thread="0"/>
	</context>
	<severity>25.5191</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="21" thread="0"/>
		<execObj process="19" thread="0"/>
		<execObj process="20" thread="0"/>
	</context>
	<severity>31.9515</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="29" thread="0"/>
		<execObj process="27" thread="0"/>
		<execObj process="28" thread="0"/>
	</context>
	<severity>21.2726</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="16" thread="0"/>
	</context>
	<severity>38.4323</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>3240616</CallTime>
		<LateTime>2685851</LateTime>
		<PhaseTime>6988521</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="56" thread="0"/>
		<execObj process="48" thread="0"/>
		<execObj process="56" thread="0"/>
		<execObj process="52" thread="0"/>
		<execObj process="61" thread="0"/>
		<execObj process="57" thread="0"/>
		<execObj process="53" thread="0"/>
		<execObj process="49" thread="0"/>
		<execObj process="57" thread="0"/>
		<execObj process="53" thread="0"/>
		<execObj process="62" thread="0"/>
		<execObj process="58" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="63" thread="0"/>
		<execObj process="58" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="59" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="51" thread="0"/>
		<execObj process="59" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="60" thread="0"/>
		<execObj process="12" thread="0"/>
		<execObj process="8" thread="0"/>
		<execObj process="5" thread="0"/>
		<execObj process="13" thread="0"/>
		<execObj process="9" thread="0"/>
		<execObj process="6" thread="0"/>
		<execObj process="14" thread="0"/>
		<execObj process="10" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="15" thread="0"/>
		<execObj process="11" thread="0"/>
		<execObj process="4" thread="0"/>
		<execObj process="40" thread="0"/>
		<execObj process="44" thread="0"/>
		<execObj process="32" thread="0"/>
		<execObj process="37" thread="0"/>
		<execObj process="41" thread="0"/>
		<execObj process="45" thread="0"/>
		<execObj process="33" thread="0"/>
		<execObj process="38" thread="0"/>
		<execObj process="42" thread="0"/>
		<execObj process="46" thread="0"/>
		<execObj process="34" thread="0"/>
		<execObj process="39" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="47" thread="0"/>
		<execObj process="35" thread="0"/>
		<execObj process="36" thread="0"/>
		<execObj process="20" thread="0"/>
		<execObj process="28" thread="0"/>
		<execObj process="16" thread="0"/>
		<execObj process="17" thread="0"/>
		<execObj process="25" thread="0"/>
		<execObj process="21" thread="0"/>
		<execObj process="29" thread="0"/>
		<execObj process="18" thread="0"/>
		<execObj process="26" thread="0"/>
		<execObj process="22" thread="0"/>
		<execObj process="30" thread="0"/>
		<execObj process="19" thread="0"/>
		<execObj process="27" thread="0"/>
		<execObj process="23" thread="0"/>
		<execObj process="31" thread="0"/>
		<execObj process="24" thread="0"/>
	</context>
	<severity>6.09389</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="17" thread="0"/>
		<execObj process="23" thread="0"/>
		<execObj process="24" thread="0"/>
	</context>
	<severity>44.2442</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="14" thread="0"/>
		<execObj process="29" thread="0"/>
		<execObj process="27" thread="0"/>
		<execObj process="28" thread="0"/>
	</context>
	<severity>49.6095</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="5" thread="0"/>
		<execObj process="6" thread="0"/>
		<execObj process="25" thread="0"/>
		<execObj process="23" thread="0"/>
		<execObj process="24" thread="0"/>
	</context>
	<severity>11.8924</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="21" thread="0"/>
		<execObj process="20" thread="0"/>
	</context>
	<severity>7.13457</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="8" thread="0"/>
		<execObj process="29" thread="0"/>
		<execObj process="27" thread="0"/>
		<execObj process="28" thread="0"/>
	</context>
	<severity>16.4804</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="17" thread="0"/>
	</context>
	<severity>36.7097</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>3114335</CallTime>
		<LateTime>2563980</LateTime>
		<PhaseTime>6984477</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="22" thread="0"/>
		<execObj process="18" thread="0"/>
	</context>
	<severity>42.4864</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="18" thread="0"/>
	</context>
	<severity>35.0148</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>3001695</CallTime>
		<LateTime>2445601</LateTime>
		<PhaseTime>6984485</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="15" thread="0"/>
		<execObj process="26" thread="0"/>
	</context>
	<severity>31.2734</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="18" thread="0"/>
		<execObj process="19" thread="0"/>
		<execObj process="22" thread="0"/>
	</context>
	<severity>36.8185</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="12" thread="0"/>
		<execObj process="31" thread="0"/>
		<execObj process="30" thread="0"/>
	</context>
	<severity>26.2769</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="26" thread="0"/>
	</context>
	<severity>23.482</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2202279</CallTime>
		<LateTime>1640103</LateTime>
		<PhaseTime>6984503</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="23" thread="0"/>
		<execObj process="22" thread="0"/>
	</context>
	<severity>28.3115</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="33" thread="0"/>
		<execObj process="34" thread="0"/>
		<execObj process="32" thread="0"/>
		<execObj process="31" thread="0"/>
		<execObj process="30" thread="0"/>
	</context>
	<severity>18.6882</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="13" thread="0"/>
		<execObj process="12" thread="0"/>
		<execObj process="31" thread="0"/>
		<execObj process="30" thread="0"/>
	</context>
	<severity>52.2151</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="7" thread="0"/>
		<execObj process="26" thread="0"/>
	</context>
	<severity>14.479</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="4" thread="0"/>
		<execObj process="22" thread="0"/>
	</context>
	<severity>9.15598</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="9" thread="0"/>
		<execObj process="10" thread="0"/>
		<execObj process="31" thread="0"/>
		<execObj process="30" thread="0"/>
	</context>
	<severity>19.0755</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="0" thread="0"/>
	</context>
	<severity>63.9559</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>5286825</CallTime>
		<PhaseTime>8266359</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="51" thread="0"/>
		<execObj process="52" thread="0"/>
		<execObj process="47" thread="0"/>
		<execObj process="49" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="48" thread="0"/>
	</context>
	<severity>9.21468</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="51" thread="0"/>
		<execObj process="52" thread="0"/>
		<execObj process="45" thread="0"/>
		<execObj process="42" thread="0"/>
		<execObj process="46" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="44" thread="0"/>
		<execObj process="49" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="48" thread="0"/>
	</context>
	<severity>8.80867</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="8" thread="0"/>
		<execObj process="37" thread="0"/>
		<execObj process="35" thread="0"/>
		<execObj process="36" thread="0"/>
	</context>
	<severity>19.3014</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="0" thread="0"/>
	</context>
	<severity>63.9559</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>5286825</CallTime>
		<LateTime>5605033</LateTime>
		<PhaseTime>8266359</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="6" thread="0"/>
		<execObj process="41" thread="0"/>
		<execObj process="39" thread="0"/>
		<execObj process="40" thread="0"/>
	</context>
	<severity>15.5548</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="45" thread="0"/>
		<execObj process="42" thread="0"/>
		<execObj process="46" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="44" thread="0"/>
		<execObj process="47" thread="0"/>
		<execObj process="4" thread="0"/>
	</context>
	<severity>67.4453</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="4" thread="0"/>
		<execObj process="5" thread="0"/>
		<execObj process="45" thread="0"/>
		<execObj process="42" thread="0"/>
		<execObj process="46" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="44" thread="0"/>
	</context>
	<severity>12.4782</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
		<execObj process="1" thread="0"/>
		<execObj process="2" thread="0"/>
		<execObj process="3" thread="0"/>
		<execObj process="0" thread="0"/>
	</context>
	<severity>6.68287</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="56" thread="0"/>
		<execObj process="61" thread="0"/>
		<execObj process="57" thread="0"/>
		<execObj process="62" thread="0"/>
		<execObj process="63" thread="0"/>
		<execObj process="58" thread="0"/>
		<execObj process="59" thread="0"/>
		<execObj process="60" thread="0"/>
	</context>
	<severity>73.9268</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="34" thread="0"/>
		<execObj process="10" thread="0"/>
		<execObj process="33" thread="0"/>
		<execObj process="32" thread="0"/>
	</context>
	<severity>22.2859</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="47" thread="0"/>
		<execObj process="57" thread="0"/>
		<execObj process="53" thread="0"/>
		<execObj process="58" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="59" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="56" thread="0"/>
	</context>
	<severity>6.71049</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="37" thread="0"/>
		<execObj process="35" thread="0"/>
		<execObj process="36" thread="0"/>
	</context>
	<severity>16.2394</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="4" thread="0"/>
	</context>
	<severity>67.3203</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>4705069</CallTime>
		<LateTime>5055368</LateTime>
		<PhaseTime>6989080</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="41" thread="0"/>
		<execObj process="39" thread="0"/>
		<execObj process="40" thread="0"/>
	</context>
	<severity>12.4713</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="13" thread="0"/>
		<execObj process="12" thread="0"/>
	</context>
	<severity>51.8084</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="49" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="48" thread="0"/>
	</context>
	<severity>69.828</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="37" thread="0"/>
		<execObj process="35" thread="0"/>
		<execObj process="36" thread="0"/>
		<execObj process="8" thread="0"/>
	</context>
	<severity>59.6324</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="56" thread="0"/>
		<execObj process="61" thread="0"/>
		<execObj process="57" thread="0"/>
		<execObj process="62" thread="0"/>
		<execObj process="63" thread="0"/>
		<execObj process="58" thread="0"/>
		<execObj process="59" thread="0"/>
		<execObj process="60" thread="0"/>
	</context>
	<severity>73.9268</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="49" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="48" thread="0"/>
	</context>
	<severity>69.828</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="8" thread="0"/>
	</context>
	<severity>59.5916</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>4164906</CallTime>
		<LateTime>4511792</LateTime>
		<PhaseTime>6989086</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="53" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="51" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="52" thread="0"/>
	</context>
	<severity>71.9088</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="53" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="51" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="52" thread="0"/>
	</context>
	<severity>71.9088</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="6" thread="0"/>
		<execObj process="41" thread="0"/>
		<execObj process="39" thread="0"/>
		<execObj process="40" thread="0"/>
	</context>
	<severity>63.2313</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>73.2445</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>5119112</CallTime>
		<PhaseTime>6989075</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="10" thread="0"/>
		<execObj process="33" thread="0"/>
		<execObj process="32" thread="0"/>
	</context>
	<severity>55.8767</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="37" thread="0"/>
		<execObj process="35" thread="0"/>
		<execObj process="36" thread="0"/>
	</context>
	<severity>45.0014</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>73.2445</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>5119112</CallTime>
		<LateTime>5473031</LateTime>
		<PhaseTime>6989075</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="41" thread="0"/>
		<execObj process="38" thread="0"/>
		<execObj process="39" thread="0"/>
		<execObj process="40" thread="0"/>
	</context>
	<severity>47.9124</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="12" thread="0"/>
	</context>
	<severity>23.3</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1832892</CallTime>
		<LateTime>1628324</LateTime>
		<PhaseTime>6988501</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="45" thread="0"/>
		<execObj process="42" thread="0"/>
		<execObj process="46" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="44" thread="0"/>
	</context>
	<severity>51.2008</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="32" thread="0"/>
	</context>
	<severity>39.8585</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>3856191</CallTime>
		<LateTime>2785588</LateTime>
		<PhaseTime>6988698</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="34" thread="0"/>
		<execObj process="33" thread="0"/>
	</context>
	<severity>42.3147</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="5" thread="0"/>
	</context>
	<severity>65.1956</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>4556061</CallTime>
		<PhaseTime>6988293</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="7" thread="0"/>
		<execObj process="38" thread="0"/>
	</context>
	<severity>17.4479</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="5" thread="0"/>
	</context>
	<severity>65.1956</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>4556061</CallTime>
		<LateTime>4908637</LateTime>
		<PhaseTime>6988293</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>71.116</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>4970349</CallTime>
		<PhaseTime>6989077</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="38" thread="0"/>
	</context>
	<severity>14.2353</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1212968</CallTime>
		<LateTime>994266</LateTime>
		<PhaseTime>6984493</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="34" thread="0"/>
		<execObj process="9" thread="0"/>
	</context>
	<severity>57.5962</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="7" thread="0"/>
		<execObj process="38" thread="0"/>
	</context>
	<severity>61.4403</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>71.116</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>4970349</CallTime>
		<LateTime>5320734</LateTime>
		<PhaseTime>6989077</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="9" thread="0"/>
	</context>
	<severity>57.8083</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>4039857</CallTime>
		<LateTime>4390323</LateTime>
		<PhaseTime>6988372</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="47" thread="0"/>
	</context>
	<severity>52.8439</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>4781576</CallTime>
		<LateTime>3690884</LateTime>
		<PhaseTime>6984506</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="14" thread="0"/>
		<execObj process="13" thread="0"/>
	</context>
	<severity>25.5497</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="9" thread="0"/>
	</context>
	<severity>21.0542</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1471348</CallTime>
		<PhaseTime>6988372</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>68.991</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>4821274</CallTime>
		<PhaseTime>6988262</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="6" thread="0"/>
	</context>
	<severity>63.0744</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>4407847</CallTime>
		<LateTime>4754875</LateTime>
		<PhaseTime>6988331</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>68.991</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>4821274</CallTime>
		<LateTime>5173967</LateTime>
		<PhaseTime>6988262</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="14" thread="0"/>
	</context>
	<severity>49.4872</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>3458412</CallTime>
		<LateTime>3805991</LateTime>
		<PhaseTime>6988497</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="10" thread="0"/>
	</context>
	<severity>56.0156</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>3914605</CallTime>
		<LateTime>4261703</LateTime>
		<PhaseTime>6988417</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>9.53837</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>666566</CallTime>
		<PhaseTime>6988262</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>6.95053</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>666566</CallTime>
		<LateTime>485721</LateTime>
		<PhaseTime>6988262</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="7" thread="0"/>
	</context>
	<severity>61.2736</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>4282011</CallTime>
		<LateTime>4632113</LateTime>
		<PhaseTime>6988341</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="15" thread="0"/>
	</context>
	<severity>47.735</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>3335961</CallTime>
		<LateTime>3682321</LateTime>
		<PhaseTime>6988507</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="11" thread="0"/>
	</context>
	<severity>54.2012</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>3787806</CallTime>
		<PhaseTime>6988419</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="11" thread="0"/>
	</context>
	<severity>54.2012</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>3787806</CallTime>
		<LateTime>4134863</LateTime>
		<PhaseTime>6988419</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="15" thread="0"/>
	</context>
	<severity>27.7059</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2167542</CallTime>
		<LateTime>1936231</LateTime>
		<PhaseTime>6988507</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="11" thread="0"/>
	</context>
	<severity>24.6479</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1722500</CallTime>
		<PhaseTime>6988419</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="11" thread="0"/>
	</context>
	<severity>21.6138</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1722500</CallTime>
		<LateTime>1510464</LateTime>
		<PhaseTime>6988419</PhaseTime>
	</addInfo>
  </property>
</Experiment>
