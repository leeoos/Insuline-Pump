# Insulin Pump Simulator
<p>An insulin pump is a medical system that simulates the operation of the pancreas. The software controlling this system is an embedded system, which
collects information from a sensor and controls a pump that delivers a controlled dose of insulin to a user. People who suffer from diabetes use the system.</p>

<h2>Goals of the project</h2>
<p>The problem with this treatment is that the level of insulin required does not just depend on the blood glucose level but also on the time of the last insulin injection. The goal of the project was to build a system capable of simulating the work of a real insulin pump on an arbitrary number of <i>in-silico</i> patients.</p>

<h2>What is inside Prj/Models</h2>
<h3>The main files inside Models are Modelica files and two python scripts:</h3> 
<ul>
  <li> <i> mealgen.mo:</i> </li>
  <li> <i> fake_patient.mo:</i> </li>
  <li> <i> pump.mo:</i> </li>
  <li> <i> rag_meal.mo:</i> </li>
  <li> <i> monitor_pump.mo:</i> </li>
  <li> <i> monitor_hipogli.mo:</i> </li>
  <li> <i> monitor_average.mo:</i> </li>
  <li> <i> connectors.mo:</i> </li>
  <li> <i> System.mo:</i> </li>
  <li> <i> run.mos:</i> </li>
  <li> <i> verify.py:</i> </li>
  <li> <i> synth.py:</i> </li> 
</ul>
<h3>The other files are ...</h3>
<ul>
  <li> <i> run.sh:</i> </li>
  <li> <i> clean.sh:</i> </li>
  <li> <i> color.py:</i> </li>
  <li> <i> color.pyc:</i> </li>
</ul>

<h2>How to Run the code</h2>
<p>To run a single simulation:</p> 
<code>omc run.mos</code> <br>
<br>
<p> to clean all the files generated by Modelica after the execution:</p>
<code>./clean.sh</code> <br>
<br>
<p> to do both things at once:</p>
<code>./run.sh</code> <br>


