.class public final Lgbb;
.super Lgbh;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lgbh",
        "<",
        "Lgbb;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Lgbc;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 0
    invoke-direct {p0}, Lgbh;-><init>()V

    .line 1000
    invoke-static {}, Lgbc;->b()[Lgbc;

    move-result-object v0

    iput-object v0, p0, Lgbb;->a:[Lgbc;

    const/4 v0, 0x0

    iput-object v0, p0, Lgbb;->o:Lgbj;

    const/4 v0, -0x1

    iput v0, p0, Lgbb;->p:I

    .line 0
    return-void
.end method

.method public static a([B)Lgbb;
    .locals 2

    .prologue
    .line 0
    new-instance v0, Lgbb;

    invoke-direct {v0}, Lgbb;-><init>()V

    .line 2000
    array-length v1, p0

    invoke-static {v0, p0, v1}, Lgbn;->a(Lgbn;[BI)Lgbn;

    move-result-object v0

    .line 0
    check-cast v0, Lgbb;

    return-object v0
.end method


# virtual methods
.method protected a()I
    .locals 4

    invoke-super {p0}, Lgbh;->a()I

    move-result v1

    iget-object v0, p0, Lgbb;->a:[Lgbc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbb;->a:[Lgbc;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Lgbb;->a:[Lgbc;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    iget-object v2, p0, Lgbb;->a:[Lgbc;

    aget-object v2, v2, v0

    if-eqz v2, :cond_0

    const/4 v3, 0x1

    invoke-static {v3, v2}, Lgbg;->b(ILgbn;)I

    move-result v2

    add-int/2addr v1, v2

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    return v1
.end method

.method public synthetic a(Lgbf;)Lgbn;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 3000
    :cond_0
    :goto_0
    invoke-virtual {p1}, Lgbf;->a()I

    move-result v0

    sparse-switch v0, :sswitch_data_0

    invoke-virtual {p0, p1, v0}, Lgbb;->a(Lgbf;I)Z

    move-result v0

    if-nez v0, :cond_0

    :sswitch_0
    return-object p0

    :sswitch_1
    const/16 v0, 0xa

    invoke-static {p1, v0}, Lgbp;->a(Lgbf;I)I

    move-result v2

    iget-object v0, p0, Lgbb;->a:[Lgbc;

    if-nez v0, :cond_2

    move v0, v1

    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lgbc;

    if-eqz v0, :cond_1

    iget-object v3, p0, Lgbb;->a:[Lgbc;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    new-instance v3, Lgbc;

    invoke-direct {v3}, Lgbc;-><init>()V

    aput-object v3, v2, v0

    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Lgbf;->a(Lgbn;)V

    invoke-virtual {p1}, Lgbf;->a()I

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_2
    iget-object v0, p0, Lgbb;->a:[Lgbc;

    array-length v0, v0

    goto :goto_1

    :cond_3
    new-instance v3, Lgbc;

    invoke-direct {v3}, Lgbc;-><init>()V

    aput-object v3, v2, v0

    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Lgbf;->a(Lgbn;)V

    iput-object v2, p0, Lgbb;->a:[Lgbc;

    goto :goto_0

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Lgbg;)V
    .locals 3

    iget-object v0, p0, Lgbb;->a:[Lgbc;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lgbb;->a:[Lgbc;

    array-length v0, v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lgbb;->a:[Lgbc;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    iget-object v1, p0, Lgbb;->a:[Lgbc;

    aget-object v1, v1, v0

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Lgbg;->a(ILgbn;)V

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    invoke-super {p0, p1}, Lgbh;->a(Lgbg;)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3

    const/4 v0, 0x0

    if-ne p1, p0, :cond_1

    const/4 v0, 0x1

    :cond_0
    :goto_0
    return v0

    :cond_1
    instance-of v1, p1, Lgbb;

    if-eqz v1, :cond_0

    check-cast p1, Lgbb;

    iget-object v1, p0, Lgbb;->a:[Lgbc;

    iget-object v2, p1, Lgbb;->a:[Lgbc;

    invoke-static {v1, v2}, Lgbl;->a([Ljava/lang/Object;[Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0, p1}, Lgbb;->a(Lgbh;)Z

    move-result v0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 2

    iget-object v0, p0, Lgbb;->a:[Lgbc;

    invoke-static {v0}, Lgbl;->a([Ljava/lang/Object;)I

    move-result v0

    add-int/lit16 v0, v0, 0x20f

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Lgbb;->c()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
