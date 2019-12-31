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
            Quality,
            AllView,
            OeeFull
        }
        public abstract List<string> ColumnNames
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
        public int FailCode { get; set; }
        public string TimeStamp { get; set; }

        public override List<string> ColumnNames => new List<string>
                {
                    "id",
                    "operation_id",
                    "disponible",
                    "dictionary_id",
                    "updated"
                };

        public override string GetTableName => "disponibility";
    }

    public class Velocity : Oee
    {
        public int Id { get; set; }
        public int MachineId { get; set; }
        public int ProductionQuantity { get; set; }
        public string ProductionUnit { get; set; }
        public string TimeStamp { get; set; }

        public override List<string> ColumnNames => new List<string>
                {
                    "id",
                    "operation_id",
                    "production",
                    "unit",
                    "updated"
                };

        public override string GetTableName => "velocity";
    }

    public class Quality : Oee
    {
        public int Id { get; set; }
        public int MachineId { get; set; }
        public int QualityDefects { get; set; }
        public int DefectCode { get; set; }
        public string EventTime { get; set; }
        public string TimeUpdated { get; set; }

        public override List<string> ColumnNames => new List<string>
                {
                    "id",
                    "operation_id",
                    "defects",
                    "defect_id",
                    "event_time",
                    "updated"
                };

        public override string GetTableName => "quality";
    }

    public class AllView : Oee
    {
        public int OperationID { get; set; }
        public bool MachinePower { get; set; }
        public int FailCode { get; set; }
        public int ProductionQuantity { get; set; }
        public int QualityDefects { get; set; }
        public string TimeUpdated { get; set; }

        public override List<string> ColumnNames => new List<string>
            {
                "operation_id",
                "disponible",
                "dictionary_id",
                "production",
                "defects",
                "last_update",
            };
        public override string GetTableName => "actual_disponibility";
    }

    public class OeeFull : Oee
    {
        public Disponibility Disponibility { get; set; }
        public Velocity Velocity { get; set; }
        public Quality Quality { get; set; }

        public List<Disponibility> DisponibilityList { get; set; }
        public List<Velocity> VelocityList { get; set; }
        public List<Quality> QualityList { get; set; }

        public override List<string> ColumnNames
        {
            get
            {
                List<string> value = new List<string>();
                value.AddRange(Disponibility.ColumnNames);
                value.AddRange(Velocity.ColumnNames);
                value.AddRange(Quality.ColumnNames);
                return value;
            }
        }

        public override string GetTableName => throw new NotImplementedException();
    }
}
