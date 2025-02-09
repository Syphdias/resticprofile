default {
    repository = "rest:http://user:password@localhost:8000/path"
    password-file = "key"
}

simple {
    inherit = "default"
    backup {
        exclude = "/**/.git"
        source = "/source"
    }
}

spaces {
    inherit = "default"
    password-file = "different key"
    backup {
        exclude = "My Documents"
        source = "/source dir"
    }
}

quotes {
    inherit = "default"
    backup {
        exclude = ["My'Documents", "My\"Documents"]
        source = ["/source'dir", "/source\"dir"]
    }
}

glob1 {
    inherit = "default"
    backup {
        exclude = ["[aA]*"]
        source = ["/source"]
    }
}

glob2 {
    inherit = "default"
    backup {
        exclude = ["examples/integration*"]
        source = ["examples/integration*"]
    }
}

mixed {
    inherit = "default"
    backup {
        source = ["/Côte d'Ivoire", "/path/with space; echo foo'"]
    }
}

fix {
    inherit = "default"
    password-file = "different\\ key"
    backup {
        exclude = "My\\ Documents"
        source = "/source\\ dir"
    }
}