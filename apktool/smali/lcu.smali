.class public final Llcu;
.super Llyi;
.source "SourceFile"


# instance fields
.field public a:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

.field public b:[Llct;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 35
    invoke-direct {p0}, Llyi;-><init>()V

    .line 1040
    const/4 v0, 0x0

    iput-object v0, p0, Llcu;->a:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    .line 1041
    invoke-static {}, Llct;->d()[Llct;

    move-result-object v0

    iput-object v0, p0, Llcu;->b:[Llct;

    .line 1042
    const/4 v0, -0x1

    iput v0, p0, Llcu;->eE:I

    .line 37
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1087
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1088
    sparse-switch v0, :sswitch_data_0

    .line 2095
    invoke-virtual {p1, v0}, Llxy;->b(I)Z

    move-result v0

    .line 1092
    if-nez v0, :cond_0

    .line 1093
    :sswitch_0
    return-object p0

    .line 1098
    :sswitch_1
    iget-object v0, p0, Llcu;->a:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    if-nez v0, :cond_1

    .line 1099
    new-instance v0, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    invoke-direct {v0}, Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;-><init>()V

    iput-object v0, p0, Llcu;->a:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    .line 1101
    :cond_1
    iget-object v0, p0, Llcu;->a:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1105
    :sswitch_2
    const/16 v0, 0x12

    .line 1106
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1107
    iget-object v0, p0, Llcu;->b:[Llct;

    if-nez v0, :cond_3

    move v0, v1

    .line 1108
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Llct;

    .line 1110
    if-eqz v0, :cond_2

    .line 1111
    iget-object v3, p0, Llcu;->b:[Llct;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1113
    :cond_2
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_4

    .line 1114
    new-instance v3, Llct;

    invoke-direct {v3}, Llct;-><init>()V

    aput-object v3, v2, v0

    .line 1115
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1116
    invoke-virtual {p1}, Llxy;->a()I

    .line 1113
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1107
    :cond_3
    iget-object v0, p0, Llcu;->b:[Llct;

    array-length v0, v0

    goto :goto_1

    .line 1119
    :cond_4
    new-instance v3, Llct;

    invoke-direct {v3}, Llct;-><init>()V

    aput-object v3, v2, v0

    .line 1120
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1121
    iput-object v2, p0, Llcu;->b:[Llct;

    goto :goto_0

    .line 1088
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
    .line 49
    iget-object v0, p0, Llcu;->a:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iget-object v1, p0, Llcu;->a:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 52
    :cond_0
    iget-object v0, p0, Llcu;->b:[Llct;

    if-eqz v0, :cond_2

    iget-object v0, p0, Llcu;->b:[Llct;

    array-length v0, v0

    if-lez v0, :cond_2

    .line 53
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Llcu;->b:[Llct;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 54
    iget-object v1, p0, Llcu;->b:[Llct;

    aget-object v1, v1, v0

    .line 55
    if-eqz v1, :cond_1

    .line 56
    const/4 v2, 0x2

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 53
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 60
    :cond_2
    invoke-super {p0, p1}, Llyi;->a(Llxz;)V

    .line 61
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 65
    invoke-super {p0}, Llyi;->b()I

    move-result v0

    .line 66
    iget-object v1, p0, Llcu;->a:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    if-eqz v1, :cond_0

    .line 67
    const/4 v1, 0x1

    iget-object v2, p0, Llcu;->a:Lcom/google/android/libraries/componentview/components/api/nano/ComponentsProto$Component;

    .line 68
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 70
    :cond_0
    iget-object v1, p0, Llcu;->b:[Llct;

    if-eqz v1, :cond_3

    iget-object v1, p0, Llcu;->b:[Llct;

    array-length v1, v1

    if-lez v1, :cond_3

    .line 71
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Llcu;->b:[Llct;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 72
    iget-object v2, p0, Llcu;->b:[Llct;

    aget-object v2, v2, v0

    .line 73
    if-eqz v2, :cond_1

    .line 74
    const/4 v3, 0x2

    .line 75
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 71
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    move v0, v1

    .line 79
    :cond_3
    return v0
.end method
