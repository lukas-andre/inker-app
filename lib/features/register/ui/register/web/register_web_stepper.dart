import 'package:flutter/material.dart';
import 'package:inker_studio/utils/responsive/responsive_breakpoints.dart';

class RegisterWebStepper extends StatelessWidget {
  final int currentStep;
  final int totalSteps;
  final List<String> stepTitles;

  const RegisterWebStepper({
    super.key,
    required this.currentStep,
    required this.totalSteps,
    required this.stepTitles,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Responsive.value(context, mobile: 16, tablet: 24, desktop: 32),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: List.generate(
          totalSteps,
          (index) => _buildStep(context, index),
        ),
      ),
    );
  }

  Widget _buildStep(BuildContext context, int index) {
    final isActive = index == currentStep;
    final isCompleted = index < currentStep;
    final isLast = index == totalSteps - 1;

    return Row(
      children: [
        _StepIndicator(
          stepNumber: index + 1,
          title: index < stepTitles.length ? stepTitles[index] : '',
          isActive: isActive,
          isCompleted: isCompleted,
        ),
        if (!isLast)
          _StepConnector(
            isCompleted: isCompleted,
          ),
      ],
    );
  }
}

class _StepIndicator extends StatelessWidget {
  final int stepNumber;
  final String title;
  final bool isActive;
  final bool isCompleted;

  const _StepIndicator({
    required this.stepNumber,
    required this.title,
    required this.isActive,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        AnimatedContainer(
          duration: const Duration(milliseconds: 300),
          width: 40,
          height: 40,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: isActive || isCompleted
                ? primaryColor
                : Colors.grey.shade300,
            border: Border.all(
              color: isActive ? primaryColor : Colors.transparent,
              width: 2,
            ),
          ),
          child: Center(
            child: isCompleted
                ? const Icon(
                    Icons.check,
                    color: Colors.white,
                    size: 20,
                  )
                : Text(
                    stepNumber.toString(),
                    style: TextStyle(
                      color: isActive || isCompleted
                          ? Colors.white
                          : Colors.grey.shade600,
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                    ),
                  ),
          ),
        ),
        if (title.isNotEmpty)
          Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Text(
              title,
              style: TextStyle(
                fontSize: Responsive.fontSize(context, 12),
                color: isActive
                    ? primaryColor
                    : isCompleted
                        ? Colors.grey.shade700
                        : Colors.grey.shade500,
                fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
              ),
            ),
          ),
      ],
    );
  }
}

class _StepConnector extends StatelessWidget {
  final bool isCompleted;

  const _StepConnector({
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    final primaryColor = Theme.of(context).primaryColor;
    
    return Container(
      width: 60,
      height: 2,
      margin: const EdgeInsets.symmetric(horizontal: 8),
      decoration: BoxDecoration(
        color: isCompleted ? primaryColor : Colors.grey.shade300,
        borderRadius: BorderRadius.circular(1),
      ),
    );
  }
}