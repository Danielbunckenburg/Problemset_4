#include <oxstd.oxh>
#import <packages/PcGive/pcgive_ects>
#import <packages/arfima/arfima>

// ------------------------------------------------
// Information:
//
// To use the PrintModels module
// Add the following 4 lines to import PrintModels
// ------------------------------------------------
#import <packages/PcGive/pcgive_ects>
#import <packages/PcGive/pcgive_garch>
#import <packages/arfima/arfima>
#import <PrintModels>

run_1()
  {
 / This program requires a licenced version of PcGive Professional.
	//--- Ox code for EQ( 1)
	decl model = new PcGive();

	model.Load("C:\\Users\\Bruger\\OneDrive - University of Copenhagen\\Polit 2021\\Economics2\\Problemset_4\\Data\\TimeSeries.in7");
	model.Deterministic(-1);

	model.Select("Y", {"dlnfy", 0, 0});
	model.Select("X", {"Constant", 0, 0});
	model.Select("Y", {"dlnfy", 1, 2});
	model.Select("X", {"lnfy", 1, 1});
	model.Select("X", {"Trend", 0, 0});
	model.SetSelSample(1971, 4, 2020, 3);
	model.SetMethod("OLS");
	model.Estimate();
	model.TestSummary();

	return model;
  }

run_2()
  {
 	decl model = new PcGive();

	model.Load("C:\\Users\\Bruger\\OneDrive - University of Copenhagen\\Polit 2021\\Economics2\\Problemset_4\\Data\\TimeSeries.in7");
	model.Deterministic(-1);

	model.Select("Y", {"dlnfy", 0, 0});
	model.Select("X", {"Constant", 0, 0});
	model.Select("Y", {"dlnfy", 1, 2});
	model.SetSelSample(1971, 4, 2020, 3);
	model.SetMethod("OLS");
	model.Estimate();
	model.TestSummary(); 
  return model;
  }


main()
  {
  // ----------------------------
  // Replace "run_1();" with
  //         "decl m1 = run_1();"
  // ----------------------------
  // run_1();
  // run_2();
  decl m1 = run_1();
  decl m2 = run_2();

  // ----------------------------
  // Use the PrintModels class by
  // adding the following lines.
  // ----------------------------
  decl printmodels = new PrintModels();       // Creates a new class object called "printmodels", which we use to print results of the estimated models we add in the next line.
  printmodels.AddModels(m1, m2 );             // Select models to print.
  printmodels.SetModelNames({"(1)","(2)"});   // Set the model names in the table.
  printmodels.SetPrintFormat(FALSE,TRUE,4,3); // Print format: Use SE , use scientific notation, precision of estimates, precision of standard errors/t-values
  printmodels.PrintTable();                   // Produce tex-table.

  // ------------------------------
  // Delete everything from memory.
  // ------------------------------
  delete m1,m2;
  delete printmodels;
  }
