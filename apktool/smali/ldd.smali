.class public final Lldd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lldd;",
        ">;"
    }
.end annotation


# instance fields
.field public a:Llde;

.field public b:Ljava/lang/Long;

.field public c:Lldj;

.field public d:[Lldp;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 37
    invoke-direct {p0}, Llyb;-><init>()V

    .line 38
    iput-object v1, p0, Lldd;->a:Llde;

    .line 39
    iput-object v1, p0, Lldd;->b:Ljava/lang/Long;

    .line 40
    iput-object v1, p0, Lldd;->c:Lldj;

    .line 41
    invoke-static {}, Lldp;->d()[Lldp;

    move-result-object v0

    iput-object v0, p0, Lldd;->d:[Lldp;

    .line 42
    iput-object v1, p0, Lldd;->eD:Llyd;

    .line 43
    const/4 v0, -0x1

    iput v0, p0, Lldd;->eE:I

    .line 44
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 4

    .prologue
    const/4 v1, 0x0

    .line 1101
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1102
    sparse-switch v0, :sswitch_data_0

    .line 1106
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1107
    :sswitch_0
    return-object p0

    .line 1112
    :sswitch_1
    iget-object v0, p0, Lldd;->a:Llde;

    if-nez v0, :cond_1

    .line 1113
    new-instance v0, Llde;

    invoke-direct {v0}, Llde;-><init>()V

    iput-object v0, p0, Lldd;->a:Llde;

    .line 1115
    :cond_1
    iget-object v0, p0, Lldd;->a:Llde;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1119
    :sswitch_2
    invoke-virtual {p1}, Llxy;->e()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Lldd;->b:Ljava/lang/Long;

    goto :goto_0

    .line 1123
    :sswitch_3
    iget-object v0, p0, Lldd;->c:Lldj;

    if-nez v0, :cond_2

    .line 1124
    new-instance v0, Lldj;

    invoke-direct {v0}, Lldj;-><init>()V

    iput-object v0, p0, Lldd;->c:Lldj;

    .line 1126
    :cond_2
    iget-object v0, p0, Lldd;->c:Lldj;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1130
    :sswitch_4
    const/16 v0, 0x22

    .line 1131
    invoke-static {p1, v0}, Llyo;->b(Llxy;I)I

    move-result v2

    .line 1132
    iget-object v0, p0, Lldd;->d:[Lldp;

    if-nez v0, :cond_4

    move v0, v1

    .line 1133
    :goto_1
    add-int/2addr v2, v0

    new-array v2, v2, [Lldp;

    .line 1135
    if-eqz v0, :cond_3

    .line 1136
    iget-object v3, p0, Lldd;->d:[Lldp;

    invoke-static {v3, v1, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 1138
    :cond_3
    :goto_2
    array-length v3, v2

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_5

    .line 1139
    new-instance v3, Lldp;

    invoke-direct {v3}, Lldp;-><init>()V

    aput-object v3, v2, v0

    .line 1140
    aget-object v3, v2, v0

    invoke-virtual {p1, v3}, Llxy;->a(Llyi;)V

    .line 1141
    invoke-virtual {p1}, Llxy;->a()I

    .line 1138
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1132
    :cond_4
    iget-object v0, p0, Lldd;->d:[Lldp;

    array-length v0, v0

    goto :goto_1

    .line 1144
    :cond_5
    new-instance v3, Lldp;

    invoke-direct {v3}, Lldp;-><init>()V

    aput-object v3, v2, v0

    .line 1145
    aget-object v0, v2, v0

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    .line 1146
    iput-object v2, p0, Lldd;->d:[Lldp;

    goto :goto_0

    .line 1102
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x10 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 49
    iget-object v0, p0, Lldd;->a:Llde;

    if-eqz v0, :cond_0

    .line 50
    const/4 v0, 0x1

    iget-object v1, p0, Lldd;->a:Llde;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 52
    :cond_0
    iget-object v0, p0, Lldd;->b:Ljava/lang/Long;

    if-eqz v0, :cond_1

    .line 53
    const/4 v0, 0x2

    iget-object v1, p0, Lldd;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->b(IJ)V

    .line 55
    :cond_1
    iget-object v0, p0, Lldd;->c:Lldj;

    if-eqz v0, :cond_2

    .line 56
    const/4 v0, 0x3

    iget-object v1, p0, Lldd;->c:Lldj;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 58
    :cond_2
    iget-object v0, p0, Lldd;->d:[Lldp;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lldd;->d:[Lldp;

    array-length v0, v0

    if-lez v0, :cond_4

    .line 59
    const/4 v0, 0x0

    :goto_0
    iget-object v1, p0, Lldd;->d:[Lldp;

    array-length v1, v1

    if-ge v0, v1, :cond_4

    .line 60
    iget-object v1, p0, Lldd;->d:[Lldp;

    aget-object v1, v1, v0

    .line 61
    if-eqz v1, :cond_3

    .line 62
    const/4 v2, 0x4

    invoke-virtual {p1, v2, v1}, Llxz;->b(ILlyi;)V

    .line 59
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 66
    :cond_4
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 67
    return-void
.end method

.method protected b()I
    .locals 5

    .prologue
    .line 71
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 72
    iget-object v1, p0, Lldd;->a:Llde;

    if-eqz v1, :cond_0

    .line 73
    const/4 v1, 0x1

    iget-object v2, p0, Lldd;->a:Llde;

    .line 74
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 76
    :cond_0
    iget-object v1, p0, Lldd;->b:Ljava/lang/Long;

    if-eqz v1, :cond_1

    .line 77
    const/4 v1, 0x2

    iget-object v2, p0, Lldd;->b:Ljava/lang/Long;

    .line 78
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Llxz;->e(IJ)I

    move-result v1

    add-int/2addr v0, v1

    .line 80
    :cond_1
    iget-object v1, p0, Lldd;->c:Lldj;

    if-eqz v1, :cond_2

    .line 81
    const/4 v1, 0x3

    iget-object v2, p0, Lldd;->c:Lldj;

    .line 82
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 84
    :cond_2
    iget-object v1, p0, Lldd;->d:[Lldp;

    if-eqz v1, :cond_5

    iget-object v1, p0, Lldd;->d:[Lldp;

    array-length v1, v1

    if-lez v1, :cond_5

    .line 85
    const/4 v1, 0x0

    move v4, v1

    move v1, v0

    move v0, v4

    :goto_0
    iget-object v2, p0, Lldd;->d:[Lldp;

    array-length v2, v2

    if-ge v0, v2, :cond_4

    .line 86
    iget-object v2, p0, Lldd;->d:[Lldp;

    aget-object v2, v2, v0

    .line 87
    if-eqz v2, :cond_3

    .line 88
    const/4 v3, 0x4

    .line 89
    invoke-static {v3, v2}, Llxz;->d(ILlyi;)I

    move-result v2

    add-int/2addr v1, v2

    .line 85
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_4
    move v0, v1

    .line 93
    :cond_5
    return v0
.end method
