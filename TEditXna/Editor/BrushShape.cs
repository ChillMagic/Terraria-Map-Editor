using System.ComponentModel;

namespace TEditXna.Editor
{
    public enum BrushShape
    {
        [Description("矩形")]
        Square,
        [Description("椭圆")]
        Round,
        [Description("Diagonal Right")]
        Right,
        [Description("Diagonal Left")]
        Left,
    }
}
