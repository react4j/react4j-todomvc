* Get j2cl variants built from react4j/arez build process

* Size Analysis:
  - Raw: 30598 (J2CL) vs 36826 (GWT 2.8.2) ~ 83%
  - Arez: 63316 (J2CL) vs 70358 (GWT 2.8.2) ~ 90%
  - Arez (with patched Arez): 62989 (J2CL) vs 70358 (GWT 2.8.2) ~ 90% (Patching mostly involved converting several interfaces into `@JsFunction`)
  - Dagger: 66418 (J2CL) vs 75335 (GWT 2.8.2) ~ 88%
