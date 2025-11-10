import 'package:flutter_test/flutter_test.dart';
import 'package:unit_testing/my_function.dart';

void main()
{


  //for a single unit test
  test("Simple Test", (){

    MyFunction mf=MyFunction();

    int salary=mf.calculateSalary(1);
    expect(salary, 400);

  });


  //for multiple unit tests
  group("salary test", (){

    test("Salary Test 1", (){

      MyFunction mf=MyFunction();

      int salary=mf.calculateSalary(35);
      expect(salary, 14000);

    });

    test("Salary Test 2", (){

      MyFunction mf=MyFunction();

      int salary=mf.calculateSalary(45);
      expect(salary, 19000);


    });


  });
}