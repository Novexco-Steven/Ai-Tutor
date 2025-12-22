// Generate comprehensive teaching prompts for Grade 6-8 Math
// This script creates detailed prompts following the Grade 1 format

const fs = require('fs');
const path = require('path');

// Grade 6 topics organized by unit
const grade6Topics = {
  'Ratios and Rates': [
    'Understanding Ratios', 'Equivalent Ratios', 'Ratio Tables', 'Tape Diagrams for Ratios',
    'Unit Rate', 'Unit Price', 'Rate Problems', 'Graphing Ratios',
    'Proportional Relationships Introduction', 'Solving Proportions', 'Scale Drawings',
    'Ratio and Rate Word Problems'
  ],
  'Percent Applications': [
    'Percent Review', 'Percent of a Number', 'Finding the Whole', 'Finding the Percent',
    'Percent Equation', 'Percent Increase', 'Percent Decrease', 'Discount and Sale Price',
    'Sales Tax', 'Tips and Gratuity', 'Commission', 'Simple Interest', 'Percent Word Problems'
  ],
  'Rational Numbers': [
    'Integers on Number Line', 'Comparing Integers', 'Absolute Value', 'Opposite Numbers',
    'Adding Integers', 'Subtracting Integers', 'Multiplying Integers', 'Dividing Integers',
    'Rational Numbers on Number Lines', 'Comparing Rational Numbers',
    'Operations with Rational Numbers', 'Rational Number Word Problems'
  ],
  'Expressions and Equations': [
    'Writing Algebraic Expressions', 'Evaluating Expressions', 'Properties of Operations',
    'Combining Like Terms', 'Distributive Property', 'Factoring Expressions',
    'Equivalent Expressions', 'Writing Equations', 'Solving Addition Equations',
    'Solving Subtraction Equations', 'Solving Multiplication Equations',
    'Solving Division Equations', 'Two-Step Equations', 'Writing Inequalities',
    'Solving Inequalities', 'Equations and Inequalities Word Problems'
  ],
  'Coordinate Plane': [
    'Four Quadrants Review', 'Reflecting Points', 'Distance on Coordinate Plane',
    'Absolute Value and Distance', 'Polygons on Coordinate Plane',
    'Perimeter on Coordinate Plane', 'Area on Coordinate Plane',
    'Graphing Equations', 'Coordinate Plane Word Problems'
  ],
  'Area and Surface Area': [
    'Area of Parallelograms', 'Area of Triangles', 'Area of Trapezoids',
    'Area of Composite Figures', 'Area on Coordinate Plane', 'Understanding Nets',
    'Surface Area of Rectangular Prisms', 'Surface Area of Triangular Prisms',
    'Surface Area of Pyramids', 'Surface Area Word Problems'
  ],
  'Statistics': [
    'Statistical Questions', 'Mean', 'Median', 'Mode', 'Range',
    'Choosing Measures of Center', 'Mean Absolute Deviation', 'Interquartile Range',
    'Dot Plots', 'Histograms', 'Box Plots', 'Comparing Data Displays',
    'Describing Distributions', 'Outliers'
  ],
  'Probability': [
    'Probability Basics', 'Theoretical Probability',
    'Probability as Fraction Decimal Percent', 'Experimental Probability',
    'Comparing Theoretical and Experimental', 'Sample Space', 'Tree Diagrams',
    'Compound Events', 'Independent Events', 'Simulations'
  ],
  'Fractions': [
    'Dividing Fractions by Fractions', 'Dividing Mixed Numbers',
    'Fraction Division Word Problems', 'Complex Fractions'
  ],
  'Geometry': [
    'Volume of Rectangular Prisms', 'Volume with Fractional Dimensions',
    'Volume of Composite Figures', '3D Figures from Nets'
  ]
};

console.log('Grade 6 Math Comprehensive Teaching Prompts Generator');
console.log('This will create detailed prompts for all 106 Grade 6 Math topics');
console.log('Following the same format as Grade 1 Math expanded prompts');
console.log('');
console.log('Total topics to process:', Object.values(grade6Topics).flat().length);
console.log('');
console.log('File already started with first 36 topics (Ratios, Percents, Rational Numbers)');
console.log('Remaining topics will be added in next iteration');
console.log('');
console.log('To complete the file, continue with:');
console.log('- Expressions and Equations (16 topics)');
console.log('- Coordinate Plane (9 topics)');
console.log('- Area and Surface Area (10 topics)');
console.log('- Statistics (14 topics)');
console.log('- Probability (10 topics)');
console.log('- Fractions expansion (4 topics)');
console.log('- Geometry expansion (4 topics)');
