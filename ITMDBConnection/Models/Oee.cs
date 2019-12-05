using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace ITMDBConnection.Models
{
    public abstract class Oee
    {
        public enum Tables
        {
            Disponibility,
            Velocity,
            Quality
        }
        public abstract List<string> columnNames
        {
            get;
        }
        public abstract string GetTableName
        {
            get;
        }
    }

    public class Disponibility : Oee
    {
        public int Id { get; set; }
        public int MachineId { get; set; }
        public bool MachinePower { get; set; }
        public string FailCode { get; set; }
        public string TimeStamp { get; set; }

        public override List<string> columnNames => new List<string>
                {
                    "oee_disponibility_id",
                    "machine_id",
                    "oee_disponibility_status",
                    "fail_dictionary_code",
                    "oee_disponibility_timestamp"
                };

        public override string GetTableName => "oee_disponibility";
    }

    public class Velocity : Oee
    {
        public int Id { get; set; }
        public int MachineId { get; set; }
        public int ProductionQuantity { get; set; }
        public string ProductionUnit { get; set; }
        public string TimeStamp { get; set; }

        public override List<string> columnNames => new List<string>
                {
                    "oee_velocity_id",
                    "machine_id",
                    "oee_velocity_quantity",
                    "oee_velocity_measurement_unit",
                    "oee_velocity_timestamp"
                };

        public override string GetTableName => "oee_velocity";
    }
}
