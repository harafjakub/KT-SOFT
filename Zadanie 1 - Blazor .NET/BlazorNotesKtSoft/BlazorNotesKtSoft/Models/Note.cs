using System.ComponentModel.DataAnnotations;

namespace BlazorNotesKtSoft.Models;

public class Note
{
    public int Id { get; set; }

    [Required]
    [StringLength(100, ErrorMessage = "Title is too long.")]
    public string Title { get; set; }

    [Required]
    [StringLength(1000, ErrorMessage = "Content is too long.")]
    public string Content { get; set; }

}