#!/bin/bash
cd /home/kavia/workspace/code-generation/expense-management-and-analytics-system-250556-250572/expense_frontend
npm run lint
ESLINT_EXIT_CODE=$?
npm run build
BUILD_EXIT_CODE=$?
if [ $ESLINT_EXIT_CODE -ne 0 ] || [ $BUILD_EXIT_CODE -ne 0 ]; then
   exit 1
fi

