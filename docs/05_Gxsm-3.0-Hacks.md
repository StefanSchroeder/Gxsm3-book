# GXSM Tips and Tricks {#cha:Gxsm-hacks}

## Running Two Instances of GXSM

Problem

:   \
    You want to run a second instance of GXSM without interfering with a
    running measurement.

Underlying issue

:   \
    Because of GXSM's and glib's new application management, any attempt
    to start a new instance on the same user session/account will *not*
    spawn a new process per default, but connect to an existing GXSM
    process -- no matter if the system is running with hardware
    connected or not.

    This is unfortunate in case that you want an independent process for
    just reviewing data on the same login/X11 display while running
    GXSM in data aquisition mode at the same time.

Solution

:   \
    Follow these steps:

      -------- ------------------------------------------------------------
      Step 1   Create a new user account. As root run `#adduser alice`
      Step 2   Setup a password for the new user.
      Step 3   Run as the new user: `$ssh -X alice@localhost gxsm3 -h no`
      Note:    SSHD must be configured to allow X11-forwarding.
      -------- ------------------------------------------------------------
