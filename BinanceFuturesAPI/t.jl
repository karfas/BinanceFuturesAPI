module A
    struct A1 end
    foo() = "foo"
    foo_v = "foo"
    p() = foo() |> println
    export foo, p
    export A1
end

module B
    using Main.A
    export p, A1
end

using .B

struct