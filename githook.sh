#!/bin/bash



    makePreCommitMessage(){

        rm -rf .git/hooks/commit-msg
        touch .git/hooks/commit-msg

        echo "#!/bin/sh " >> .git/hooks/commit-msg

        echo "# An example hook script to check the commit log message." >> .git/hooks/commit-msg
        echo "# Called by \"git commit\" with one argument, the name of the file" >> .git/hooks/commit-msg
        echo "# that has the commit message.  The hook should exit with non-zero" >> .git/hooks/commit-msg
        echo "# status after issuing an appropriate message if it wants to stop the" >> .git/hooks/commit-msg
        echo "# commit.  The hook is allowed to edit the commit message file." >> .git/hooks/commit-msg
        echo "#" >> .git/hooks/commit-msg
        echo "# To enable this hook, rename this file to \"commit-msg\"." >> .git/hooks/commit-msg
        echo "" >> .git/hooks/commit-msg
        echo "# Uncomment the below to add a Signed-off-by line to the message." >> .git/hooks/commit-msg
        echo "# Doing this in a hook is a bad idea in general, but the prepare-commit-msg" >> .git/hooks/commit-msg
        echo "# hook is more suited to it." >> .git/hooks/commit-msg
        echo "#" >> .git/hooks/commit-msg
        echo "# SOB=\$(git var GIT_AUTHOR_IDENT | sed -n 's/^\(.*>\).*$/Signed-off-by: \1/p')" >> .git/hooks/commit-msg
        echo "# grep -qs \"^\$SOB\" \"\$1\" || echo \"\$SOB\" >> \"\$1\"" >> .git/hooks/commit-msg
        echo "" >> .git/hooks/commit-msg
        echo "# This example catches duplicate Signed-off-by lines." >> .git/hooks/commit-msg
        echo "" >> .git/hooks/commit-msg
        echo "# regex to validate in commit msg" >> .git/hooks/commit-msg
        echo "" >> .git/hooks/commit-msg

        echo "while read line; do" >> .git/hooks/commit-msg
        echo "    if [ \${#line} -le 25 ]; then" >> .git/hooks/commit-msg
        echo "        echo >&2 Mensagem de commit deve conter 15 ou mais caracteres." >> .git/hooks/commit-msg
        echo "        exit 1" >> .git/hooks/commit-msg
        echo "    fi" >> .git/hooks/commit-msg
        echo "done < \"\${1}\"" >> .git/hooks/commit-msg

        echo "" >> .git/hooks/commit-msg
        echo "" >> .git/hooks/commit-msg
        echo "test \"\" != \"\$(egrep '[#]\b[a-zA-Z]{2,}-[1-9][0-9]*\b[#]' \"\$1\")\" || {" >> .git/hooks/commit-msg
        echo "    echo >&2 \"A mensagem do commit deve conter o código da atividade do JIRA\"." >> .git/hooks/commit-msg
        echo "  echo >&2 \"Ex: \\n#BL-1234# mensagem do commit\"." >> .git/hooks/commit-msg
        echo "  exit 1" >> .git/hooks/commit-msg
        echo "}" >> .git/hooks/commit-msg
    }

    makePreCommitMessage