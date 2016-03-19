.class final Lhhw;
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
        "Lkhh;",
        "Lkhj;",
        "Lkhx;",
        "Lkhy;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 77
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a(Lkii;[Lkhf;)Lkko;
    .locals 1

    .prologue
    .line 107
    new-instance v0, Lkkg;

    invoke-direct {v0}, Lkkg;-><init>()V

    .line 108
    iput-object p0, v0, Lkkg;->a:Lkii;

    .line 109
    iput-object p1, v0, Lkkg;->b:[Lkhf;

    .line 110
    invoke-static {v0}, Lhhw;->a(Lkkg;)Lkko;

    move-result-object v0

    return-object v0
.end method

.method private static a(Lkkg;)Lkko;
    .locals 1

    .prologue
    .line 114
    new-instance v0, Lkko;

    invoke-direct {v0}, Lkko;-><init>()V

    .line 115
    iput-object p0, v0, Lkko;->g:Lkkg;

    .line 116
    return-object v0
.end method


# virtual methods
.method public synthetic a(Llyi;)Lkko;
    .locals 4

    .prologue
    .line 77
    check-cast p1, Lkhh;

    .line 3081
    iget-object v1, p1, Lkhh;->c:Lkii;

    iget-object v0, p1, Lkhh;->a:Lkhf;

    if-nez v0, :cond_0

    .line 3082
    iget-object v0, p1, Lkhh;->d:[Lkhf;

    .line 3081
    :goto_0
    invoke-static {v1, v0}, Lhhw;->a(Lkii;[Lkhf;)Lkko;

    move-result-object v0

    .line 77
    return-object v0

    .line 3082
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lkhf;

    const/4 v2, 0x0

    iget-object v3, p1, Lkhh;->a:Lkhf;

    aput-object v3, v0, v2

    goto :goto_0
.end method

.method public synthetic a(Llyi;Llyi;)Lkko;
    .locals 5

    .prologue
    .line 77
    check-cast p1, Lkhx;

    check-cast p2, Lkhy;

    .line 1094
    new-instance v1, Lkkg;

    invoke-direct {v1}, Lkkg;-><init>()V

    .line 1095
    iget-object v0, p2, Lkhy;->a:Lkii;

    iput-object v0, v1, Lkkg;->a:Lkii;

    .line 1096
    iget-object v0, p1, Lkhx;->c:[Ljava/lang/String;

    array-length v0, v0

    new-array v2, v0, [Lkkd;

    .line 1097
    const/4 v0, 0x0

    :goto_0
    iget-object v3, p1, Lkhx;->c:[Ljava/lang/String;

    array-length v3, v3

    if-ge v0, v3, :cond_0

    .line 1098
    new-instance v3, Lkkd;

    invoke-direct {v3}, Lkkd;-><init>()V

    aput-object v3, v2, v0

    .line 1099
    aget-object v3, v2, v0

    iget-object v4, p1, Lkhx;->a:Ljava/lang/String;

    iput-object v4, v3, Lkkd;->a:Ljava/lang/String;

    .line 1097
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1101
    :cond_0
    iput-object v2, v1, Lkkg;->c:[Lkkd;

    .line 1102
    invoke-static {v1}, Lhhw;->a(Lkkg;)Lkko;

    move-result-object v0

    .line 77
    return-object v0
.end method

.method public synthetic b(Llyi;)Lkko;
    .locals 4

    .prologue
    .line 77
    check-cast p1, Lkhj;

    .line 2087
    iget-object v1, p1, Lkhj;->b:Lkii;

    iget-object v0, p1, Lkhj;->a:Lkhf;

    if-nez v0, :cond_0

    .line 2088
    iget-object v0, p1, Lkhj;->c:[Lkhf;

    .line 2087
    :goto_0
    invoke-static {v1, v0}, Lhhw;->a(Lkii;[Lkhf;)Lkko;

    move-result-object v0

    .line 77
    return-object v0

    .line 2088
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Lkhf;

    const/4 v2, 0x0

    iget-object v3, p1, Lkhj;->a:Lkhf;

    aput-object v3, v0, v2

    goto :goto_0
.end method
