<?xml version="1.0" encoding="UTF-8"?>
<Experiment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.lrr.in.tum.de/Periscope" xsi:schemaLocation="http://www.lrr.in.tum.de/Periscope psc_properties.xsd ">

  <date>2013-01-27</date>
  <time>15:30:18</time>
  <numProcs>64</numProcs>
  <numThreads>1</numThreads>
  <dir>/home/hpc/h039u/h039uab/A2.3_total</dir>
  <sir>./gccg.sir</sir>

  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_BCAST</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="64x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="32" thread="0"/>
		<execObj process="44" thread="0"/>
		<execObj process="36" thread="0"/>
		<execObj process="41" thread="0"/>
		<execObj process="33" thread="0"/>
		<execObj process="45" thread="0"/>
		<execObj process="37" thread="0"/>
		<execObj process="42" thread="0"/>
		<execObj process="34" thread="0"/>
		<execObj process="46" thread="0"/>
		<execObj process="38" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="35" thread="0"/>
		<execObj process="47" thread="0"/>
		<execObj process="39" thread="0"/>
		<execObj process="40" thread="0"/>
		<execObj process="24" thread="0"/>
		<execObj process="28" thread="0"/>
		<execObj process="20" thread="0"/>
		<execObj process="17" thread="0"/>
		<execObj process="25" thread="0"/>
		<execObj process="29" thread="0"/>
		<execObj process="21" thread="0"/>
		<execObj process="18" thread="0"/>
		<execObj process="26" thread="0"/>
		<execObj process="30" thread="0"/>
		<execObj process="22" thread="0"/>
		<execObj process="19" thread="0"/>
		<execObj process="27" thread="0"/>
		<execObj process="31" thread="0"/>
		<execObj process="23" thread="0"/>
		<execObj process="16" thread="0"/>
		<execObj process="60" thread="0"/>
		<execObj process="48" thread="0"/>
		<execObj process="56" thread="0"/>
		<execObj process="53" thread="0"/>
		<execObj process="61" thread="0"/>
		<execObj process="49" thread="0"/>
		<execObj process="57" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="62" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="58" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="63" thread="0"/>
		<execObj process="51" thread="0"/>
		<execObj process="59" thread="0"/>
		<execObj process="52" thread="0"/>
		<execObj process="8" thread="0"/>
		<execObj process="4" thread="0"/>
		<execObj process="1" thread="0"/>
		<execObj process="13" thread="0"/>
		<execObj process="9" thread="0"/>
		<execObj process="5" thread="0"/>
		<execObj process="2" thread="0"/>
		<execObj process="14" thread="0"/>
		<execObj process="10" thread="0"/>
		<execObj process="6" thread="0"/>
		<execObj process="3" thread="0"/>
		<execObj process="15" thread="0"/>
		<execObj process="11" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="12" thread="0"/>
	</context>
	<severity>5.50547</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="0" thread="0"/>
	</context>
	<severity>75.8724</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>3241393</CallTime>
		<PhaseTime>4272163</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-181" >
	<name>Excessive MPI time due to late root in broadcast</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="64x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="8" thread="0"/>
		<execObj process="4" thread="0"/>
		<execObj process="1" thread="0"/>
		<execObj process="13" thread="0"/>
		<execObj process="9" thread="0"/>
		<execObj process="5" thread="0"/>
		<execObj process="2" thread="0"/>
		<execObj process="14" thread="0"/>
		<execObj process="10" thread="0"/>
		<execObj process="6" thread="0"/>
		<execObj process="3" thread="0"/>
		<execObj process="15" thread="0"/>
		<execObj process="11" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="12" thread="0"/>
		<execObj process="24" thread="0"/>
		<execObj process="28" thread="0"/>
		<execObj process="20" thread="0"/>
		<execObj process="17" thread="0"/>
		<execObj process="25" thread="0"/>
		<execObj process="29" thread="0"/>
		<execObj process="21" thread="0"/>
		<execObj process="18" thread="0"/>
		<execObj process="26" thread="0"/>
		<execObj process="30" thread="0"/>
		<execObj process="22" thread="0"/>
		<execObj process="19" thread="0"/>
		<execObj process="27" thread="0"/>
		<execObj process="31" thread="0"/>
		<execObj process="23" thread="0"/>
		<execObj process="16" thread="0"/>
		<execObj process="60" thread="0"/>
		<execObj process="48" thread="0"/>
		<execObj process="56" thread="0"/>
		<execObj process="53" thread="0"/>
		<execObj process="61" thread="0"/>
		<execObj process="49" thread="0"/>
		<execObj process="57" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="62" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="58" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="63" thread="0"/>
		<execObj process="51" thread="0"/>
		<execObj process="59" thread="0"/>
		<execObj process="52" thread="0"/>
		<execObj process="32" thread="0"/>
		<execObj process="44" thread="0"/>
		<execObj process="36" thread="0"/>
		<execObj process="41" thread="0"/>
		<execObj process="33" thread="0"/>
		<execObj process="45" thread="0"/>
		<execObj process="37" thread="0"/>
		<execObj process="42" thread="0"/>
		<execObj process="34" thread="0"/>
		<execObj process="46" thread="0"/>
		<execObj process="38" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="35" thread="0"/>
		<execObj process="47" thread="0"/>
		<execObj process="39" thread="0"/>
		<execObj process="40" thread="0"/>
	</context>
	<severity>5.49909</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="8" thread="0"/>
		<execObj process="41" thread="0"/>
		<execObj process="39" thread="0"/>
		<execObj process="40" thread="0"/>
	</context>
	<severity>19.923</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="0" thread="0"/>
	</context>
	<severity>75.8724</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>3241393</CallTime>
		<LateTime>3406848</LateTime>
		<PhaseTime>4272163</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="12" thread="0"/>
		<execObj process="13" thread="0"/>
		<execObj process="33" thread="0"/>
		<execObj process="32" thread="0"/>
	</context>
	<severity>27.967</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="33" thread="0"/>
		<execObj process="32" thread="0"/>
		<execObj process="12" thread="0"/>
	</context>
	<severity>59.7259</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="6" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="45" thread="0"/>
		<execObj process="42" thread="0"/>
		<execObj process="46" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="44" thread="0"/>
	</context>
	<severity>17.0112</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="41" thread="0"/>
		<execObj process="39" thread="0"/>
		<execObj process="40" thread="0"/>
		<execObj process="8" thread="0"/>
	</context>
	<severity>67.3671</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="10" thread="0"/>
		<execObj process="37" thread="0"/>
		<execObj process="35" thread="0"/>
		<execObj process="36" thread="0"/>
	</context>
	<severity>23.7107</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="53" thread="0"/>
		<execObj process="49" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="51" thread="0"/>
		<execObj process="52" thread="0"/>
		<execObj process="4" thread="0"/>
	</context>
	<severity>75.2814</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="53" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="51" thread="0"/>
		<execObj process="52" thread="0"/>
		<execObj process="41" thread="0"/>
		<execObj process="39" thread="0"/>
		<execObj process="40" thread="0"/>
	</context>
	<severity>11.7576</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="12" thread="0"/>
	</context>
	<severity>59.8825</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2305837</CallTime>
		<LateTime>2460369</LateTime>
		<PhaseTime>3850603</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="29" thread="0"/>
		<execObj process="27" thread="0"/>
		<execObj process="28" thread="0"/>
		<execObj process="33" thread="0"/>
		<execObj process="32" thread="0"/>
	</context>
	<severity>19.294</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="8" thread="0"/>
	</context>
	<severity>67.4179</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2596297</CallTime>
		<LateTime>2754935</LateTime>
		<PhaseTime>3851048</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="45" thread="0"/>
		<execObj process="46" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="44" thread="0"/>
	</context>
	<severity>8.08999</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="4" thread="0"/>
	</context>
	<severity>75.436</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2905075</CallTime>
		<LateTime>3065230</LateTime>
		<PhaseTime>3851044</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="49" thread="0"/>
		<execObj process="48" thread="0"/>
		<execObj process="31" thread="0"/>
		<execObj process="30" thread="0"/>
		<execObj process="37" thread="0"/>
		<execObj process="35" thread="0"/>
		<execObj process="36" thread="0"/>
	</context>
	<severity>15.2565</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>81.9051</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>3154196</CallTime>
		<PhaseTime>3851039</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="6" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="45" thread="0"/>
		<execObj process="46" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="44" thread="0"/>
	</context>
	<severity>70.3935</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="53" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="51" thread="0"/>
		<execObj process="52" thread="0"/>
		<execObj process="4" thread="0"/>
	</context>
	<severity>11.9123</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="10" thread="0"/>
		<execObj process="37" thread="0"/>
		<execObj process="35" thread="0"/>
		<execObj process="36" thread="0"/>
	</context>
	<severity>63.5388</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="12" thread="0"/>
	</context>
	<severity>24.5269</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1048729</CallTime>
		<LateTime>944435</LateTime>
		<PhaseTime>3850603</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="41" thread="0"/>
		<execObj process="42" thread="0"/>
		<execObj process="39" thread="0"/>
		<execObj process="40" thread="0"/>
	</context>
	<severity>59.323</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>81.9051</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>3154196</CallTime>
		<LateTime>3319322</LateTime>
		<PhaseTime>3851039</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="32" thread="0"/>
	</context>
	<severity>48.9173</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2272083</CallTime>
		<LateTime>1883624</LateTime>
		<PhaseTime>3850627</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="29" thread="0"/>
		<execObj process="27" thread="0"/>
		<execObj process="28" thread="0"/>
		<execObj process="8" thread="0"/>
	</context>
	<severity>17.3591</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="45" thread="0"/>
		<execObj process="46" thread="0"/>
		<execObj process="43" thread="0"/>
		<execObj process="44" thread="0"/>
	</context>
	<severity>62.1485</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="22" thread="0"/>
		<execObj process="21" thread="0"/>
		<execObj process="4" thread="0"/>
	</context>
	<severity>9.15916</severity>
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
	<severity>55.356</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>5.30527</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>204308</CallTime>
		<PhaseTime>3851039</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="28" thread="0"/>
		<execObj process="29" thread="0"/>
		<execObj process="16" thread="0"/>
	</context>
	<severity>52.9601</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="34" thread="0"/>
		<execObj process="33" thread="0"/>
	</context>
	<severity>52.8123</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
		<execObj process="1" thread="0"/>
	</context>
	<severity>5.35068</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="20" thread="0"/>
		<execObj process="25" thread="0"/>
		<execObj process="19" thread="0"/>
		<execObj process="23" thread="0"/>
		<execObj process="24" thread="0"/>
	</context>
	<severity>40.1775</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="11" thread="0"/>
		<execObj process="34" thread="0"/>
	</context>
	<severity>25.7451</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="56" thread="0"/>
		<execObj process="61" thread="0"/>
		<execObj process="57" thread="0"/>
		<execObj process="62" thread="0"/>
		<execObj process="58" thread="0"/>
		<execObj process="63" thread="0"/>
		<execObj process="59" thread="0"/>
		<execObj process="60" thread="0"/>
	</context>
	<severity>9.85473</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="13" thread="0"/>
	</context>
	<severity>58.0958</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2237018</CallTime>
		<PhaseTime>3850570</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="16" thread="0"/>
		<execObj process="29" thread="0"/>
		<execObj process="17" thread="0"/>
		<execObj process="27" thread="0"/>
		<execObj process="28" thread="0"/>
	</context>
	<severity>34.9922</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="9" thread="0"/>
		<execObj process="38" thread="0"/>
	</context>
	<severity>21.7292</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="47" thread="0"/>
		<execObj process="5" thread="0"/>
		<execObj process="49" thread="0"/>
		<execObj process="48" thread="0"/>
	</context>
	<severity>14.393</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="38" thread="0"/>
		<execObj process="9" thread="0"/>
	</context>
	<severity>65.4714</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="24" thread="0"/>
		<execObj process="19" thread="0"/>
		<execObj process="23" thread="0"/>
		<execObj process="20" thread="0"/>
	</context>
	<severity>46.7018</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="56" thread="0"/>
		<execObj process="61" thread="0"/>
		<execObj process="57" thread="0"/>
		<execObj process="62" thread="0"/>
		<execObj process="58" thread="0"/>
		<execObj process="63" thread="0"/>
		<execObj process="59" thread="0"/>
		<execObj process="60" thread="0"/>
		<execObj process="42" thread="0"/>
	</context>
	<severity>9.93022</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="48" thread="0"/>
		<execObj process="47" thread="0"/>
		<execObj process="5" thread="0"/>
	</context>
	<severity>72.8601</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="16" thread="0"/>
	</context>
	<severity>37.6286</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2038292</CallTime>
		<LateTime>1448926</LateTime>
		<PhaseTime>3850597</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="34" thread="0"/>
	</context>
	<severity>17.757</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1001961</CallTime>
		<LateTime>683738</LateTime>
		<PhaseTime>3850520</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="13" thread="0"/>
	</context>
	<severity>58.0958</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2237018</CallTime>
		<LateTime>2390769</LateTime>
		<PhaseTime>3850570</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="25" thread="0"/>
		<execObj process="23" thread="0"/>
		<execObj process="24" thread="0"/>
	</context>
	<severity>24.5424</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="38" thread="0"/>
	</context>
	<severity>13.3868</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>838007</CallTime>
		<LateTime>515462</LateTime>
		<PhaseTime>3850534</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="9" thread="0"/>
	</context>
	<severity>65.5843</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2525376</CallTime>
		<LateTime>2682668</LateTime>
		<PhaseTime>3850582</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="42" thread="0"/>
	</context>
	<severity>68.9346</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2654352</CallTime>
		<PhaseTime>3850534</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="5" thread="0"/>
	</context>
	<severity>73.2774</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2821584</CallTime>
		<LateTime>2982024</LateTime>
		<PhaseTime>3850554</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="20" thread="0"/>
	</context>
	<severity>30.7238</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1778626</CallTime>
		<LateTime>1183038</LateTime>
		<PhaseTime>3850556</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="11" thread="0"/>
		<execObj process="34" thread="0"/>
	</context>
	<severity>61.5499</severity>
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
		<execObj process="58" thread="0"/>
		<execObj process="63" thread="0"/>
		<execObj process="59" thread="0"/>
		<execObj process="60" thread="0"/>
	</context>
	<severity>77.4577</severity>
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
	<severity>12.5625</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>79.7566</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>3071457</CallTime>
		<PhaseTime>3851038</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="38" thread="0"/>
	</context>
	<severity>57.2242</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2516652</CallTime>
		<LateTime>2203439</LateTime>
		<PhaseTime>3850534</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="53" thread="0"/>
		<execObj process="49" thread="0"/>
		<execObj process="54" thread="0"/>
		<execObj process="50" thread="0"/>
		<execObj process="55" thread="0"/>
		<execObj process="51" thread="0"/>
		<execObj process="52" thread="0"/>
	</context>
	<severity>75.1267</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="20" thread="0"/>
	</context>
	<severity>6.43401</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1583407</CallTime>
		<LateTime>247745</LateTime>
		<PhaseTime>3850556</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="56" thread="0"/>
		<execObj process="61" thread="0"/>
		<execObj process="57" thread="0"/>
		<execObj process="62" thread="0"/>
		<execObj process="58" thread="0"/>
		<execObj process="63" thread="0"/>
		<execObj process="59" thread="0"/>
		<execObj process="60" thread="0"/>
	</context>
	<severity>77.4577</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="26" thread="0"/>
		<execObj process="27" thread="0"/>
		<execObj process="17" thread="0"/>
	</context>
	<severity>50.7062</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="47" thread="0"/>
	</context>
	<severity>6.5286</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>581315</CallTime>
		<LateTime>251386</LateTime>
		<PhaseTime>3850532</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="48" thread="0"/>
	</context>
	<severity>72.9185</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2807794</CallTime>
		<LateTime>10157245</LateTime>
		<PhaseTime>3850594</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="13" thread="0"/>
	</context>
	<severity>26.2306</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1116561</CallTime>
		<LateTime>1010026</LateTime>
		<PhaseTime>3850570</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="17" thread="0"/>
	</context>
	<severity>35.8537</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1970032</CallTime>
		<LateTime>1380552</LateTime>
		<PhaseTime>3850520</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>79.7566</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>3071457</CallTime>
		<LateTime>3235902</LateTime>
		<PhaseTime>3851038</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="21" thread="0"/>
		<execObj process="22" thread="0"/>
		<execObj process="22" thread="0"/>
		<execObj process="21" thread="0"/>
	</context>
	<severity>43.2959</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="47" thread="0"/>
	</context>
	<severity>63.7524</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2787189</CallTime>
		<LateTime>2454806</LateTime>
		<PhaseTime>3850532</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="31" thread="0"/>
		<execObj process="30" thread="0"/>
		<execObj process="9" thread="0"/>
	</context>
	<severity>19.6643</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="22" thread="0"/>
		<execObj process="21" thread="0"/>
	</context>
	<severity>28.2816</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="18" thread="0"/>
		<execObj process="25" thread="0"/>
	</context>
	<severity>48.9575</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>7.5302</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>289991</CallTime>
		<PhaseTime>3851038</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="31" thread="0"/>
		<execObj process="30" thread="0"/>
		<execObj process="14" thread="0"/>
	</context>
	<severity>55.8111</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="18" thread="0"/>
	</context>
	<severity>34.073</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1903585</CallTime>
		<LateTime>1311993</LateTime>
		<PhaseTime>3850537</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="26" thread="0"/>
		<execObj process="18" thread="0"/>
	</context>
	<severity>37.5637</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="14" thread="0"/>
	</context>
	<severity>56.2888</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2167452</CallTime>
		<LateTime>2320036</LateTime>
		<PhaseTime>3850591</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="14" thread="0"/>
		<execObj process="15" thread="0"/>
		<execObj process="31" thread="0"/>
		<execObj process="30" thread="0"/>
	</context>
	<severity>31.7228</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="10" thread="0"/>
	</context>
	<severity>63.6498</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2450903</CallTime>
		<LateTime>2607177</LateTime>
		<PhaseTime>3850605</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="26" thread="0"/>
	</context>
	<severity>21.7558</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1438468</CallTime>
		<LateTime>837716</LateTime>
		<PhaseTime>3850545</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="6" thread="0"/>
	</context>
	<severity>71.2863</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2744945</CallTime>
		<LateTime>2904339</LateTime>
		<PhaseTime>3850591</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>77.5172</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2984818</CallTime>
		<PhaseTime>3850524</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="7" thread="0"/>
		<execObj process="26" thread="0"/>
	</context>
	<severity>15.2547</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="19" thread="0"/>
	</context>
	<severity>32.2619</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1834726</CallTime>
		<LateTime>1242258</LateTime>
		<PhaseTime>3850543</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="14" thread="0"/>
	</context>
	<severity>27.9272</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1184537</CallTime>
		<LateTime>1075363</LateTime>
		<PhaseTime>3850591</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>77.5172</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2984818</CallTime>
		<LateTime>3147945</LateTime>
		<PhaseTime>3850524</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="10" thread="0"/>
	</context>
	<severity>20.9266</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>906945</CallTime>
		<LateTime>805801</LateTime>
		<PhaseTime>3850605</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>9.79633</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>377210</CallTime>
		<PhaseTime>3850524</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>7.49145</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>377210</CallTime>
		<LateTime>288460</LateTime>
		<PhaseTime>3850524</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="15" thread="0"/>
	</context>
	<severity>54.6566</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2104599</CallTime>
		<PhaseTime>3850588</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="15" thread="0"/>
	</context>
	<severity>54.6566</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2104599</CallTime>
		<LateTime>2256553</LateTime>
		<PhaseTime>3850588</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="11" thread="0"/>
	</context>
	<severity>61.7077</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2376112</CallTime>
		<LateTime>2530130</LateTime>
		<PhaseTime>3850590</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="7" thread="0"/>
	</context>
	<severity>69.231</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>2665785</CallTime>
		<LateTime>2823475</LateTime>
		<PhaseTime>3850565</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="15" thread="0"/>
	</context>
	<severity>29.6302</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1251640</CallTime>
		<LateTime>1140937</LateTime>
		<PhaseTime>3850588</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="64x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="11" thread="0"/>
	</context>
	<severity>22.7604</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>980698</CallTime>
		<LateTime>876408</LateTime>
		<PhaseTime>3850590</PhaseTime>
	</addInfo>
  </property>
</Experiment>
