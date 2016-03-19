.class public final Liwc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liwc;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Liwd;

.field public b:Liwe;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 11036
    invoke-direct {p0}, Llyb;-><init>()V

    .line 12041
    iput-object v0, p0, Liwc;->a:Liwd;

    .line 12042
    iput-object v0, p0, Liwc;->b:Liwe;

    .line 12043
    iput-object v0, p0, Liwc;->eD:Llyd;

    .line 12044
    const/4 v0, -0x1

    iput v0, p0, Liwc;->eE:I

    .line 11038
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 12079
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 12080
    sparse-switch v0, :sswitch_data_0

    .line 12084
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 12085
    :sswitch_0
    return-object p0

    .line 12090
    :sswitch_1
    iget-object v0, p0, Liwc;->a:Liwd;

    if-nez v0, :cond_1

    .line 12091
    new-instance v0, Liwd;

    invoke-direct {v0}, Liwd;-><init>()V

    iput-object v0, p0, Liwc;->a:Liwd;

    .line 12093
    :cond_1
    iget-object v0, p0, Liwc;->a:Liwd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 12097
    :sswitch_2
    iget-object v0, p0, Liwc;->b:Liwe;

    if-nez v0, :cond_2

    .line 12098
    new-instance v0, Liwe;

    invoke-direct {v0}, Liwe;-><init>()V

    iput-object v0, p0, Liwc;->b:Liwe;

    .line 12100
    :cond_2
    iget-object v0, p0, Liwc;->b:Liwe;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 12080
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 11051
    iget-object v0, p0, Liwc;->a:Liwd;

    if-eqz v0, :cond_0

    .line 11052
    const/4 v0, 0x1

    iget-object v1, p0, Liwc;->a:Liwd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 11054
    :cond_0
    iget-object v0, p0, Liwc;->b:Liwe;

    if-eqz v0, :cond_1

    .line 11055
    const/4 v0, 0x2

    iget-object v1, p0, Liwc;->b:Liwe;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 11057
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 11058
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 11062
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 11063
    iget-object v1, p0, Liwc;->a:Liwd;

    if-eqz v1, :cond_0

    .line 11064
    const/4 v1, 0x1

    iget-object v2, p0, Liwc;->a:Liwd;

    .line 11065
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11067
    :cond_0
    iget-object v1, p0, Liwc;->b:Liwe;

    if-eqz v1, :cond_1

    .line 11068
    const/4 v1, 0x2

    iget-object v2, p0, Liwc;->b:Liwe;

    .line 11069
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 11071
    :cond_1
    return v0
.end method
