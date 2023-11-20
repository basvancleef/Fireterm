# Artisan
alias a="php artisan"
alias tink="php artisan tinker"
alias serve="php artisan serve"
alias migrate="php artisan migrate"
alias cc="php artisan cache:clear"

alias log="open storage/logs/laravel-$(date '+%Y-%m-%d').log"

# Composer
alias composer="COMPOSER_MEMORY_LIMIT=-1 composer"
alias compsoer="composer"
alias cu="composer update"
alias ci="composer install"
alias cda="composer dump-autoload"

# Git
alias pull="git pull --autostash"
alias push="git push"
alias commit="git commit"
alias checkout="git checkout"
alias master="git checkout master"
alias main="git checkout main"
alias remote="git remote -v"
alias fixup="git commit --fixup"

# Functions
dev() {
        _FILTER="$1"

        if [ -f "pnpm-lock.yaml" ]; then
                if [ -z "$_FILTER" ]; then
                        pnpm dev
                else
                        pnpm --filter="$1" dev
                fi
        else
                npm run dev
        fi
}