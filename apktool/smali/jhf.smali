.class public final Ljhf;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljhf;",
        ">;"
    }
.end annotation


# instance fields
.field public a:[Ljip;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Llyb;-><init>()V

    .line 29
    invoke-static {}, Ljip;->d()[Ljip;

    move-result-object v0

    iput-object v0, p0, Ljhf;->a:[Ljip;

    .line 30
    const/4 v0, 0x0

    iput-object v0, p0, Ljhf;->eD:Llyd;

    .line 31
    const/4 v0, -0x1

    iput v0, p0, Ljhf;->eE:I

    .line 32
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1068
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1069
    sparse-switch v0, :sswitch_data_0

    .line 1073
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1074
    :sswitch_0
    return-object p0

    .line 1079
    :sswitch_1
    const/16 v0, 0xa

    .line 1080
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1081
    iget-object v0, p0, Ljhf;->a:[Ljip;

    if-nez v0, :cond_2

    move v0, v1

    .line 1082
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Ljip;

    .line 1084
    if-eqz v0, :cond_1

    .line 1085
    iget-object v3, p0, Ljhf;->a:[Ljip;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1087
    :cond_1
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_3

    .line 1088
    new-instance v3, Ljip;

    invoke-direct {v3}, Ljip;-><init>()V

    aput-object v3, v2, v0

    .line 1089
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1090
    invoke-virtual {p1}, Llxy;->a()I

    .line 1087
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1081
    :cond_2
    iget-object v0, p0, Ljhf;->a:[Ljip;

    array-length v0, v0

    goto :goto_1

    .line 1093
    :cond_3
    new-instance v3, Ljip;

    invoke-direct {v3}, Ljip;-><init>()V

    aput-object v3, v2, v0

    .line 1094
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1095
    iput-object v2, p0, Ljhf;->a:[Ljip;

    goto :goto_0

    .line 1069
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 3

    .prologue
    .line 37
    iget-object v0, p0, Ljhf;->a:[Ljip;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljhf;->a:[Ljip;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 38
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Ljhf;->a:[Ljip;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 39
    iget-object v1, p0, Ljhf;->a:[Ljip;

    aget-object v1, v1, v0

    .line 40
    if-eqz v1, :cond_0

    .line 41
    const/4 v2, 0x1

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 38
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 45
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 46
    return-void
.end method

.method protected b()I
    .locals 4

    .prologue
    .line 50
    invoke-super {p0}, Llyb;->b()I

    move-result v1

    .line 51
    iget-object v0, p0, Ljhf;->a:[Ljip;

    if-eqz v0, :cond_1

    iget-object v0, p0, Ljhf;->a:[Ljip;

    array-length v0, v0

    if-lez v0, :cond_1

    .line 52
    const/4 v0, 0x0

    :goto_0
    iget-object v2, p0, Ljhf;->a:[Ljip;

    array-length v2, v2

    if-ge v0, v2, :cond_1

    .line 53
    iget-object v2, p0, Ljhf;->a:[Ljip;

    aget-object v2, v2, v0

    .line 54
    if-eqz v2, :cond_0

    .line 55
    const/4 v3, 0x1

    .line 56
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 52
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_1
    return v1
.end method
