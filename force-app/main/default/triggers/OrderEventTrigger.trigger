trigger OrderEventTrigger on Order_Event__e (after insert) {
    // List to hold all tasks to be created.
    List<Task> tasks = new List<Task>();
    // Iterate through each notification.
    for (Order_Event__e event : Trigger.New) {
        if (event.Has_Shipped__c == true) {
            // Create a task to follow up on the order shipment.
            Task task = new Task();
            task.Priority = 'Medium';
            task.Subject = 'Follow up on shipped order 105';
            task.OwnerId = event.CreatedById;
            tasks.add(task);
        }
    }
    // Insert all tasks corresponding to events received.
    insert tasks;
}