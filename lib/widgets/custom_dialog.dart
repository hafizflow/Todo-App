import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:to_do_provider/provider/task_provider.dart';

import 'constom_text_field.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final taskProvider = Provider.of<TaskProvider>(context, listen: false);
    // for device size
    final mq = MediaQuery.of(context).size;

    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Dialog(
        backgroundColor: Colors.transparent,
        elevation: 0,
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: Colors.black.withOpacity(0.7),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                spreadRadius: 5,
                blurRadius: 20,
                offset: const Offset(0, 3),
              ),
            ],
          ),
          child: SizedBox(
            height: mq.height * .52,
            width: mq.width * .8,
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: mq.height * 0.03,
                horizontal: mq.width * 0.08,
              ),
              child: Consumer<TaskProvider>(
                builder: (context, taskProvider, _) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Align(
                        child: Text(
                          'New Task',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 22,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                      const SizedBox(height: 30),
                      const Text(
                        'What has to be done ?',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 16),
                      const CustomTextField(
                        hint: 'Enter a task',
                      ),
                      const SizedBox(height: 35),
                      const Text(
                        'Due Date',
                        style: TextStyle(
                          color: Colors.white70,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        readOnly: true,
                        hint: 'Enter Date',
                        icon: Icons.calendar_today,
                        onTap: () async {
                          DateTime? date = await showDatePicker(
                            firstDate: DateTime(2023),
                            lastDate: DateTime(2030),
                            initialDate: DateTime.now(),
                            context: context,
                          );
                        },
                      ),
                      const SizedBox(height: 16),
                      CustomTextField(
                        readOnly: true,
                        hint: 'Enter Time',
                        icon: Icons.timer,
                        onTap: () async {
                          TimeOfDay? time = await showTimePicker(
                            context: context,
                            initialTime: TimeOfDay.now(),
                          );
                        },
                      ),
                      const SizedBox(height: 24),
                      SizedBox(
                        width: double.infinity,
                        height: 45,
                        child: ElevatedButton(
                          onPressed: () {},
                          child: const Text(
                            'Create',
                            style: TextStyle(
                              fontSize: 16,
                              letterSpacing: 1,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                        ),
                      ),
                    ],
                  );
                },
              ),
            ),
          ),
        ),
      ),
    );
  }
}
