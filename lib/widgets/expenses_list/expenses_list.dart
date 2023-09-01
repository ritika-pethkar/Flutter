import 'package:expense_tracker/model/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expense_items.dart';
import 'package:flutter/material.dart';
import 'package:expense_tracker/main.dart';

class ExpensesList extends StatelessWidget{
  ExpensesList({super.key, required this.expenses,required this.onRemoveExpense});

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  Widget build(context){
    return ListView.builder(
      itemCount:expenses.length, 
      itemBuilder:(context,index) => Dismissible(
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(.75),
          margin: EdgeInsets.symmetric(
            horizontal: Theme.of(context).cardTheme.margin!.horizontal,
            ),
        ),
        key:ValueKey(expenses[index]), 
        onDismissed:(direction){
          onRemoveExpense(expenses[index]);
        } ,
        child: ExpenseItems(expenses[index]))
      );
  }
}