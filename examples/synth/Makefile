WORKSPACE_DIR = /home/vivado/workspace

default:
	docker run --rm --pid=host -v $(PWD):$(WORKSPACE_DIR) -w $(WORKSPACE_DIR) "vivado" bash --login synth.sh

clean:
	-rm *.jou *.log netlist.v
