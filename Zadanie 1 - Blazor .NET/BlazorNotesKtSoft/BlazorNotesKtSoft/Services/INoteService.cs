using BlazorNotesKtSoft.Models;

namespace BlazorNotesKtSoft.Services;

public interface INoteService
{
    Task<List<Note>> GetNotesAsync();
    Task<Note> GetNoteByIdAsync(int id);
    Task AddNoteAsync(Note note);
    Task UpdateNoteAsync(Note note);
    Task DeleteNoteAsync(int id);
}