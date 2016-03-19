.class public final Lkej;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkej;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljxw;

.field public b:Lkfp;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 36754
    invoke-direct {p0}, Llyb;-><init>()V

    .line 37759
    iput-object v0, p0, Lkej;->a:Ljxw;

    .line 37760
    iput-object v0, p0, Lkej;->b:Lkfp;

    .line 37761
    iput-object v0, p0, Lkej;->eD:Llyd;

    .line 37762
    const/4 v0, -0x1

    iput v0, p0, Lkej;->eE:I

    .line 36756
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 37797
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 37798
    sparse-switch v0, :sswitch_data_0

    .line 37802
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 37803
    :sswitch_0
    return-object p0

    .line 37808
    :sswitch_1
    iget-object v0, p0, Lkej;->a:Ljxw;

    if-nez v0, :cond_1

    .line 37809
    new-instance v0, Ljxw;

    invoke-direct {v0}, Ljxw;-><init>()V

    iput-object v0, p0, Lkej;->a:Ljxw;

    .line 37811
    :cond_1
    iget-object v0, p0, Lkej;->a:Ljxw;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 37815
    :sswitch_2
    iget-object v0, p0, Lkej;->b:Lkfp;

    if-nez v0, :cond_2

    .line 37816
    new-instance v0, Lkfp;

    invoke-direct {v0}, Lkfp;-><init>()V

    iput-object v0, p0, Lkej;->b:Lkfp;

    .line 37818
    :cond_2
    iget-object v0, p0, Lkej;->b:Lkfp;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 37798
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
    .line 36769
    iget-object v0, p0, Lkej;->a:Ljxw;

    if-eqz v0, :cond_0

    .line 36770
    const/4 v0, 0x1

    iget-object v1, p0, Lkej;->a:Ljxw;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 36772
    :cond_0
    iget-object v0, p0, Lkej;->b:Lkfp;

    if-eqz v0, :cond_1

    .line 36773
    const/4 v0, 0x2

    iget-object v1, p0, Lkej;->b:Lkfp;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 36775
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 36776
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 36780
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 36781
    iget-object v1, p0, Lkej;->a:Ljxw;

    if-eqz v1, :cond_0

    .line 36782
    const/4 v1, 0x1

    iget-object v2, p0, Lkej;->a:Ljxw;

    .line 36783
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36785
    :cond_0
    iget-object v1, p0, Lkej;->b:Lkfp;

    if-eqz v1, :cond_1

    .line 36786
    const/4 v1, 0x2

    iget-object v2, p0, Lkej;->b:Lkfp;

    .line 36787
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 36789
    :cond_1
    return v0
.end method
