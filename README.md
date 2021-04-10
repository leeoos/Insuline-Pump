# Insulin Pump Simulator
<div>An insulin pump is a medical system that simulates the operation of the pancreas. The software controlling this system is an embedded system, which
collects information from a sensor and controls a pump that delivers a controlled dose of insulin to a user. People who suffer from diabetes use the system.</div>

<h2>Goals of the project</h2>
<div>The problem with this treatment is that the level of insulin required does not just depend on the blood glucose level but also on the time of the last insulin injection. The goal of the project was to build a system capable of simulating the work of a real insulin pump on an arbitrary number of <i>in-silico</i> patients. Further information on the project requirements and the material used to simulate the characteristics of a diabetic patient and its interaction with the pump can be found in the Requirement directory.</div> 

<h2>What is inside Prj/Models</h2>
<h3>The main files inside Models are Modelica files and two python scripts:</h3> 
<ul>
  <li> <b><i>mealgen.mo:</i></b> a generator that defines the period and frequency of the patient's meals</li>
  <li> <b><i>fake_patient.mo:</i></b> simulate a <i>in-silico</i> patient to which an insulin pump is connected</li>
  <li> <b><i>pump.mo:</i></b> simulate the insulin pump that injects the patient with insulin</li>
  <li> <b><i>rag_meal.mo:</i></b> a model that simulate the rate of meal driven glucose appearance</li>
  <li> <b><i>monitor_pump.mo:</i></b> a monitor to check if the pump is working correctly during the simulation</li>
  <li> <b><i>monitor_average.mo:</i></b> a monitor to check if the patient's average values at the end of the simulations are good</li>
   <li> <b><i>monitor_hypogly.mo:</i></b> a monitor to check if the patient is hypoglycemic</li>
  <li> <b><i>connectors.mo:</i></b> to define the type of connectors </li>
  <li> <b><i>System.mo:</i></b> to link all classes and monitors together</li>
  <li> <b><i>run.mos:</i></b> to build the model and run a single simulation</li>
  <li> <b><i>verify.py:</i></b> to verify that the pump model is correct  </li>
  <li> <b><i>synth.py:</i></b> to find the lowest insulin values needed to treat the patient</li> 
</ul>
<h3>The other files are ...</h3>
<ul>
  <li> <b><i>clean.sh:</i></b> a script to delete the files generated automatically by modelica</li>
  <li> <b><i>run.sh:</i></b> a script to run a single simulation and clean after</li>
  <li> <b><i>color.py:</i></b> a module used to print colored lines in python</li>
  <li> <b><i>color.pyc:</i></b> compiled bytecode of the imported module <i>color</i></li>
</ul>

<h2>How to Run the code</h2>

<div>The system codebase is written in python2.7 and Modelica 1.17.0 so they must both be installed. It is possible to install OpenModelica at <a href="https://openmodelica.org/">OpenModelica 1.17</a>. The project was compiled and tested on a Debian-based distribution, so it is suggested to try it in a similar environment. Correct operation on other distributions is not guaranteed,in particular the system cannot be run on windows since it uses the  forward slash to define the filespaths. <br>
The OMPython interface is also needed which allows scripts to communicate with OpenModelica and can be installed via pip: </div>
<code>pip install OMPython</code><br>
<br>
<div>or in some newer debian based distribution</div>
<code>pip2 install OMPython</code><br>
<br>

<div>To run a single simulation on an arbitrary number of patients and verify that the pump model is correct:</div> 
<code>python verify.py </code><br>
<br>
<div>or in some newer debian based distribution</div>
<code>python2 verify.py </code><br>
<br>

<div>Note: After running the script, the experimental results will be stored in an output file within the automatically generated Output/Output_Veryfy directory in Models. The output file will be marked with the number of patients tested and overwritten when the script is rerun. To change the number of patients to be tested, in verify.py change num_of_patient.</div><br>

<div>To run multiple simulations on an arbitrary number of patients and find the best parameters for each of them so that the pump injects the minimum dose needed to cure it:</div> 
<code>python synth.py </code><br>
<br>
<div>or in some newer Debian-based distribution</div>
<code>python2 synth.py </code><br>
<br>

<div>Note: After running the script, the experimental results will be stored in an output file within the automatically generated Output/Output_Synth directory in Models. The output file will be marked with the number of patients tested and overwritten when the script is rerun. To change the number of patients to be tested, in synth.py change num_of_patient.</div><br>

<div>To run a single simulation on a standard non-hypoglycemic patient:</div> 
<code>omc run.mos</code> <br>
<br>
<div> to clean all the files generated by Modelica after the execution:</div>
<code>./clean.sh</code> <br>
<br>
<div> to do both things at once:</div>
<code>./run.sh</code> <br>
<br>

<p>Note: Running this command will produce a graph of the patient's glucose level through the simulation. If you want to plot other values, read the comments in <b>run.mos</b></p>


