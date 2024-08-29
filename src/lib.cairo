
pub type U32String = u32;

pub struct Root {
    items: Array<ModContainer>,
}

pub struct ModContainer {
    Mod : Option<Mod>,
    Enum : Option<Enum>,
}

pub struct Mod {
    ident: U32String
}

pub struct Struct {
    ident: U32String
}

pub struct Enum {
    ident: U32String,
    //attrs: Array<EnumAttrs>
    variants: EnumVariants
}

pub struct EnumVariantObj {
    ident: Option<U32String>
}

pub struct EnumVariants {
    inner: Array<Array<EnumVariantObj>>
}

pub struct Type {}


fn main() -> u32 {
    fib(16)
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

fn fib(mut n: u32) -> u32 {
    let mut a: u32 = 0;
    let mut b: u32 = 1;
    while n != 0 {
        n = n - 1;
        let temp = b;
        b = a + b;
        a = temp;
    };
    a
}

#[cfg(test)]
mod tests {
    use super::fib;

    #[test]
    fn it_works() {
        assert(fib(16) == 987, 'it works!');
    }
}
