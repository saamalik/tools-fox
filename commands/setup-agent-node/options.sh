# Generated by stubbs:add-option. Do not edit, if using stubbs.
# Created: Wed Jul 29 23:18:16 PDT 2015
#
#/ usage: tools-fox:setup-agent-node  --host <> 

# _rerun_options_parse_ - Parse the command arguments and set option variables.
#
#     rerun_options_parse "$@"
#
# Arguments:
#
# * the command options and their arguments
#
# Notes:
# 
# * Sets shell variables for any parsed options.
# * The "-?" help argument prints command usage and will exit 2.
# * Return 0 for successful option parse.
#
rerun_options_parse() {

    while [ "$#" -gt 0 ]; do
        OPT="$1"
        case "$OPT" in
            --host) rerun_option_check $# $1; HOST=$2 ; shift ;;
            # help option
            -|--*?)
                rerun_option_usage
                exit 2
                ;;
            # end of options, just arguments left
            *)
              break
        esac
        shift
    done

    # Set defaultable options.

    # Check required options are set
    [ -z "$HOST" ] && { echo >&2 "missing required option: --host" ; return 2 ; }
    # If option variables are declared exportable, export them.

    #
    return 0
}


# If not already set, initialize the options variables to null.
: ${HOST:=}

