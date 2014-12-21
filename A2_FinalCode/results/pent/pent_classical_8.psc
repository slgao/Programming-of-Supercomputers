<?xml version="1.0" encoding="UTF-8"?>
<Experiment xmlns:xsi="http://www.w3.org/2001/XMLSchema-instance" xmlns="http://www.lrr.in.tum.de/Periscope" xsi:schemaLocation="http://www.lrr.in.tum.de/Periscope psc_properties.xsd ">

  <date>2013-01-27</date>
  <time>15:11:53</time>
  <numProcs>8</numProcs>
  <numThreads>1</numThreads>
  <dir>/home/hpc/h039u/h039uab/A2.3_total</dir>
  <sir>./gccg.sir</sir>

  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="0" thread="0"/>
		<execObj process="1" thread="0"/>
		<execObj process="0" thread="0"/>
	</context>
	<severity>21.9485</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_BCAST</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="8x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="1" thread="0"/>
		<execObj process="5" thread="0"/>
		<execObj process="2" thread="0"/>
		<execObj process="6" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="3" thread="0"/>
		<execObj process="4" thread="0"/>
	</context>
	<severity>5.91749</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="0" thread="0"/>
	</context>
	<severity>20.2831</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>516466</CallTime>
		<LateTime>487887</LateTime>
		<PhaseTime>2405384</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-181" >
	<name>Excessive MPI time due to late root in broadcast</name>
	<context FileID="9" FileName="initialization.c" RFL="16" Config="8x1" Region="MPI_CALL" RegionId="9-16" >
		<execObj process="1" thread="0"/>
		<execObj process="5" thread="0"/>
		<execObj process="2" thread="0"/>
		<execObj process="6" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="3" thread="0"/>
		<execObj process="4" thread="0"/>
	</context>
	<severity>5.91263</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
		<execObj process="0" thread="0"/>
	</context>
	<severity>13.8586</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="4" thread="0"/>
	</context>
	<severity>6.07177</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>120458</CallTime>
		<PhaseTime>1983904</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="5" thread="0"/>
		<execObj process="6" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="4" thread="0"/>
	</context>
	<severity>28.0368</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="4" thread="0"/>
	</context>
	<severity>34.8559</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>691508</CallTime>
		<PhaseTime>1983904</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="5" thread="0"/>
		<execObj process="6" thread="0"/>
		<execObj process="7" thread="0"/>
		<execObj process="4" thread="0"/>
	</context>
	<severity>16.3124</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>19.1229</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>379317</CallTime>
		<PhaseTime>1983573</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>17.7069</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>379317</CallTime>
		<LateTime>351230</LateTime>
		<PhaseTime>1983573</PhaseTime>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
		<execObj process="2" thread="0"/>
		<execObj process="3" thread="0"/>
		<execObj process="1" thread="0"/>
	</context>
	<severity>27.4907</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="true" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="6" thread="0"/>
		<execObj process="5" thread="0"/>
	</context>
	<severity>37.8482</severity>
	<confidence>1</confidence>
	<addInfo>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="1" thread="0"/>
	</context>
	<severity>11.6169</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>441819</CallTime>
		<LateTime>230429</LateTime>
		<PhaseTime>1983573</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>13.1358</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>289350</CallTime>
		<LateTime>260571</LateTime>
		<PhaseTime>1983669</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="2" thread="0"/>
	</context>
	<severity>14.3931</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>543811</CallTime>
		<LateTime>285511</LateTime>
		<PhaseTime>1983669</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="23" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="23-13" >
		<execObj process="7" thread="0"/>
	</context>
	<severity>39.5682</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>784992</CallTime>
		<PhaseTime>1983897</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_ALLREDUCE</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>9.62598</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>190947</CallTime>
		<PhaseTime>1983663</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-187" >
	<name>Excessive MPI time due to late process in allreduce</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>8.19837</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>190947</CallTime>
		<LateTime>162628</LateTime>
		<PhaseTime>1983663</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-172" >
	<name>Excessive MPI communication time in MPI_RECV</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>32.4183</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>643069</CallTime>
		<PhaseTime>1983663</PhaseTime>
	</addInfo>
  </property>
  <property cluster="false" ID="7-179" >
	<name>Excessive MPI time in receive due to late sender</name>
	<context FileID="27" FileName="compute_solution.c" RFL="13" Config="8x1" Region="MPI_CALL" RegionId="27-13" >
		<execObj process="3" thread="0"/>
	</context>
	<severity>16.3026</severity>
	<confidence>1</confidence>
	<addInfo>
		<CallTime>643069</CallTime>
		<LateTime>323388</LateTime>
		<PhaseTime>1983663</PhaseTime>
	</addInfo>
  </property>
</Experiment>
