Linux Ownership + Permissions

Ownership

Check ownership:

ls -ld folder

Example:

ls -ld company_lab/company/finance

Output idea:

drwxrwxr-x ali salman

Read:

drwxrwxr-x → permissions
ali → owner
salman → group


Create user:

sudo useradd username

Examples:

sudo useradd ali
sudo useradd hamza
sudo useradd zain


Change owner:

sudo chown username folder

Examples:

sudo chown ali company_lab/company/finance
sudo chown hamza company_lab/company/support
sudo chown zain company_lab/company/IT


Pattern:

Check owner
↓
Change owner
↓
Verify owner

Example:

ls -ld company_lab/company/finance

sudo chown ali company_lab/company/finance

ls -ld company_lab/company/finance


Delete user:

sudo userdel username

Example:

sudo userdel ali


Important discovery:

Linux uses UID internally

Example:

mike → UID 1002

If mike owns a folder and mike is deleted:

sudo userdel mike

Owner may become:

1002

Linux still remembers UID number


Permissions (chmod)

Numbers:

r = 4
w = 2
x = 1


Examples practiced:

760

owner = rwx
group = rw-
others = ---


755

owner = rwx
group = r-x
others = r-x


700

owner = rwx
group = ---
others = ---


640

owner = rw-
group = r--
others = ---


Commands:

sudo chmod 760 folder
sudo chmod 755 folder
sudo chmod 700 folder
sudo chmod 640 file


Important discovery:

700 blocked access

Example:

sudo chmod 700 company_lab/company/IT

Result:

Permission denied

Reason:

Only owner can access


Remove folders:

rm -r folder

Sometimes:

Permission denied

Use admin:

sudo rm -rf folder

-r → recursive
-f → force
sudo → admin/root
