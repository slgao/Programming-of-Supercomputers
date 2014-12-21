<?xml version="1.0" encoding="UTF-8"?>
<Experiment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.lrr.in.tum.de/Periscope" xsi:schemaLocation="http://www.lrr.in.tum.de/Periscope psc_properties.xsd ">

  <date>2013-01-27</date>
  <time>15:16:10</time>
  <numProcs>8</numProcs>
  <numThreads>1</numThreads>
  <dir>/home/hpc/h039u/h039uab/A2.3_total</dir>
  <sir>./gccg.sir</sir>

  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
		<execObj process="0" thread="0"/>
	</context>
	<severity>6.60349</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_BCAST</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="8x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="1" thread="0"/>
		<execObj process="5" thread="0"/>
		<execObj process="6" thread="0"/>
		<execObj process="2" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="3" thread="0"/>
		<execObj process="4" thread="0"/>
	</context>
	<severity>6.27346</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
		<execObj process="0" thread="0"/>
	</context>
	<severity>6.07695</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-181" >
	<name>Excessive MPI time due to late root in broadcast</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="8x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="1" thread="0"/>
		<execObj process="5" thread="0"/>
		<execObj process="6" thread="0"/>
		<execObj process="2" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="3" thread="0"/>
		<execObj process="4" thread="0"/>
	</context>
	<severity>6.27231</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="0" thread="0"/>
	</context>
	<severity>9.24933</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>942479</CallTime>
		<PhaseTime>10189696</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="4" thread="0"/>
	</context>
	<severity>55.2812</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>4918311</CallTime>
		<PhaseTime>8896895</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
		<execObj process="0" thread="0"/>
	</context>
	<severity>44.9864</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="4" thread="0"/>
	</context>
	<severity>10.888</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>968697</CallTime>
		<PhaseTime>8896895</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="5" thread="0"/>
	</context>
	<severity>58.4375</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>5198902</CallTime>
		<PhaseTime>8896511</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="6" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="5" thread="0"/>
	</context>
	<severity>8.03607</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>17.3825</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1546328</CallTime>
		<PhaseTime>8895872</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>6.66735</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1546328</CallTime>
		<LateTime>593119</LateTime>
		<PhaseTime>8895872</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="7" thread="0"/>
		<execObj process="6" thread="0"/>
	</context>
	<severity>60.6174</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>5.37026</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>477745</CallTime>
		<PhaseTime>8896118</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>48.2762</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>4294710</CallTime>
		<PhaseTime>8896118</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>15.5798</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1385993</CallTime>
		<PhaseTime>8896118</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>51.8353</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>4611325</CallTime>
		<PhaseTime>8896112</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>13.2527</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>1178977</CallTime>
		<PhaseTime>8896112</PhaseTime>
	</addInfo>
  </property>
</Experiment>
