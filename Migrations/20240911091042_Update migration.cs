using Microsoft.EntityFrameworkCore.Migrations;

#nullable disable

namespace Menu.Migrations
{
    /// <inheritdoc />
    public partial class Updatemigration : Migration
    {
        /// <inheritdoc />
        protected override void Up(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "DishIngredients",
                keyColumns: new[] { "DishId", "IngredientId" },
                keyValues: new object[] { 2, 2 });

            migrationBuilder.InsertData(
                table: "DishIngredients",
                columns: new[] { "DishId", "IngredientId" },
                values: new object[] { 1, 2 });
        }

        /// <inheritdoc />
        protected override void Down(MigrationBuilder migrationBuilder)
        {
            migrationBuilder.DeleteData(
                table: "DishIngredients",
                keyColumns: new[] { "DishId", "IngredientId" },
                keyValues: new object[] { 1, 2 });

            migrationBuilder.InsertData(
                table: "DishIngredients",
                columns: new[] { "DishId", "IngredientId" },
                values: new object[] { 2, 2 });
        }
    }
}
