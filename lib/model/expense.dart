import 'package:expense_tracker/widgets/expenses.dart';
import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid =  Uuid();
final formatter = DateFormat.yMd();

enum Category{ food,travel,leisure,work}  // using enum to allow fixed set of values only

const categoryIcons ={
  Category.food : Icons.lunch_dining,
  Category.travel : Icons.flight_takeoff,
  Category.leisure : Icons.shopping_cart_sharp,
  Category.work: Icons.work_history_sharp
};

class Expense{
  Expense({required this.title, 
          required this.amount, 
          required this.date,
          required this.category,
          }): id = uuid.v4();
  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  get formattedDate{
    return formatter.format(date);
  }
}

class ExpenseBucket{
  ExpenseBucket({
    required this.category,
    required this.expenses
    });

    ExpenseBucket.forCategory(List<Expense> allExpenses,this.category) 
    : expenses = allExpenses.where((expense) => expense.category == category ).toList();

  final Category category;
  final List<Expense> expenses;

  double get totalExpenses{
    double sum = 0;
    for(final expense in expenses){
      sum += expense.amount;
    }
    return sum;
  }
}