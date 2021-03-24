# Insulin Pump Simulator
An insulin pump is a medical system that simulates the operation of the pancreas. The software controlling this system is an embedded system, which
collects information from a sensor and controls a pump that delivers a controlled dose of insulin to a user. People who suffer from diabetes use the system.

<h2>Goals of the project</h2>
The problem with this treatment is that the level of insulin required does not just depend on the blood glucose level but also on the time of the last insulin injection.
To simulate 
<h2>What is inside Prj/Models</h2>
<ul>
  <li> <i> fake_patient.mo:</i> </li>
  <li> <i> pump.mo:</i> </li>
  <li> <i> mealgen.mo:</i> </li>
  <li> <i> rameal.mo:</i> </li>
  <li> <i> monitor_pump.mo:</i> </li>
  <li> <i> monitor_hipogli.mo:</i> </li>
  <li> <i> monitor_average.mo:</i> </li>
  <li> <i> connectors.mo:</i> </li>
  <li> <i> System.mo:</i> </li>
  <li> <i> run.mos:</i> </li>
  <li> <i> verify.py:</i> </li>
  <li> <i> synth.py:</i> </li> 
</ul>
<ul>
  <li> <i> run.sh:</i> </li>
  <li> <i> clean.sh:</i> </li>
  <li> <i> color.py:</i> </li>
  <li> <i> color.pyc:</i> </li>
<ul>

<h2>How to Run the code</h2>
<code>omc run.mos</code>


