#include <oxstd.oxh>
#import <packages/PcGive/pcgive>

run_1()
{
// This program requires a licenced version of PcGive Professional.
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

	delete model;
}

run_2()
{
// This program requires a licenced version of PcGive Professional.
	//--- Ox code for EQ( 2)
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

	delete model;
}

main()
{
	run_1();
	run_2();
}
