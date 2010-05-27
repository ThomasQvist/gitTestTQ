using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Text.RegularExpressions;
using System.ComponentModel;
using System.Collections.ObjectModel;

namespace WPFDataGridExamples
{
    public class PersonDataSource
    {
        public PersonDataSource()
        {
        }

        public ObservableCollection<Person> GetPeople()
        {
            return new ObservableCollection<Person>()
            {
                new Person()
                {
                    Name = "Frank Grimmes",
                    Age = 25,
                    DateOfBirth = new DateTime(1975, 2, 19)
                },
                new Person()
                {
                    Name = "Bill Bailey",
                    Age = 25,
                    DateOfBirth = new DateTime(1942, 6, 1)
                },
                new Person()
                {
                    Name = "Charles Windsor",
                    Age = 25,
                    DateOfBirth = new DateTime(1924, 9, 1)
                },
                new Person()
                {
                    Name = "Phil Pounder",
                    Age = 25,
                    DateOfBirth = new DateTime(1986, 1, 30)
                },
                new Person()
                {
                    Name = "Tom Jones",
                    Age = 87,
                    DateOfBirth = new DateTime(1946, 10, 10)
                }
            };
        }
    }

    public class AppointmentDataSource
    {
        public AppointmentDataSource()
        {
        }

        public ObservableCollection<Appointment> GetAppointments()
        {
            return new ObservableCollection<Appointment>()
            {
                new Appointment()
                {
                  Name = "Freddie Mercury",
                  Age = 67,
                  StartTime = new DateTime(2008, 10, 10, 10, 0, 0),
                  EndTime = new DateTime(2008, 10, 10, 11, 30, 0),
                },
                new Appointment()
                {
                  Name = "Brian May",
                  Age = 56,
                  StartTime = new DateTime(2008, 10, 8, 16, 0, 0),
                  EndTime = new DateTime(2008, 10, 8, 17, 0, 0),
                }
            };
        }
    }

    /// <summary>
    /// A person data object which throws exceptions if various constraints are not met
    /// </summary>
    public class Person
    {
        private readonly Regex nameEx = new Regex(@"^[A-Za-z ]+$");

        private string name;

        public string Name
        {
            get { return name; }
            set
            {
                if (value == null || value==string.Empty)
                    throw new ArgumentException("Name cannot be null or empty");

                if (!nameEx.Match(value).Success)
                    throw new ArgumentException("Name may only contain characters or spaces");

                name = value;
            }
        }

        private int age;

        public int Age
        {
            get { return age; }
            set
            {
                if (value < 0 || value > 110)
                    throw new ArgumentException("Age must be positive and less than 110");

                age = value;
            }
        }

        public DateTime DateOfBirth { get; set; }
    } 

    /// <summary>
    /// An appointment data object
    /// </summary>
    public class Appointment : IDataErrorInfo
    {
        private readonly Regex nameEx = new Regex(@"^[A-Za-z ]+$");

        public string Name { get; set; }

        public int Age { get; set; }

        public DateTime StartTime { get; set; }

        public DateTime EndTime { get; set; }

        #region IDataErrorInfo Members

        public string Error
        {
        get
        {
            StringBuilder error = new StringBuilder();

            // iterate over all of the properties of this object - aggregating any validation errors
            PropertyDescriptorCollection props = TypeDescriptor.GetProperties(this);
            foreach (PropertyDescriptor prop in props)
            {
                string propertyError = this[prop.Name];
                if (propertyError != string.Empty)
                {
                    error.Append((error.Length!=0  ? ", " : "") + propertyError);
                }
            }

            // apply object level validation rules
            if (StartTime.CompareTo(EndTime) > 0)
            {
                error.Append((error.Length != 0 ? ", " : "") + "EndTime must be after StartTime");
            }

            return error.ToString();
        }
        }

        public string this[string columnName]
        {
            get
            {
                if (columnName == "Name")
                {
                    if (Name == null || Name == string.Empty)
                       return "Name cannot be null or empty";

                    if (!nameEx.Match(Name).Success)
                        return "Name may only contain characters or spaces";
                }

                if (columnName == "Age")
                {
                    if (Age < 0 || Age > 110)
                        return "Age must be positive and less than 110";
                }

                return "";
            }
        }

        #endregion
    }
}
