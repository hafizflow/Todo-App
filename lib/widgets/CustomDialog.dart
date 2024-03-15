import 'package:flutter/material.dart';

class CustomDialog extends StatelessWidget {
  const CustomDialog({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final mq = MediaQuery.of(context).size;
    return Dialog(
      backgroundColor: Colors.transparent,
      elevation: 0,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.white.withOpacity(0.3),
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
          height: mq.height * .55,
          width: mq.width * .8,
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: mq.height * 0.025,
              horizontal: mq.width * 0.08,
            ),
            child: Column(
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
                const SizedBox(height: 10),
                const CustomTextField(hint: 'Enter a task'),
                const SizedBox(height: 60),
                const Text(
                  'Due Date',
                  style: TextStyle(
                    color: Colors.white70,
                    fontSize: 18,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(height: 10),
                const CustomTextField(
                  readOnly: true,
                  hint: 'Enter Date',
                  icon: Icons.calendar_today,
                ),
                const SizedBox(height: 10),
                const CustomTextField(
                  readOnly: true,
                  hint: 'Enter Time',
                  icon: Icons.timer,
                ),
                const SizedBox(height: 35),
                SizedBox(
                  width: double.infinity,
                  height: 45,
                  child: ElevatedButton(
                    onPressed: () {},
                    child: const Text('Create', style: TextStyle(fontSize: 16)),
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class CustomTextField extends StatelessWidget {
  final String hint;
  final IconData? icon;
  final void Function()? onTap;
  final bool readOnly;
  const CustomTextField({
    super.key,
    required this.hint,
    this.icon,
    this.onTap,
    this.readOnly = false,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 45,
      child: TextField(
        style: const TextStyle(color: Colors.white),
        readOnly: readOnly,
        decoration: InputDecoration(
          suffixIcon: InkWell(
            onTap: onTap,
            child: Icon(icon, color: Colors.white60),
          ),
          hintText: hint,
          hintStyle: const TextStyle(
            color: Colors.white60,
          ),
        ),
      ),
    );
  }
}
