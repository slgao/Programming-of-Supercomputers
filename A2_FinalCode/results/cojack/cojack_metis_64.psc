<?xml version="1.0" encoding="UTF-8"?>
<Experiment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.lrr.in.tum.de/Periscope" xsi:schemaLocation="http://www.lrr.in.tum.de/Periscope psc_properties.xsd ">

  <date>2013-01-27</date>
  <time>15:33:16</time>
  <numProcs>64</numProcs>
  <numThreads>1</numThreads>
  <dir>/home/hpc/h039u/h039uab/A2.3_total</dir>
  <sir>./gccg.sir</sir>

  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_BCAST</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="64x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="60" thread="0"/>
		<execObj process="56" thread="0"/>
		<execObj process="48" thread="0"/>
		<execObj process="61" thread="0"/>
		<execObj process="53" thread="0"/>
		<execObj process="57" thread="0"/>
		<execObj process="49" thread="0"/>
		<execObj process="62" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="63" thread="0"/>
		<execObj process="58" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="59" thread="0"/>
		<execObj process="51" thread="0"/>
		<execObj process="52" thread="0"/>
		<execObj process="20" thread="0"/>
		<execObj process="28" thread="0"/>
		<execObj process="24" thread="0"/>
		<execObj process="21" thread="0"/>
		<execObj process="29" thread="0"/>
		<execObj process="17" thread="0"/>
		<execObj process="25" thread="0"/>
		<execObj process="22" thread="0"/>
		<execObj process="30" thread="0"/>
		<execObj process="26" thread="0"/>
		<execObj process="18" thread="0"/>
		<execObj process="23" thread="0"/>
		<execObj process="31" thread="0"/>
		<execObj process="27" thread="0"/>
		<execObj process="19" thread="0"/>
		<execObj process="16" thread="0"/>
		<execObj process="40" thread="0"/>
		<execObj process="36" thread="0"/>
		<execObj process="32" thread="0"/>
		<execObj process="45" thread="0"/>
		<execObj process="37" thread="0"/>
		<execObj process="33" thread="0"/>
		<execObj process="41" thread="0"/>
		<execObj process="46" thread="0"/>
		<execObj process="38" thread="0"/>
		<execObj process="34" thread="0"/>
		<execObj process="47" thread="0"/>
		<execObj process="42" thread="0"/>
		<execObj process="39" thread="0"/>
		<execObj process="35" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="44" thread="0"/>
		<execObj process="4" thread="0"/>
		<execObj process="8" thread="0"/>
		<execObj process="1" thread="0"/>
		<execObj process="13" thread="0"/>
		<execObj process="5" thread="0"/>
		<execObj process="9" thread="0"/>
		<execObj process="2" thread="0"/>
		<execObj process="14" thread="0"/>
		<execObj process="6" thread="0"/>
		<execObj process="10" thread="0"/>
		<execObj process="3" thread="0"/>
		<execObj process="15" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="11" thread="0"/>
		<execObj process="12" thread="0"/>
	</context>
	<severity>10.9252</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="0" thread="0"/>
	</context>
	<severity>8.54732</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>662600</CallTime>
		<PhaseTime>7752141</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-181" >
	<name>Excessive MPI time due to late root in broadcast</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="64x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="60" thread="0"/>
		<execObj process="56" thread="0"/>
		<execObj process="48" thread="0"/>
		<execObj process="61" thread="0"/>
		<execObj process="53" thread="0"/>
		<execObj process="57" thread="0"/>
		<execObj process="49" thread="0"/>
		<execObj process="62" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="63" thread="0"/>
		<execObj process="58" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="59" thread="0"/>
		<execObj process="51" thread="0"/>
		<execObj process="52" thread="0"/>
		<execObj process="20" thread="0"/>
		<execObj process="28" thread="0"/>
		<execObj process="24" thread="0"/>
		<execObj process="21" thread="0"/>
		<execObj process="29" thread="0"/>
		<execObj process="17" thread="0"/>
		<execObj process="25" thread="0"/>
		<execObj process="22" thread="0"/>
		<execObj process="30" thread="0"/>
		<execObj process="26" thread="0"/>
		<execObj process="18" thread="0"/>
		<execObj process="23" thread="0"/>
		<execObj process="31" thread="0"/>
		<execObj process="27" thread="0"/>
		<execObj process="19" thread="0"/>
		<execObj process="16" thread="0"/>
		<execObj process="40" thread="0"/>
		<execObj process="36" thread="0"/>
		<execObj process="32" thread="0"/>
		<execObj process="45" thread="0"/>
		<execObj process="37" thread="0"/>
		<execObj process="33" thread="0"/>
		<execObj process="41" thread="0"/>
		<execObj process="46" thread="0"/>
		<execObj process="38" thread="0"/>
		<execObj process="34" thread="0"/>
		<execObj process="47" thread="0"/>
		<execObj process="42" thread="0"/>
		<execObj process="39" thread="0"/>
		<execObj process="35" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="44" thread="0"/>
		<execObj process="4" thread="0"/>
		<execObj process="8" thread="0"/>
		<execObj process="1" thread="0"/>
		<execObj process="13" thread="0"/>
		<execObj process="5" thread="0"/>
		<execObj process="9" thread="0"/>
		<execObj process="2" thread="0"/>
		<execObj process="14" thread="0"/>
		<execObj process="6" thread="0"/>
		<execObj process="10" thread="0"/>
		<execObj process="3" thread="0"/>
		<execObj process="15" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="11" thread="0"/>
		<execObj process="12" thread="0"/>
	</context>
	<severity>10.3561</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="0" thread="0"/>
	</context>
	<severity>8.54732</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>662600</CallTime>
		<LateTime>1173923</LateTime>
		<PhaseTime>7752141</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="4" thread="0"/>
		<execObj process="28" thread="0"/>
		<execObj process="24" thread="0"/>
		<execObj process="21" thread="0"/>
		<execObj process="29" thread="0"/>
		<execObj process="25" thread="0"/>
		<execObj process="22" thread="0"/>
		<execObj process="30" thread="0"/>
		<execObj process="26" thread="0"/>
		<execObj process="18" thread="0"/>
		<execObj process="23" thread="0"/>
		<execObj process="31" thread="0"/>
		<execObj process="27" thread="0"/>
		<execObj process="19" thread="0"/>
		<execObj process="20" thread="0"/>
		<execObj process="8" thread="0"/>
		<execObj process="13" thread="0"/>
		<execObj process="5" thread="0"/>
		<execObj process="9" thread="0"/>
		<execObj process="14" thread="0"/>
		<execObj process="6" thread="0"/>
		<execObj process="10" thread="0"/>
		<execObj process="15" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="11" thread="0"/>
		<execObj process="12" thread="0"/>
	</context>
	<severity>8.94093</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="4" thread="0"/>
		<execObj process="32" thread="0"/>
		<execObj process="37" thread="0"/>
		<execObj process="33" thread="0"/>
		<execObj process="38" thread="0"/>
		<execObj process="34" thread="0"/>
		<execObj process="39" thread="0"/>
		<execObj process="35" thread="0"/>
		<execObj process="36" thread="0"/>
		<execObj process="8" thread="0"/>
		<execObj process="13" thread="0"/>
		<execObj process="5" thread="0"/>
		<execObj process="9" thread="0"/>
		<execObj process="14" thread="0"/>
		<execObj process="6" thread="0"/>
		<execObj process="10" thread="0"/>
		<execObj process="15" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="11" thread="0"/>
		<execObj process="12" thread="0"/>
	</context>
	<severity>9.8556</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
		<execObj process="3" thread="0"/>
		<execObj process="1" thread="0"/>
	</context>
	<severity>10.461</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
		<execObj process="3" thread="0"/>
		<execObj process="1" thread="0"/>
	</context>
	<severity>10.461</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="61" thread="0"/>
		<execObj process="62" thread="0"/>
		<execObj process="63" thread="0"/>
		<execObj process="60" thread="0"/>
		<execObj process="40" thread="0"/>
		<execObj process="44" thread="0"/>
		<execObj process="40" thread="0"/>
		<execObj process="45" thread="0"/>
		<execObj process="45" thread="0"/>
		<execObj process="41" thread="0"/>
		<execObj process="46" thread="0"/>
		<execObj process="41" thread="0"/>
		<execObj process="47" thread="0"/>
		<execObj process="42" thread="0"/>
		<execObj process="47" thread="0"/>
		<execObj process="42" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="44" thread="0"/>
		<execObj process="56" thread="0"/>
		<execObj process="48" thread="0"/>
		<execObj process="52" thread="0"/>
		<execObj process="56" thread="0"/>
		<execObj process="48" thread="0"/>
		<execObj process="53" thread="0"/>
		<execObj process="57" thread="0"/>
		<execObj process="49" thread="0"/>
		<execObj process="53" thread="0"/>
		<execObj process="57" thread="0"/>
		<execObj process="49" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="58" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="58" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="59" thread="0"/>
		<execObj process="51" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="51" thread="0"/>
		<execObj process="52" thread="0"/>
	</context>
	<severity>6.32045</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="17" thread="0"/>
		<execObj process="16" thread="0"/>
		<execObj process="41" thread="0"/>
		<execObj process="46" thread="0"/>
		<execObj process="42" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="40" thread="0"/>
		<execObj process="56" thread="0"/>
		<execObj process="48" thread="0"/>
		<execObj process="53" thread="0"/>
		<execObj process="57" thread="0"/>
		<execObj process="49" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="58" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="51" thread="0"/>
		<execObj process="52" thread="0"/>
	</context>
	<severity>5.38768</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="41" thread="0"/>
		<execObj process="42" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="40" thread="0"/>
		<execObj process="52" thread="0"/>
		<execObj process="56" thread="0"/>
		<execObj process="48" thread="0"/>
		<execObj process="61" thread="0"/>
		<execObj process="53" thread="0"/>
		<execObj process="62" thread="0"/>
		<execObj process="57" thread="0"/>
		<execObj process="49" thread="0"/>
		<execObj process="63" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="58" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="59" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="51" thread="0"/>
		<execObj process="60" thread="0"/>
	</context>
	<severity>5.90756</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="32" thread="0"/>
		<execObj process="37" thread="0"/>
		<execObj process="33" thread="0"/>
		<execObj process="38" thread="0"/>
		<execObj process="34" thread="0"/>
		<execObj process="39" thread="0"/>
		<execObj process="35" thread="0"/>
		<execObj process="36" thread="0"/>
		<execObj process="17" thread="0"/>
		<execObj process="16" thread="0"/>
	</context>
	<severity>11.2066</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
</Experiment>
