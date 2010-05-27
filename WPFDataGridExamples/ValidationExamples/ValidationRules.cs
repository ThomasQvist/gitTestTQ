using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Windows.Controls;
using System.Windows.Data;
using System.ComponentModel;

namespace WPFDataGridExamples
{
    public class RowDummyValidation : ValidationRule
    {
        public override ValidationResult Validate(object value, System.Globalization.CultureInfo cultureInfo)
        {
            return ValidationResult.ValidResult;
        }
    }

    /// <summary>
    /// A validation rule that makes use of tghe business objects IDataErrorInfo interface is applied at the group level
    /// </summary>
    public class RowDataInfoValidationRule : ValidationRule
    {
        public override ValidationResult Validate(object value, System.Globalization.CultureInfo cultureInfo)
        {
            BindingGroup group = (BindingGroup)value;

            StringBuilder error = null;
            foreach (var item in group.Items)
            {
                // aggregate errors
                IDataErrorInfo info = item as IDataErrorInfo;
                if (info != null)
                {
                    if (!string.IsNullOrEmpty(info.Error))
                    {
                        if (error == null)
                            error = new StringBuilder();
                        error.Append((error.Length != 0 ? ", " : "") + info.Error);
                    }
                }
            }

            if (error != null)
                return new ValidationResult(false, error.ToString());

            return ValidationResult.ValidResult;
        }
    }

    /// <summary>
    /// A validation rule that makes use of the business objects IDataErrorInfo interface is applied at the property level
    /// </summary>
    public class CellDataInfoValidationRule : ValidationRule
    {
        public override ValidationResult Validate(object value, System.Globalization.CultureInfo cultureInfo)
        {
            // obtain the bound business object
            BindingExpression expression = value as BindingExpression;
            IDataErrorInfo info = expression.DataItem as IDataErrorInfo;

            // determine the binding path
            string boundProperty = expression.ParentBinding.Path.Path;

            // obtain any errors relating to this bound property
            string error = info[boundProperty];
            if (!string.IsNullOrEmpty(error))
            {
                return new ValidationResult(false, error);
            }

            return ValidationResult.ValidResult;
        }
    }
}
