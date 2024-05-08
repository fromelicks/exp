old_name="golang.org/x/exp"
default_new_name="github.com/fromelicks/exp"
new_name="${1:-$default_new_name}"

find . -name '*.go' -print0 |
    xargs -0 sed -i -e "s|$old_name|$new_name|"
