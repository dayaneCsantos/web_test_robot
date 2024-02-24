TEST_DIR = tests
RESULTS_DIR = results

test:
		if [ ! -d "$(RESULTS_DIR)" ]; then \
				mkdir $(RESULTS_DIR); \
		fi
		robot --outputdir $(RESULTS_DIR) $(TEST_DIR)
