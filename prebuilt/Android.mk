# CREATE NVSI SYMLINK
$(shell mkdir -p $(OUT)/system/etc/permissions)
$(shell ln -f -s /data/data/com.nvidia.NvCPLSvc/files/com.nvidia.nvsiutilv1.xml $(OUT)/system/etc/permissions/com.nvidia.nvsiutilv1.xml)

