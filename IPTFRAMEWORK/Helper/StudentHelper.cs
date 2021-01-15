using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;
using System.Web;


namespace IPTFRAMEWORK.Helper
{
    public class StudentHelperPatient
    {
        public void Insert(string Name, String Address, String Email, String PhoneNumber)
        {
            Patient patient = new Patient();

            patient.Name = Name;
            patient.Address = Address;
            patient.Email = Email;
            patient.PhoneNumber = PhoneNumber;

            var db = new IPTServerEntities();
            db.Patients.Add(patient);
            db.SaveChanges();
            db.Dispose();
        }
    }

    public class StudentHelperHospital
    {
        public void Insert(string HospitalName, String HospitalIncharge, String HospitalAddress, String HospitalNumber)
        {
            Hospital hospital = new Hospital();

            hospital.HospitalName = HospitalName;
            hospital.HospitalIncharge = HospitalIncharge;
            hospital.HospitalAddress = HospitalAddress;
            hospital.HospitalNumber = HospitalNumber;

            var db = new IPTServerEntities();
            db.Hospitals.Add(hospital);
            db.SaveChanges();
            db.Dispose();
        }
    }

    public class StudentHelperMedicine
    {
        public void Insert(string Name, String MedicineTime, String MedicinePrice)
        {
            Medicine medicine = new Medicine();

            medicine.Name = Name;
            medicine.MedicineTime = MedicineTime;
            medicine.MedicinePrice = MedicinePrice;

            var db = new IPTServerEntities();
            db.Medicines.Add(medicine);
            db.SaveChanges();
            db.Dispose();
        }
    }

    public class StudentHelperTreatment
    {
        public void Insert(string Diagnose, int HospitalId, String MedicineName, int PatientId)
        {
            Treatment treatment = new Treatment();

             treatment.Diagnose = Diagnose;
             treatment.HospitalId = HospitalId;
             treatment.MedicineName = MedicineName;
             treatment.PatientId = PatientId;

             var db = new IPTServerEntities();
             db.Treatments.Add(treatment);
             db.SaveChanges();
             db.Dispose();
               
           

        }
    }
}
