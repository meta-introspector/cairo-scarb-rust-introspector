// -*-rust-*-
pub type U32String = u32;


#[derive(Copy, Drop)]
pub struct Root {
    r_items: Span<ModContainer>,
}

#[derive(Copy, Drop)]
pub struct ModContainer {
    c_mod : Option<Mod>,
    c_enum : Option<Enum>,
}

#[derive(Copy, Drop)]
pub struct Mod {
    ident: U32String
}

#[derive(Copy, Drop)]
pub struct Struct {
    ident: U32String
}

#[derive(Copy, Drop)]
pub struct Enum {
    ident: U32String,
    //attrs: Array<EnumAttrs>
    variants: EnumVariants
}

#[derive(Copy, Drop)]
pub struct EnumVariantObj {
    ident: Option<U32String>
}

#[derive(Copy, Drop)]
pub struct EnumVariants {
    inner: Span<Span<EnumVariantObj>>
}

#[derive(Copy, Drop)]
pub struct Type {}

fn foo (r: Root) -> Root {
    r
}

fn main() -> u32 {
    let mod1 =Option::None;
    let modcon=  ModContainer{ c_mod: mod1,      c_enum: Option::None,	    };
    let items = array![modcon];
//    items.append(modcon);
    let r = Root { r_items: items.span()    };
    foo(r);
    return 1;
}

// we want to say this type is defined as such, an alias
fn add_type(mut n: u32, n_type: u32, n_def: u32 ) -> u32 {
   let n = n + n_type;    
    let n = n + n_def;	//
    n
}

fn add_struct(mut n: u32, n_struct: u32 ) -> u32 {
    let n = n + n_struct;
    n
}

fn add_enum_variant_list(n_enum: u32, n_enum_variant_list: u32 ) -> u32 {
    let n_enum = n_enum + n_enum_variant_list; 
    n_enum
}

fn add_enum_variant_obj(n_enum_variant_list: u32, n_ident: u32 ) -> u32 {
    let n_enum_variant_list = n_enum_variant_list + n_ident;
    n_enum_variant_list
}


fn add_enum(mut n: u32, n_enum: u32 ) -> u32 {
    let n = n + n_enum;
    n
}


#[cfg(test)]
mod tests {
    use super::fib;

    #[test]
    fn it_works() {
        assert(fib(16) == 987, 'it works!');
    }
}
