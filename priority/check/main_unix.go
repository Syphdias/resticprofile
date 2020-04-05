//+build !windows,!linux

package main

import (
	"fmt"
	"os"

	"golang.org/x/sys/unix"
)

// This is only displaying the priority of the current process (for testing)
func main() {
	pid := unix.Getpid()
	pri, err := unix.Getpriority(unix.PRIO_PROCESS, pid)
	if err != nil {
		fmt.Println(err)
		os.Exit(1)
	}
	fmt.Printf("Priority: %d\n", pri)
}
