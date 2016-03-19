.class public final Liyy;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Liyy;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Lizs;

.field public apiHeader:Liyc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 31
    invoke-direct {p0}, Llyb;-><init>()V

    .line 32
    iput-object v0, p0, Liyy;->apiHeader:Liyc;

    .line 33
    iput-object v0, p0, Liyy;->a:Lizs;

    .line 34
    iput-object v0, p0, Liyy;->eD:Llyd;

    .line 35
    const/4 v0, -0x1

    iput v0, p0, Liyy;->eE:I

    .line 36
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 5
    invoke-virtual {p0, p1}, Liyy;->b(Llxy;)Liyy;

    move-result-object v0

    return-object v0
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 41
    iget-object v0, p0, Liyy;->apiHeader:Liyc;

    if-eqz v0, :cond_0

    .line 42
    const/4 v0, 0x1

    iget-object v1, p0, Liyy;->apiHeader:Liyc;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 44
    :cond_0
    iget-object v0, p0, Liyy;->a:Lizs;

    if-eqz v0, :cond_1

    .line 45
    const/4 v0, 0x2

    iget-object v1, p0, Liyy;->a:Lizs;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 47
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 48
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 52
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 53
    iget-object v1, p0, Liyy;->apiHeader:Liyc;

    if-eqz v1, :cond_0

    .line 54
    const/4 v1, 0x1

    iget-object v2, p0, Liyy;->apiHeader:Liyc;

    .line 55
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 57
    :cond_0
    iget-object v1, p0, Liyy;->a:Lizs;

    if-eqz v1, :cond_1

    .line 58
    const/4 v1, 0x2

    iget-object v2, p0, Liyy;->a:Lizs;

    .line 59
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 61
    :cond_1
    return v0
.end method

.method public b(Llxy;)Liyy;
    .locals 1

    .prologue
    .line 69
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 70
    sparse-switch v0, :sswitch_data_0

    .line 74
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 75
    :sswitch_0
    return-object p0

    .line 80
    :sswitch_1
    iget-object v0, p0, Liyy;->apiHeader:Liyc;

    if-nez v0, :cond_1

    .line 81
    new-instance v0, Liyc;

    invoke-direct {v0}, Liyc;-><init>()V

    iput-object v0, p0, Liyy;->apiHeader:Liyc;

    .line 83
    :cond_1
    iget-object v0, p0, Liyy;->apiHeader:Liyc;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 87
    :sswitch_2
    iget-object v0, p0, Liyy;->a:Lizs;

    if-nez v0, :cond_2

    .line 88
    new-instance v0, Lizs;

    invoke-direct {v0}, Lizs;-><init>()V

    iput-object v0, p0, Liyy;->a:Lizs;

    .line 90
    :cond_2
    iget-object v0, p0, Liyy;->a:Lizs;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 70
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method
