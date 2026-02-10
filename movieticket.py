tickets = []  

def add_ticket(name, movie, seats):
    ticket_id = len(tickets) + 1
    tickets.append({
        "ticket_id": ticket_id,
        "name": name,
        "movie": movie,
        "seats": seats
    })
    print(f"Ticket booked successfully! Ticket ID: {ticket_id}")

def update_ticket(ticket_id, movie=None, seats=None):
    for ticket in tickets:
        if ticket["ticket_id"] == ticket_id:
            if movie:
                ticket["movie"] = movie
            if seats:
                ticket["seats"] = seats
            print("Ticket updated successfully!")
            return
    print("Ticket not found!")

def delete_ticket(ticket_id):
    for ticket in tickets:
        if ticket["ticket_id"] == ticket_id:
            tickets.remove(ticket)
            print("Ticket deleted successfully!")
            return
    print("Ticket not found!")

def view_tickets():
    if not tickets:
        print("No tickets booked yet.")
    else:
        for ticket in tickets:
            print(ticket)


while True:
    print("\n--- Movie Ticket Booking System ---")
    print("1. Add Ticket")
    print("2. Update Ticket")
    print("3. Delete Ticket")
    print("4. View Tickets")
    print("5. Exit")

    choice = input("Enter your choice: ")

    if choice == "1":
        name = input("Enter your name:manish")
        movie = input("Enter movie name:dhurangdar")
        seats = int(input("Enter number of seats:3 "))
        add_ticket(name, movie, seats)

    elif choice == "2":
        ticket_id = int(input("Enter Ticket ID to update:10 "))
        movie = input("Enter new movie name (or press Enter to skip): ")
        seats = input("Enter new number of seats (or press Enter to skip):")
        update_ticket(ticket_id, movie if movie else None, int(seats) if seats else None)

    elif choice == "3":
        ticket_id = int(input("Enter Ticket ID to delete: "))
        delete_ticket(ticket_id)

    elif choice == "4":
        view_tickets()
        break


    elif choice == "5":
        print("Thank you for using Movie Ticket Booking System!")
        break

    else:
        print("Invalid choice! Please try again.")