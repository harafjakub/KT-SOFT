## Projekt

- Platforma: .NET 8.0
- Typ projektu: Blazor Web App
- Baza danych: Microsoft SQL Server
- ORM: Entity Framework Core

## Konfiguracja

Przed uruchomieniem aplikacji należy upewnić się, że:

1. **Masz dostępny serwer SQL Server**  
2. **Istnieje baza danych o nazwie `BlazorNotes`**  
   Alternatywnie możesz zmodyfikować connection string w pliku `Program.cs`:

```csharp
builder.Services.AddDbContext<AppDbContext>(options =>
    options.UseSqlServer("Server=localhost;Database=BlazorNotes;Trusted_Connection=True;TrustServerCertificate=True;"));
```

## Migracje bazy danych

Aby zastosować migracje i utworzyć schemat bazy danych:

```bash
dotnet ef database update
```


## Testy jednostkowe

W projekcie nie ma takiej wydzielonej logiki biznesowej, na której można by było oprzeć klasyczne czyste testy jednostkowe. Powyższy test wykorzystuje bazę InMemory, co technicznie czyni go bardziej **testem integracyjnym niż jednostkowym**. Zakładam jednak, że celem zadania było sprawdzenie samej umiejętności pisania testów, więc mam nadzieję, że taka forma jest wystarczająca.
