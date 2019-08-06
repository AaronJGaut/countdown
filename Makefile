LOCAL_INSTALL_PATH = ${HOME}/.local/bin

default:
	@echo "No default target. Use make install_local to install to ${LOCAL_INSTALL_PATH}"
	@exit 2
.PHONY: default

install_local: $(LOCAL_INSTALL_PATH)/countdown
.PHONY: install_local

$(LOCAL_INSTALL_PATH)/countdown : countdown | $(LOCAL_INSTALL_PATH)
	cp countdown $@

$(LOCAL_INSTALL_PATH):
	mkdir -p $@

countdown:
	$(error missing file "$@")
