#by rahmatsobrian
#this is for manual hook mode build only
#for kernel 4.9, other version? idk
#just my additional files for easier to build my kernel
#so this is not public consumption
#run this patch on your root kernel directory

KERNEL_DIR="$(dirname "$PWD")"

#main code for root function
cp exec.c "$KERNEL_DIR/fs" 
cp stat.c "$KERNEL_DIR/fs" 
cp open.c "$KERNEL_DIR/fs"  
cp read_write.c "$KERNEL_DIR/fs"  

#main code for umount modules function
cp namespace.c "$KERNEL_DIR/fs" 

#main code for fix failed to execute pm in terminal function
cp inode.c "$KERNEL_DIR/fs/devpts"

#main code for modules function
cp hooks.c "$KERNEL_DIR/security/selinux "

#main code for safe mode function
cp input.c "$KERNEL_DIR/drivers/input"

#main code for enable ksu function
cp rolex_defconfig "$KERNEL_DIR/arch/arm64/configs"