using ToDo.Domain.Entities;

namespace ToDo.Domain.Interface
{
    public interface IItemRepository
    {
        Task<IEnumerable<Item>> GetAllAsync();
        Task AddAsync(Item item);
        Task EditAsync(Item item);
        Task RemoveById(Guid id);
        Task<Item> GetAsync(Guid id);
    }
}
