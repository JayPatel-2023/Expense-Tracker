import 'package:flutter/material.dart';

import 'package:expense_tracker/widgets/expense_list/expenses_list.dart';
import 'package:expense_tracker/widgets/expense_list/new_expense.dart';
import 'package:expense_tracker/services/Models/expense.dart';
import 'package:expense_tracker/widgets/chart/chart.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Flutter Course',
        amount: 19.99,
        date: DateTime.now(),
        category: Category.work),
    Expense(
        title: 'Cinema',
        amount: 15.69,
        date: DateTime.now(),
        category: Category.leisure),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled:
          true, // it takes full screen size for creating new expense
      context: context,
      builder: (ctx) => NewExpense(onAddExpense: _addExpense),
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _registeredExpenses.indexOf(expense);
    setState(() {
      _registeredExpenses.remove(expense);
    });

    ScaffoldMessenger.of(context)
        .clearSnackBars(); // For multiple deletaion remove previous message
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      // Show bottam message with recover option for deleted expense
      duration: const Duration(seconds: 3),
      content: const Text('Expense deleted.'),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {
          setState(() {
            _registeredExpenses.insert(expenseIndex, expense);
          });
        },
      ),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final width = MediaQuery.of(context).size.width;  

    // No Expenses
    Widget mainContent = const Center(
      child: Text('No expenses found.Start adding some!'),
    );

    // Expenses are in list
    if (_registeredExpenses.isNotEmpty) {
      mainContent = ExpensesList(
          expenses: _registeredExpenses, onRemoveExpense: _removeExpense);
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Expense Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay,
            icon: const Icon(Icons.add),
          ),
        ],
      ),
      body: width < 600 
      ? Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Chart(expenses: _registeredExpenses),
            Expanded(child: mainContent), // Condition for showing Expenses
          ],
        ) 
      : Row(
          children: [
            Expanded(child: Chart(expenses: _registeredExpenses)),
            Expanded(child: mainContent), // Condition for showing Expenses
          ], 
        ),
    );
  }
}
