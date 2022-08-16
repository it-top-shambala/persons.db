classDiagram
direction BT
class tab_contacts {
   integer person_id
   integer contact_type_id
   text contact
   integer contact_id
}
class tab_contacts_types {
   text type
   integer contact_type_id
}
class tab_persons {
   text first_name
   text last_name
   text date_of_birth
   integer person_id
}

tab_contacts  -->  tab_contacts_types : contact_type_id
tab_contacts  -->  tab_persons : person_id
