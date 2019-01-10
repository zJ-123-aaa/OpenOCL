function [o1,o2,o3] = testExamples

% test basic example (VanDerPol)
mainVanDerPol
assert(all(abs(solution.get('controls').value - ...
  [ 0.2434
  0.9611
  0.9074
  0.8610
  0.8049
  0.7491
  0.6876
  0.6240
  0.5561
  0.5342
  0.4947
  0.4131
  0.3171
  0.2245
  0.1448
  0.0821
  0.0365
  0.0062
  -0.0119
  -0.0207
  -0.0233
  -0.0220
  -0.0185
  -0.0143
  -0.0102
  -0.0066
  -0.0037
  -0.0017
  -0.0005
  -0.0000]) < 1e-3 ), 'Control vector of solution is wrong in Example.');
  
o1 = ocl.timeMeasures;

% test ball and beam example problem
mainBallAndBeam
assert(all(abs(vars.controls.value - ...
  [-20.0000
  -20.0000
  -16.3269
  -13.5240
  -11.3542
  -9.6721
  -8.3999
  -7.4967
  -6.9423
  -6.7264
  -6.8350
  -7.2311
  -7.1171
  -5.8267
  -4.5955
  -3.3285
  -2.1695
  -1.5100
  -1.3162
  -0.9894
  -0.5946
  -0.1785
  0.2309
  0.6172
  0.9673
  1.2678
  1.3287
  1.1185
  1.0929
  1.0568
  0.9386
  0.7573
  0.5338
  0.2886
  0.0392
  -0.1990
  -0.4131
  -0.5917
  -0.7259
  -0.8091
  -0.8382
  -0.8138
  -0.7396
  -0.6221
  -0.4698
  -0.2925
  -0.1010
  0.0934
  0.2796
  0.4469]) < 1e-3 ), 'Ball and beam problem Test failed.');

o2 = ocl.timeMeasures;


% test race car problem
mainRaceCar
assert(all(all(abs(solution.controls.value - ...
  [0.8984    0.4393
    0.8970    0.4421
    0.8972    0.4417
    0.8989    0.4381
    0.9022    0.4314
    0.9067    0.4218
    0.9122    0.4097
    0.2122    0.1400
    0.1816    0.1816
    0.1816    0.1816
    0.1816    0.1816
    0.3762   -0.3055
    0.4237   -0.6524
    0.3193   -0.7488
    0.1716   -0.7913
    0.0317   -0.6947
   -0.0657   -0.5717
    0.0674   -0.0797
    0.1774    0.1774
    0.1774    0.1774
    0.1774    0.1774
    0.1774    0.1774
    0.1774    0.1774
    0.1774    0.1774
    0.1774    0.1774
    0.1774    0.1774
    0.1774    0.1774
    0.1774    0.1774
    0.1774    0.1774
    0.1774    0.1774
    0.1774    0.1774
    0.1774    0.1774
    0.3966    0.7026
    0.4088    0.9126
    0.3354    0.9421
    0.2551    0.9669
    0.1638    0.9865
    0.0569    0.9984
   -0.0692    0.9976
    0.0343    0.5177
    0.1764    0.1764
    0.1764    0.1764
    0.1764    0.1764
    0.1764    0.1764
   -0.9034   -0.3791
   -0.9106   -0.4133
   -0.9144   -0.4047
   -0.9167   -0.3996
   -0.9175   -0.3977
   -0.9170   -0.3988]') < 1e-3 )), 'Solve RaceCar Test failed.');

o3 = ocl.timeMeasures;
 
% test pendulum simulation
simulatePendulum
assertAlmostEqual(statesVec.p(1,:,1:10:41).value.', ...
                  [-0.545396928860894 -0.998707452717328 -0.352622719093813 -0.944457401768328 0], ...
                  'PendulumSim Test failed.');
