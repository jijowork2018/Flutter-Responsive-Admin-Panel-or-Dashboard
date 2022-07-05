import 'package:admin/backend/backend.dart';
import 'package:admin/backend/schema/transaction_record.dart';
import 'package:admin/responsive.dart';
import 'package:admin/screens/transactions/add_transactions_widget.dart';
import 'package:data_table_2/data_table_2.dart';
import 'package:flutter/material.dart';

import '../../../constants.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({
    Key key,
    this.transactionType,
    this.limit,
  }) : super(key: key);

  final int limit;
  final String transactionType;

  @override
  Widget build(BuildContext context) {
    return StreamBuilder<List<TransactionsRecord>>(
        stream: queryTransactionsRecord(
            queryBuilder: (transactionsRecord) => transactionType == null
                ? transactionsRecord
                : transactionsRecord.where("type", isEqualTo: transactionType),
            limit: limit ?? 0),
        builder: (context, snapshot) {
          // Customize what your widget looks like when it's loading.
          if (!snapshot.hasData) {
            return Center(
              child: SizedBox(
                width: 25,
                height: 25,
                child: CircularProgressIndicator(
                  color: primaryColor,
                ),
              ),
            );
          }
          List<TransactionsRecord> columnTransactionsRecordList = snapshot.data;
          return Container(
              height: MediaQuery.of(context).size.height * .5,
              child: SingleChildScrollView(
                  child: Container(
                padding: EdgeInsets.all(defaultPadding),
                decoration: BoxDecoration(
                  color: secondaryColor,
                  borderRadius: const BorderRadius.all(Radius.circular(10)),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Transactions",
                          style: Theme.of(context).textTheme.subtitle1,
                        ),
                        ElevatedButton.icon(
                          style: TextButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              horizontal: defaultPadding * 1.5,
                              vertical: defaultPadding /
                                  (Responsive.isMobile(context) ? 2 : 1),
                            ),
                          ),
                          onPressed: () async {
                            await showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return Padding(
                                  padding: MediaQuery.of(context).viewInsets,
                                  child: Container(
                                    height: MediaQuery.of(context).size.height *
                                        0.6,
                                    child: AddTransactionsWidget(
                                      type: transactionType,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                          icon: Icon(Icons.add),
                          label: Text("Add New"),
                        ),
                      ],
                    ),
                    SizedBox(
                      width: double.infinity,
                      height: MediaQuery.of(context).size.height,
                      child: DataTable2(
                        columnSpacing: defaultPadding,
                        minWidth: 600,
                        columns: [
                          DataColumn(
                            label: Text("Date"),
                          ),
                          DataColumn(
                            label: Text("Name"),
                          ),
                          DataColumn(
                            label: Text("Type"),
                          ),
                          DataColumn(
                            label: Text("Description"),
                          ),
                        ],
                        rows: List.generate(
                          columnTransactionsRecordList.length,
                          (index) => recentTransactionDataRow(
                              columnTransactionsRecordList[index]),
                        ),
                      ),
                    ),
                  ],
                ),
              )));
        });
  }

  DataRow recentTransactionDataRow(TransactionsRecord fileInfo) {
    return DataRow(
      cells: [
        DataCell(
          Row(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: defaultPadding),
                child: Text(fileInfo.date.day.toString() +
                    '-' +
                    fileInfo.date.month.toString() +
                    '-' +
                    fileInfo.date.year.toString()),
              ),
            ],
          ),
        ),
        DataCell(Text(fileInfo.name)),
        DataCell(Text(fileInfo.type.toString())),
        DataCell(Text(fileInfo.description)),
      ],
    );
  }
}
