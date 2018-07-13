

* Move arez-spytools `0.22` into all react4j-todomvc branches
* Add J2CL compatible flags onto all react4j libraries
* Add J2CL compatible flags onto all arez libraries
* Do size analysis when arez included
* Experiment by converting some interfaces into JsFunction to see if can improve numbers under J2CL

* Size Analysis:
  - Arez: 63316 (J2CL) vs 70358 (GWT 2.8.2) ~ 90%
