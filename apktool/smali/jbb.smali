.class public final Ljbb;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljbb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Ljbn;

.field public b:[Ljba;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 2900
    invoke-direct {p0}, Llyb;-><init>()V

    .line 3905
    iput-object v1, p0, Ljbb;->a:Ljbn;

    .line 3906
    invoke-static {}, Ljba;->d()[Ljba;

    move-result-object v0

    iput-object v0, p0, Ljbb;->b:[Ljba;

    .line 3907
    iput-object v1, p0, Ljbb;->eD:Llyd;

    .line 3908
    const/4 v0, -0x1

    iput v0, p0, Ljbb;->eE:I

    .line 2902
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3953
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3954
    sparse-switch v0, :sswitch_data_0

    .line 3958
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3959
    :sswitch_0
    return-object p0

    .line 3964
    :sswitch_1
    iget-object v0, p0, Ljbb;->a:Ljbn;

    if-nez v0, :cond_1

    .line 3965
    new-instance v0, Ljbn;

    invoke-direct {v0}, Ljbn;-><init>()V

    iput-object v0, p0, Ljbb;->a:Ljbn;

    .line 3967
    :cond_1
    iget-object v0, p0, Ljbb;->a:Ljbn;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3971
    :sswitch_2
    const/16 v0, 0x12

    .line 3972
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 3973
    iget-object v0, p0, Ljbb;->b:[Ljba;

    if-nez v0, :cond_3

    move v0, v1

    .line 3974
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljba;

    .line 3976
    if-eqz v0, :cond_2

    .line 3977
    iget-object v3, p0, Ljbb;->b:[Ljba;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 3979
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 3980
    new-instance v3, Ljba;

    invoke-direct {v3}, Ljba;-><init>()V

    aput-object v3, v2, v0

    .line 3981
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 3982
    invoke-virtual {p1}, Llxy;->a()I

    .line 3979
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 3973
    :cond_3
    iget-object v0, p0, Ljbb;->b:[Ljba;

    array-length v0, v0

    goto :goto_1

    .line 3985
    :cond_4
    new-instance v3, Ljba;

    invoke-direct {v3}, Ljba;-><init>()V

    aput-object v3, v2, v0

    .line 3986
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 3987
    iput-object v2, p0, Ljbb;->b:[Ljba;

    goto :goto_0

    .line 3954
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 2915
    iget-object v0, p0, Ljbb;->a:Ljbn;

    if-eqz v0, :cond_0

    .line 2916
    const/4 v0, 0x1

    iget-object v1, p0, Ljbb;->a:Ljbn;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 2918
    :cond_0
    iget-object v0, p0, Ljbb;->b:[Ljba;

    if-eqz v0, :cond_2

    iget-object v0, p0, Ljbb;->b:[Ljba;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 2919
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljbb;->b:[Ljba;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 2920
    iget-object v1, p0, Ljbb;->b:[Ljba;

    aget-object v1, v1, v0

    .line 2921
    if-eqz v1, :cond_1

    .line 2922
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 2919
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 2926
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 2927
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 2931
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 2932
    iget-object v1, p0, Ljbb;->a:Ljbn;

    if-eqz v1, :cond_0

    .line 2933
    const/4 v1, 0x1

    iget-object v2, p0, Ljbb;->a:Ljbn;

    .line 2934
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 2936
    :cond_0
    iget-object v1, p0, Ljbb;->b:[Ljba;

    if-eqz v1, :cond_3

    iget-object v1, p0, Ljbb;->b:[Ljba;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 2937
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Ljbb;->b:[Ljba;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 2938
    iget-object v2, p0, Ljbb;->b:[Ljba;

    aget-object v2, v2, v0

    .line 2939
    if-eqz v2, :cond_1

    .line 2940
    const/4 v3, 0x2

    .line 2941
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 2937
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 2945
    :cond_3
    return v0
.end method
