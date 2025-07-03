
using Microsoft.EntityFrameworkCore;
using BlazorNotesKtSoft;
using BlazorNotesKtSoft.Data;
using BlazorNotesKtSoft.Models;
using BlazorNotesKtSoft.Services;

public class NoteServiceTests
{
    [Fact] 
    public async Task AddNoteAsync_AddsNoteSuccessfully()
    {
        var options = new DbContextOptionsBuilder<AppDbContext>()
            .UseInMemoryDatabase(databaseName: "TestDb")
            .Options;

        using var context = new AppDbContext(options);
        var service = new NoteService(context);

        var note = new Note { Title = "Test", Content = "Test content" };
        await service.AddNoteAsync(note);

        Assert.Single(context.Notes);
        Assert.Equal("Test", context.Notes.First().Title);
    }
}