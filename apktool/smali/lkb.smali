.class public final Llkb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llkb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llka;

.field public b:Llkc;

.field public c:Llkd;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 2906
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3911
    iput-object v0, p0, Llkb;->a:Llka;

    .line 3912
    iput-object v0, p0, Llkb;->b:Llkc;

    .line 3913
    iput-object v0, p0, Llkb;->c:Llkd;

    .line 3914
    iput-object v0, p0, Llkb;->eD:Llyd;

    .line 3915
    const/4 v0, -0x1

    iput v0, p0, Llkb;->eE:I

    .line 2908
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 3957
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3958
    sparse-switch v0, :sswitch_data_0

    .line 3962
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3963
    :sswitch_0
    return-object p0

    .line 3968
    :sswitch_1
    iget-object v0, p0, Llkb;->a:Llka;

    if-nez v0, :cond_1

    .line 3969
    new-instance v0, Llka;

    invoke-direct {v0}, Llka;-><init>()V

    iput-object v0, p0, Llkb;->a:Llka;

    .line 3971
    :cond_1
    iget-object v0, p0, Llkb;->a:Llka;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3975
    :sswitch_2
    iget-object v0, p0, Llkb;->b:Llkc;

    if-nez v0, :cond_2

    .line 3976
    new-instance v0, Llkc;

    invoke-direct {v0}, Llkc;-><init>()V

    iput-object v0, p0, Llkb;->b:Llkc;

    .line 3978
    :cond_2
    iget-object v0, p0, Llkb;->b:Llkc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3982
    :sswitch_3
    iget-object v0, p0, Llkb;->c:Llkd;

    if-nez v0, :cond_3

    .line 3983
    new-instance v0, Llkd;

    invoke-direct {v0}, Llkd;-><init>()V

    iput-object v0, p0, Llkb;->c:Llkd;

    .line 3985
    :cond_3
    iget-object v0, p0, Llkb;->c:Llkd;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3958
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 2922
    iget-object v0, p0, Llkb;->a:Llka;

    if-eqz v0, :cond_0

    .line 2923
    const/4 v0, 0x1

    iget-object v1, p0, Llkb;->a:Llka;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2925
    :cond_0
    iget-object v0, p0, Llkb;->b:Llkc;

    if-eqz v0, :cond_1

    .line 2926
    const/4 v0, 0x2

    iget-object v1, p0, Llkb;->b:Llkc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2928
    :cond_1
    iget-object v0, p0, Llkb;->c:Llkd;

    if-eqz v0, :cond_2

    .line 2929
    const/4 v0, 0x3

    iget-object v1, p0, Llkb;->c:Llkd;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2931
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2932
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 2936
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2937
    iget-object v1, p0, Llkb;->a:Llka;

    if-eqz v1, :cond_0

    .line 2938
    const/4 v1, 0x1

    iget-object v2, p0, Llkb;->a:Llka;

    .line 2939
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2941
    :cond_0
    iget-object v1, p0, Llkb;->b:Llkc;

    if-eqz v1, :cond_1

    .line 2942
    const/4 v1, 0x2

    iget-object v2, p0, Llkb;->b:Llkc;

    .line 2943
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2945
    :cond_1
    iget-object v1, p0, Llkb;->c:Llkd;

    if-eqz v1, :cond_2

    .line 2946
    const/4 v1, 0x3

    iget-object v2, p0, Llkb;->c:Llkd;

    .line 2947
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2949
    :cond_2
    return v0
.end method
