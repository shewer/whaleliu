CUR_DIR = $$( shell pwd )
TARGET = $$( Rime ) 
#TARGETFILE= $(shell (ls *.yaml )
DEPLOY="${ Rime_dir }/WeaselDeployer.exe"
%.yaml: %.yaml
	@echo ======= file $<   target $@
#	@cp $< $@

PHONY: all
all:  $(TARGET)/*.yaml

PHONY: test
test:
#	source  ~/porj/rime
	@echo $$( Rime_dir )
	@echo cur_pwd: $(CUR_DIR) 
	@echo Target: $( TARGET )
	@echo Rime_dir :  $( Rime_dir ) 
	@echo DEPLOY: $(DEPLOY)
	@echo WINTMP: $(WINTMP)

PHONY: deploy
deploy:
	@echo ---- deploy -----
	$(DEPOLY) /deploy
	find $(WINTMP)/rime* 


