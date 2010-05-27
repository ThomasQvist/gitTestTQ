using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Controls;
using System.Windows.Data;
using System.ComponentModel;
using System.Data;

namespace WPFDataGridExamples
{    

    /// <summary>
    /// Validates data which is bound from a DataSet
    /// </summary>
    public class DataRowValidation : ValidationRule
    {      
        public override ValidationResult Validate(object value, System.Globalization.CultureInfo cultureInfo)
        {
            // if this rule is being applied to a cell we will be inspecting a binding expression
            if (value is BindingExpression)
            {
                // obtain the row which is being validated
                BindingExpression expression = value as BindingExpression;
                DataRow row = ((DataRowView)expression.DataItem).Row;

                // determine the column to validate
                string propertyName = expression.ParentBinding.Path.Path;

                return ValidateColumn(propertyName, row);
            }

            // if this rule is being applied to a cell we will be inspecting a binding group
            else if (value is BindingGroup)
            {
                BindingGroup group = (BindingGroup)value;

                // iterate over all the bound items (this should always be one!)
                foreach (var item in group.Items)
                {
                    DataRow row = ((DataRowView)item).Row;

                    // validate against the metadata for each column
                    foreach (DataColumn column in row.Table.Columns)
                    {
                        ValidationResult result = ValidateColumn(column.ColumnName, row);
                        if (result != ValidationResult.ValidResult)
                        {
                            return result;
                        }
                    }                   
                }
            }

            return ValidationResult.ValidResult;
        }

        /// <summary>
        /// Validates a DataRow value associated with the given named column
        /// </summary>
        private ValidationResult ValidateColumn(string columnName, DataRow row)
        {
            DataTable table = row.Table;
            DataColumn column = table.Columns[columnName];
            object cellValue;
            try
            {
                cellValue = row[column.ColumnName];
            }
            catch (RowNotInTableException)
            {
                return ValidationResult.ValidResult;
            }

            // check for null values
            if (cellValue == null || cellValue.Equals(string.Empty) || cellValue.Equals(System.DBNull.Value))
            {
                if (!column.AllowDBNull)
                {
                    return new ValidationResult(false, column.ColumnName + " cannot be null");
                }
                else
                {
                    return ValidationResult.ValidResult;
                }
            }

            // check string length constraints
            if (column.DataType == typeof(string))
            {
                string strVal = cellValue as string;
                if (strVal != null && strVal.Length > column.MaxLength)
                {
                    return new ValidationResult(false, "Length of " + column.ColumnName + " should not exceed " + column.MaxLength);
                }
            }

            // check for unique constraints
            if (column.Unique)
            {
                // iterate over all the rows in the table comparing the value for this column
                foreach (DataRow compareRow in row.Table.Rows)
                {
                    if (compareRow!=row && cellValue.Equals(compareRow[column]))
                    {
                        return new ValidationResult(false, column.ColumnName + " must be unique");
                    }
                }
            }

            return ValidationResult.ValidResult;
        }
    }

   
   
}
