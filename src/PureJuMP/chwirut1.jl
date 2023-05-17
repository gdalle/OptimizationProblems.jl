
#=
https://www.itl.nist.gov/div898/strd/nls/data/LINKS/DATA/chwirut1.dat

NIST/ITL StRD
Dataset Name:  Chwirut1          (Chwirut1.dat)

File Format:   ASCII
               Starting Values   (lines 41 to  43)
               Certified Values  (lines 41 to  48)
               Data              (lines 61 to 274)

Procedure:     Nonlinear Least Squares Regression

Description:   These data are the result of a NIST study involving
               ultrasonic calibration.  The response variable is
               ultrasonic response, and the predictor variable is
               metal distance.

Reference:     Chwirut, D., NIST (197?).  
               Ultrasonic Reference Block Study. 







Data:          1 Response Variable  (y = ultrasonic response)
               1 Predictor Variable (x = metal distance)
               214 Observations
               Lower Level of Difficulty
               Observed Data

Model:         Exponential Class
               3 Parameters (b1 to b3)

               y = exp[-b1*x]/(b2+b3*x)  +  e
=#
# T. Migot, Montreal, 2023.

export chwirut1

function chwirut1(args...; kwargs...)

  y = Rational{Int}[
    92.9000E0     0.5000E0
    78.7000E0     0.6250E0
    64.2000E0     0.7500E0
    64.9000E0     0.8750E0
    57.1000E0     1.0000E0
    43.3000E0     1.2500E0
    31.1000E0     1.7500E0
    23.6000E0     2.2500E0
    31.0500E0     1.7500E0
    23.7750E0     2.2500E0
    17.7375E0     2.7500E0
    13.8000E0     3.2500E0
    11.5875E0     3.7500E0
     9.4125E0     4.2500E0
     7.7250E0     4.7500E0
     7.3500E0     5.2500E0
     8.0250E0     5.7500E0
    90.6000E0     0.5000E0
    76.9000E0     0.6250E0
    71.6000E0     0.7500E0
    63.6000E0     0.8750E0
    54.0000E0     1.0000E0
    39.2000E0     1.2500E0
    29.3000E0     1.7500E0
    21.4000E0     2.2500E0
    29.1750E0     1.7500E0
    22.1250E0     2.2500E0
    17.5125E0     2.7500E0
    14.2500E0     3.2500E0
     9.4500E0     3.7500E0
     9.1500E0     4.2500E0
     7.9125E0     4.7500E0
     8.4750E0     5.2500E0
     6.1125E0     5.7500E0
    80.0000E0     0.5000E0
    79.0000E0     0.6250E0
    63.8000E0     0.7500E0
    57.2000E0     0.8750E0
    53.2000E0     1.0000E0
    42.5000E0     1.2500E0
    26.8000E0     1.7500E0
    20.4000E0     2.2500E0
    26.8500E0     1.7500E0
    21.0000E0     2.2500E0
    16.4625E0     2.7500E0
    12.5250E0     3.2500E0
    10.5375E0     3.7500E0
     8.5875E0     4.2500E0
     7.1250E0     4.7500E0
     6.1125E0     5.2500E0
     5.9625E0     5.7500E0
    74.1000E0     0.5000E0
    67.3000E0     0.6250E0
    60.8000E0     0.7500E0
    55.5000E0     0.8750E0
    50.3000E0     1.0000E0
    41.0000E0     1.2500E0
    29.4000E0     1.7500E0
    20.4000E0     2.2500E0
    29.3625E0     1.7500E0
    21.1500E0     2.2500E0
    16.7625E0     2.7500E0
    13.2000E0     3.2500E0
    10.8750E0     3.7500E0
     8.1750E0     4.2500E0
     7.3500E0     4.7500E0
     5.9625E0     5.2500E0
     5.6250E0     5.7500E0
    81.5000E0      .5000E0
    62.4000E0      .7500E0
    32.5000E0     1.5000E0
    12.4100E0     3.0000E0
    13.1200E0     3.0000E0
    15.5600E0     3.0000E0
     5.6300E0     6.0000E0
    78.0000E0      .5000E0
    59.9000E0      .7500E0
    33.2000E0     1.5000E0
    13.8400E0     3.0000E0
    12.7500E0     3.0000E0
    14.6200E0     3.0000E0
     3.9400E0     6.0000E0
    76.8000E0      .5000E0
    61.0000E0      .7500E0
    32.9000E0     1.5000E0
    13.8700E0     3.0000E0
    11.8100E0     3.0000E0
    13.3100E0     3.0000E0
     5.4400E0     6.0000E0
    78.0000E0      .5000E0
    63.5000E0      .7500E0
    33.8000E0     1.5000E0
    12.5600E0     3.0000E0
     5.6300E0     6.0000E0
    12.7500E0     3.0000E0
    13.1200E0     3.0000E0
     5.4400E0     6.0000E0
    76.8000E0      .5000E0
    60.0000E0      .7500E0
    47.8000E0     1.0000E0
    32.0000E0     1.5000E0
    22.2000E0     2.0000E0
    22.5700E0     2.0000E0
    18.8200E0     2.5000E0
    13.9500E0     3.0000E0
    11.2500E0     4.0000E0
     9.0000E0     5.0000E0
     6.6700E0     6.0000E0
    75.8000E0      .5000E0
    62.0000E0      .7500E0
    48.8000E0     1.0000E0
    35.2000E0     1.5000E0
    20.0000E0     2.0000E0
    20.3200E0     2.0000E0
    19.3100E0     2.5000E0
    12.7500E0     3.0000E0
    10.4200E0     4.0000E0
     7.3100E0     5.0000E0
     7.4200E0     6.0000E0
    70.5000E0      .5000E0
    59.5000E0      .7500E0
    48.5000E0     1.0000E0
    35.8000E0     1.5000E0
    21.0000E0     2.0000E0
    21.6700E0     2.0000E0
    21.0000E0     2.5000E0
    15.6400E0     3.0000E0
     8.1700E0     4.0000E0
     8.5500E0     5.0000E0
    10.1200E0     6.0000E0
    78.0000E0      .5000E0
    66.0000E0      .6250E0
    62.0000E0      .7500E0
    58.0000E0      .8750E0
    47.7000E0     1.0000E0
    37.8000E0     1.2500E0
    20.2000E0     2.2500E0
    21.0700E0     2.2500E0
    13.8700E0     2.7500E0
     9.6700E0     3.2500E0
     7.7600E0     3.7500E0
     5.4400E0     4.2500E0
     4.8700E0     4.7500E0
     4.0100E0     5.2500E0
     3.7500E0     5.7500E0
    24.1900E0     3.0000E0
    25.7600E0     3.0000E0
    18.0700E0     3.0000E0
    11.8100E0     3.0000E0
    12.0700E0     3.0000E0
    16.1200E0     3.0000E0
    70.8000E0      .5000E0
    54.7000E0      .7500E0
    48.0000E0     1.0000E0
    39.8000E0     1.5000E0
    29.8000E0     2.0000E0
    23.7000E0     2.5000E0
    29.6200E0     2.0000E0
    23.8100E0     2.5000E0
    17.7000E0     3.0000E0
    11.5500E0     4.0000E0
    12.0700E0     5.0000E0
     8.7400E0     6.0000E0
    80.7000E0      .5000E0
    61.3000E0      .7500E0
    47.5000E0     1.0000E0
    29.0000E0     1.5000E0
    24.0000E0     2.0000E0
    17.7000E0     2.5000E0
    24.5600E0     2.0000E0
    18.6700E0     2.5000E0
    16.2400E0     3.0000E0
     8.7400E0     4.0000E0
     7.8700E0     5.0000E0
     8.5100E0     6.0000E0
    66.7000E0      .5000E0
    59.2000E0      .7500E0
    40.8000E0     1.0000E0
    30.7000E0     1.5000E0
    25.7000E0     2.0000E0
    16.3000E0     2.5000E0
    25.9900E0     2.0000E0
    16.9500E0     2.5000E0
    13.3500E0     3.0000E0
     8.6200E0     4.0000E0
     7.2000E0     5.0000E0
     6.6400E0     6.0000E0
    13.6900E0     3.0000E0
    81.0000E0      .5000E0
    64.5000E0      .7500E0
    35.5000E0     1.5000E0
    13.3100E0     3.0000E0
     4.8700E0     6.0000E0
    12.9400E0     3.0000E0
     5.0600E0     6.0000E0
    15.1900E0     3.0000E0
    14.6200E0     3.0000E0
    15.6400E0     3.0000E0
    25.5000E0     1.7500E0
    25.9500E0     1.7500E0
    81.7000E0      .5000E0
    61.6000E0      .7500E0
    29.8000E0     1.7500E0
    29.8100E0     1.7500E0
    17.1700E0     2.7500E0
    10.3900E0     3.7500E0
    28.4000E0     1.7500E0
    28.6900E0     1.7500E0
    81.3000E0      .5000E0
    60.9000E0      .7500E0
    16.6500E0     2.7500E0
    10.0500E0     3.7500E0
    28.9000E0     1.7500E0
    28.9500E0     1.7500E0
  ]

  nlp = Model()

  @variable(nlp, x[j = 1:3])
  set_start_value.(x, [0.1, 0.01, 0.02]) # [0.15, 0.008, 0.010]

  @NLobjective(
    nlp,
    Min,
    0.5 * sum((y[i, 1] - exp(- y[i, 2] * x[1]) / exp(x[2] + x[3] * y[i, 2] ))^2 for i = 1:214)
  )

  return nlp
end
