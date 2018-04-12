contract C {
    function f() public pure {}
    constructor() public {
        C c = this;
        c.f();
        this.f();
        (this).f();
    }
}
// ----
// Warning: c.f() should cause a warning as well.
// Warning: (80-84): "this" used in constructor.
// Warning: (99-103): "this" used in constructor.
