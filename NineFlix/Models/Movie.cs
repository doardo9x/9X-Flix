using System.ComponentModel.DataAnnotations;
using System.ComponentModel.DataAnnotations.Schema;

namespace NineFlix.Models;
[Table("Movie")]
public class Movie
{
    // ----------;----------
    [Key]
    [DatabaseGenerated(DatabaseGeneratedOption.Identity)]
    public uint Id { get; set; }

    // ----------;----------
    [Display(Name = "Titulo Original")]
    [Required(ErrorMessage = "Por favor informe o Titulo Original")]
    [StringLength(100, ErrorMessage = "O titulo deve possuir no maximo 100 caracteres")]
    public string OriginalTitle { get; set; }
    
    // ----------;----------
    [Display(Name = "Titulo ")]
    [StringLength(100, ErrorMessage = "O titulo deve possuir no maximo 100 caracteres")]
    public string Title { get; set; }

    // ----------;----------
    [Display(Name = "Sinopse")]
    [StringLength(8000, ErrorMessage = "O sinopse deve possuir no maximo 8000 caracteres")]
    public string Synopsis { get; set; }

    // ----------;----------
    [Column(TypeName = "Year")]
    [Display(Name = "Ano de Estreia")]
    [Required(ErrorMessage = "Por favor, informe o ano de estreia")]
    public Int16 MovieYear { get; set; }

    // ----------;----------
    [Display(Name = "Duração (Em minutos)")]
    [Required (ErrorMessage = "Por favor, informe a duração!")]
    public Int16 Duration { get; set; }

    // ----------;----------
    [Display(Name = "Classificação Etária")]
    [Required(ErrorMessage = "Por favor, informe a classificação etária")]
    public byte AgeRating { get; set; } = 0;

    // ----------;----------
    [StringLength(200)]
    [Display(Name = "Foto")]
    public string Image { get; set; }

    // ----------;----------  
    //h - Hora ; hh - hora com dois digitos ; m - minutos; 
    // d - Dia; M - mês ; y - Ano
    [NotMapped]
    [Display(Name = "Duração")]
    public string HourDuration { get{
        return TimeSpan.FromMinutes(Duration).ToString(@"%h'h 'm'min'");
    } }
}