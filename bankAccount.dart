
class BankAccount {
  int accountID;
  double balance;
  BankAccount(this.accountID, this.balance);
  BankAccount.empty()
      : accountID = 0,
        balance = 0;
  void withdraw(double amount) {
    if (balance >= amount) {
      balance = balance - amount;
      print("withdraw successful");
    } else {
      print("insufficient balance");
    }
  }
  void deposit(double amount) {
    balance = balance + amount;
    print("deposit successful");
  }
}
void main() {
  BankAccount account1 = BankAccount(101, 500);
  BankAccount account2 = BankAccount.empty();
  account1.deposit(200);
  account1.withdraw(100);
  print(account1.balance);
  print(account2.balance);
}
