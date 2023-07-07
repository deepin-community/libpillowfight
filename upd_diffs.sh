#!/bin/bash

cd tests/data
gm compare black_border_problem.jpg black_border_problem_blackfilter.jpg -file black_border_problem_blackfilter_diff.jpg
gm compare black_border_problem.jpg black_border_problem_blurfilter.jpg -file black_border_problem_blurfilter_diff.jpg
gm compare black_border_problem3.jpg black_border_problem3_border.jpg -file black_border_problem3_border_diff.jpg
gm compare black_border_problem.jpg black_border_problem_grayfilter.jpg -file black_border_problem_grayfilter_diff.jpg
gm compare black_border_problem2.jpg black_border_problem2_masks.jpg -file black_border_problem2_masks_diff.jpg
gm compare black_border_problem.jpg black_border_problem_noisefilter.jpg -file black_border_problem_noisefilter_diff.jpg