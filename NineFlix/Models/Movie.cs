using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NineFlix.Models;
[Table("Movie")]
public class Movie
{
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public uint Id { get; set; }

    [Display(Name = "Titulo Original")]
    [Required(ErrorMessage = "Por favor informe o Titulo Original")]
    [StringLength(100, ErrorMessage = "O titulo deve possuir no maximo 100 caracteres")]
    public string OriginalTitle { get; set; }

    [Display(Name = "Titulo ")]
    [StringLength(100, ErrorMessage = "O titulo deve possuir no maximo 100 caracteres")]
    public string Title { get; set; }

    [Display(Name = "Sinopse")]
    [StringLength(8000, ErrorMessage = "O sinopse deve possuir no maximo 8000 caracteres")]
    public string Synopsis { get; set; }

    [Column(TypeName = "Year")]
    [Display(Name = "Ano de Estreia")]
    [Required(ErrorMessage = "Por favor, informe o ano de estreia")]
    public Int16 MovieYear { get; set; }
    public int Duration { get; set; }
    public int AgeRating { get; set; }
    // public int Image { get; set; }
}