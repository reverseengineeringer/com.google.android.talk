.class final Lhhp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhhm;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lhhm",
        "<",
        "Lkgo;",
        "Lkgq;",
        "Lkgt;",
        "Lkgu;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lkii;Lkgd;)Lkko;
    .locals 3

    .prologue
    .line 98
    new-instance v0, Lkjv;

    invoke-direct {v0}, Lkjv;-><init>()V

    .line 99
    iput-object p0, v0, Lkjv;->a:Lkii;

    .line 100
    const/4 v1, 0x1

    new-array v1, v1, [Lkgd;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    iput-object v1, v0, Lkjv;->b:[Lkgd;

    .line 101
    invoke-static {v0}, Lhhp;->a(Lkjv;)Lkko;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lkjv;)Lkko;
    .locals 1

    .prologue
    .line 105
    new-instance v0, Lkko;

    invoke-direct {v0}, Lkko;-><init>()V

    .line 106
    iput-object p0, v0, Lkko;->f:Lkjv;

    .line 107
    return-object v0
.end method


# virtual methods
.method public synthetic a(Llyi;)Lkko;
    .locals 2

    .prologue
    .line 71
    check-cast p1, Lkgo;

    .line 3076
    iget-object v0, p1, Lkgo;->b:Lkii;

    iget-object v1, p1, Lkgo;->a:Lkgd;

    invoke-static {v0, v1}, Lhhp;->a(Lkii;Lkgd;)Lkko;

    move-result-object v0

    .line 71
    return-object v0
.end method

.method public synthetic a(Llyi;Llyi;)Lkko;
    .locals 4

    .prologue
    .line 71
    check-cast p1, Lkgt;

    check-cast p2, Lkgu;

    .line 1087
    new-instance v0, Lkjv;

    invoke-direct {v0}, Lkjv;-><init>()V

    .line 1088
    iget-object v1, p2, Lkgu;->a:Lkii;

    iput-object v1, v0, Lkjv;->a:Lkii;

    .line 1089
    new-instance v1, Lkif;

    invoke-direct {v1}, Lkif;-><init>()V

    .line 1090
    iget-object v2, p1, Lkgt;->a:Ljava/lang/String;

    iput-object v2, v1, Lkif;->a:Ljava/lang/String;

    .line 1091
    iget-object v2, p1, Lkgt;->b:Ljava/lang/String;

    iput-object v2, v1, Lkif;->b:Ljava/lang/String;

    .line 1092
    const/4 v2, 0x1

    new-array v2, v2, [Lkif;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    iput-object v2, v0, Lkjv;->c:[Lkif;

    .line 1093
    invoke-static {v0}, Lhhp;->a(Lkjv;)Lkko;

    move-result-object v0

    .line 71
    return-object v0
.end method

.method public synthetic b(Llyi;)Lkko;
    .locals 2

    .prologue
    .line 71
    check-cast p1, Lkgq;

    .line 2081
    iget-object v0, p1, Lkgq;->b:Lkii;

    iget-object v1, p1, Lkgq;->a:Lkgd;

    invoke-static {v0, v1}, Lhhp;->a(Lkii;Lkgd;)Lkko;

    move-result-object v0

    .line 71
    return-object v0
.end method
