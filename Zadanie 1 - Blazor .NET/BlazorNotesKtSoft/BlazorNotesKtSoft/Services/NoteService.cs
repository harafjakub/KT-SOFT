using BlazorNotesKtSoft.Data;
using BlazorNotesKtSoft.Models;
using Microsoft.EntityFrameworkCore;

namespace BlazorNotesKtSoft.Services;

public class NoteService : INoteService
{
    private readonly AppDbContext _context;

    public NoteService(AppDbContext context)
    {
        _context = context;
    }

    public async Task<List<Note>> GetNotesAsync() => await _context.Notes.ToListAsync();

    public async Task<Note> GetNoteByIdAsync(int id) =>
        await _context.Notes.FindAsync(id);

    public async Task AddNoteAsync(Note note)
    {
        var tracked = _context.ChangeTracker.Entries<Note>()
            .FirstOrDefault(e => e.Entity.Id == note.Id);

        if (tracked != null)
        {
            tracked.State = EntityState.Detached;
        }

        _context.Notes.Update(note);
        await _context.SaveChangesAsync();
    }

    public async Task UpdateNoteAsync(Note note)
    {
        var existingNote = await _context.Notes.FindAsync(note.Id);
        if (existingNote != null)
        {
            existingNote.Title = note.Title;
            existingNote.Content = note.Content;
            await _context.SaveChangesAsync();
        }
    }

    public async Task DeleteNoteAsync(int id)
    {
        var note = await _context.Notes.FindAsync(id);
        if (note != null)
        {
            _context.Notes.Remove(note);
            await _context.SaveChangesAsync();
        }
    }
}
