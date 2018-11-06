using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace EmpSalaryCalc
{
    public class Employee
    {
      private  String empName;
     private   String empDesignation;
     private   int empWorkingDays;
        private int empBSalary;
        private int empTA;
        private int empDA;
        private int empTAX;


        public void getDetails(String empName, String empDesignation, int empWorkingDays, int empBSalary, int empTA, int empDA, int empTAX )
        {
            double netsalary;
            float tax = (empTAX * empBSalary) / 100;
            netsalary = empWorkingDays * (empBSalary + empTA + empDA - tax);

            
            //return netsalary;
        }
    }
}