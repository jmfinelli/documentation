{
   ...
   // create new action
   current.begin();
   ...
   // implicit propagation
   trans_object2.operation(arg);
   ...

   // simple commit
   current.commit(false);
   ...
}