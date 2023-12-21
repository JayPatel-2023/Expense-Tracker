import 'package:expense_tracker/services/Models/expense.dart';
import 'package:expense_tracker/widgets/expense_item.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({
    super.key, 
    required this.expenses,
    required this.onRemoveExpense
  });

  final List<Expense> expenses;
  final void Function(Expense expense) onRemoveExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) => Dismissible(
        // To remove the item from list using swipe left/right
        key: ValueKey(expenses[index]),
        background: Container(
          color: Theme.of(context).colorScheme.error.withOpacity(0.75), // apply the error color which taken from materialApp colorScheme
          margin: EdgeInsets.symmetric(
            horizontal: Theme.of(context).cardTheme.margin!.horizontal
          ),  // apply the horizontal margin which taken from materialApp cardTheme margin
        ),
        onDismissed: (direction) => onRemoveExpense(expenses[index]) , 
        child: ExpenseItem(expenses[index]),
      ),
    );
  }
}
