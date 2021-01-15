using IPTFRAMEWORK.Helper;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace IPTFRAMEWORK.TEST1
{
    public class Program
    {
        static void Main()
        {
           // StudentHelperHospital studentHelperhospital = new StudentHelperHospital();
           // studentHelperhospital.Insert("hadeed", "Darku", "Near abul hasan", "03626995");

            //StudentHelperPatient studentHelperPatient = new StudentHelperPatient();
           // studentHelperPatient.Insert("Hello2", "World3", "good1@gmail.com13", "4214");

            StudentHelperMedicine studentHelperMedicine = new StudentHelperMedicine();
            studentHelperMedicine.Insert("Avil", "3 times","30rs");

          
           // StudentHelperTreatment studentHelperTreatment = new StudentHelperTreatment();
           //studentHelperTreatment.Insert("Fever", 100, "Panadol", 3);

        }
    }

}
