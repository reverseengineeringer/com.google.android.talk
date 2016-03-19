.class public final Ljpj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Ljpj;",
        ">;"
    }
.end annotation


# static fields
.field private static volatile d:[Ljpj;


# instance fields
.field public a:Ljava/lang/Integer;

.field public b:Ljpk;

.field public c:Lmeu;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 38
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1043
    iput-object v0, p0, Ljpj;->a:Ljava/lang/Integer;

    .line 1044
    iput-object v0, p0, Ljpj;->b:Ljpk;

    .line 1045
    iput-object v0, p0, Ljpj;->c:Lmeu;

    .line 1046
    iput-object v0, p0, Ljpj;->eD:Llyd;

    .line 1047
    const/4 v0, -0x1

    iput v0, p0, Ljpj;->eE:I

    .line 40
    return-void
.end method

.method public static d()[Ljpj;
    .locals 2

    .prologue
    .line 16
    sget-object v0, Ljpj;->d:[Ljpj;

    if-nez v0, :cond_1

    .line 17
    sget-object v1, Llyf;->a:Ljava/lang/Object;

    monitor-enter v1

    .line 19
    :try_start_0
    sget-object v0, Ljpj;->d:[Ljpj;

    if-nez v0, :cond_0

    .line 20
    const/4 v0, 0x0

    new-array v0, v0, [Ljpj;

    sput-object v0, Ljpj;->d:[Ljpj;

    .line 22
    :cond_0
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 24
    :cond_1
    sget-object v0, Ljpj;->d:[Ljpj;

    return-object v0

    .line 22
    :catchall_0
    move-exception v0

    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1089
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1090
    sparse-switch v0, :sswitch_data_0

    .line 1094
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1095
    :sswitch_0
    return-object p0

    .line 1100
    :sswitch_1
    invoke-virtual {p1}, Llxy;->f()I

    move-result v0

    .line 1101
    sparse-switch v0, :sswitch_data_1

    goto :goto_0

    .line 1115
    :sswitch_2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iput-object v0, p0, Ljpj;->a:Ljava/lang/Integer;

    goto :goto_0

    .line 1121
    :sswitch_3
    iget-object v0, p0, Ljpj;->c:Lmeu;

    if-nez v0, :cond_1

    .line 1122
    new-instance v0, Lmeu;

    invoke-direct {v0}, Lmeu;-><init>()V

    iput-object v0, p0, Ljpj;->c:Lmeu;

    .line 1124
    :cond_1
    iget-object v0, p0, Ljpj;->c:Lmeu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1128
    :sswitch_4
    iget-object v0, p0, Ljpj;->b:Ljpk;

    if-nez v0, :cond_2

    .line 1129
    new-instance v0, Ljpk;

    invoke-direct {v0}, Ljpk;-><init>()V

    iput-object v0, p0, Ljpj;->b:Ljpk;

    .line 1131
    :cond_2
    iget-object v0, p0, Ljpj;->b:Ljpk;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1090
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x8 -> :sswitch_1
        0x1a -> :sswitch_3
        0x32 -> :sswitch_4
    .end sparse-switch

    .line 1101
    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_2
        0x1 -> :sswitch_2
        0x2 -> :sswitch_2
        0x3 -> :sswitch_2
        0x5 -> :sswitch_2
        0x6 -> :sswitch_2
        0x7 -> :sswitch_2
        0x8 -> :sswitch_2
        0x9 -> :sswitch_2
        0x3e9 -> :sswitch_2
        0x3ea -> :sswitch_2
        0x3eb -> :sswitch_2
        0x3ec -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 54
    iget-object v0, p0, Ljpj;->a:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    .line 55
    const/4 v0, 0x1

    iget-object v1, p0, Ljpj;->a:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Llxz;->a(II)V

    .line 57
    :cond_0
    iget-object v0, p0, Ljpj;->c:Lmeu;

    if-eqz v0, :cond_1

    .line 58
    const/4 v0, 0x3

    iget-object v1, p0, Ljpj;->c:Lmeu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 60
    :cond_1
    iget-object v0, p0, Ljpj;->b:Ljpk;

    if-eqz v0, :cond_2

    .line 61
    const/4 v0, 0x6

    iget-object v1, p0, Ljpj;->b:Ljpk;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 63
    :cond_2
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 64
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 68
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 69
    iget-object v1, p0, Ljpj;->a:Ljava/lang/Integer;

    if-eqz v1, :cond_0

    .line 70
    const/4 v1, 0x1

    iget-object v2, p0, Ljpj;->a:Ljava/lang/Integer;

    .line 71
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v1, v2}, Llxz;->e(II)I

    move-result v1

    add-int/2addr v0, v1

    .line 73
    :cond_0
    iget-object v1, p0, Ljpj;->c:Lmeu;

    if-eqz v1, :cond_1

    .line 74
    const/4 v1, 0x3

    iget-object v2, p0, Ljpj;->c:Lmeu;

    .line 75
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 77
    :cond_1
    iget-object v1, p0, Ljpj;->b:Ljpk;

    if-eqz v1, :cond_2

    .line 78
    const/4 v1, 0x6

    iget-object v2, p0, Ljpj;->b:Ljpk;

    .line 79
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 81
    :cond_2
    return v0
.end method
