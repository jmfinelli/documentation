    ...
    txn_crt.begin();
    // should test the exceptions that might be raised
    ...
    // the client issues requests, some of which involve
    // transactional objects;
    BankAccount1.makeDeposit(deposit);
    ...