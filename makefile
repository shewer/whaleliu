CUR_DIR = $(shell pwd)
OBJECT= $(shell ls $Rime/*.yaml)
TARGET = $(Rime) 
#TARGETFILE= $(shell (ls *.yaml )
DEPLOY="WeaselDeployer.exe"

#default: test
all: $(shell ls *.yaml)
$(Rime)/%.schema.yaml: ./%.schema.yaml
/home/shewer/home/AppData/Roaming/Rime/%.schema.yaml: %.schema.yaml
	@echo ===-------%%%==== file $<   target $@
#	@cp $< $@

#PHONY: all
#all:  $(TARGET)/*.yaml
#$(Rime)/cangjie5liu.schema.yaml: cangjie5liu.schema.yaml
	@echo ======= file $<   target $@
#	@cp $< $@

.PHONY: test
test:
	@echo Rime_dir: "$(Rime_dir)"
	@echo cur_pwd: $(CUR_DIR) 
	@echo Target: $(TARGET)
	@echo DEPLOY: $(DEPLOY)
	@echo WINTMP: $(WINTMP)
	@echo objfile: $(OBJECT)

PHONY: deploy
deploy:
#@echo ---- $(DEPLOY) -----
	"$(Rime_dir)/$(DEPLOY)"  /deploy
	find $(WINTMP)/rime* 


