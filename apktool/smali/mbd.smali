.class public final Lmbd;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmbd;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Llyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llyc",
            "<",
            "Llyt;",
            "Lmbd;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:[Lmbd;


# instance fields
.field public b:Ljava/lang/Double;

.field public c:Ljava/lang/Double;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Llyt;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    const-class v0, Lmbd;

    const-wide/32 v2, 0xd0c6942

    .line 18
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Lmbd;->a:Llyc;

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Lmbd;

    sput-object v0, Lmbd;->h:[Lmbd;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 48
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1053
    iput-object v0, p0, Lmbd;->b:Ljava/lang/Double;

    .line 1054
    iput-object v0, p0, Lmbd;->c:Ljava/lang/Double;

    .line 1055
    iput-object v0, p0, Lmbd;->d:Ljava/lang/String;

    .line 1056
    iput-object v0, p0, Lmbd;->e:Ljava/lang/String;

    .line 1057
    iput-object v0, p0, Lmbd;->f:Ljava/lang/String;

    .line 1058
    iput-object v0, p0, Lmbd;->g:Llyt;

    .line 1059
    iput-object v0, p0, Lmbd;->eD:Llyd;

    .line 1060
    const/4 v0, -0x1

    iput v0, p0, Lmbd;->eE:I

    .line 50
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 3123
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3124
    sparse-switch v0, :sswitch_data_0

    .line 3128
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3129
    :sswitch_0
    return-object p0

    .line 3134
    :sswitch_1
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lmbd;->b:Ljava/lang/Double;

    goto :goto_0

    .line 3138
    :sswitch_2
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lmbd;->c:Ljava/lang/Double;

    goto :goto_0

    .line 3142
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmbd;->d:Ljava/lang/String;

    goto :goto_0

    .line 3146
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmbd;->e:Ljava/lang/String;

    goto :goto_0

    .line 3150
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmbd;->f:Ljava/lang/String;

    goto :goto_0

    .line 3154
    :sswitch_6
    iget-object v0, p0, Lmbd;->g:Llyt;

    if-nez v0, :cond_1

    .line 3155
    new-instance v0, Llyt;

    invoke-direct {v0}, Llyt;-><init>()V

    iput-object v0, p0, Lmbd;->g:Llyt;

    .line 3157
    :cond_1
    iget-object v0, p0, Lmbd;->g:Llyt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3124
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
        0x22 -> :sswitch_4
        0x2a -> :sswitch_5
        0x32 -> :sswitch_6
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 67
    iget-object v0, p0, Lmbd;->b:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 68
    const/4 v0, 0x1

    iget-object v1, p0, Lmbd;->b:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 70
    :cond_0
    iget-object v0, p0, Lmbd;->c:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 71
    const/4 v0, 0x2

    iget-object v1, p0, Lmbd;->c:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 73
    :cond_1
    iget-object v0, p0, Lmbd;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 74
    const/4 v0, 0x3

    iget-object v1, p0, Lmbd;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 76
    :cond_2
    iget-object v0, p0, Lmbd;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 77
    const/4 v0, 0x4

    iget-object v1, p0, Lmbd;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 79
    :cond_3
    iget-object v0, p0, Lmbd;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 80
    const/4 v0, 0x5

    iget-object v1, p0, Lmbd;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 82
    :cond_4
    iget-object v0, p0, Lmbd;->g:Llyt;

    if-eqz v0, :cond_5

    .line 83
    const/4 v0, 0x6

    iget-object v1, p0, Lmbd;->g:Llyt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 85
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 86
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 90
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 91
    iget-object v1, p0, Lmbd;->b:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 92
    const/4 v1, 0x1

    iget-object v2, p0, Lmbd;->b:Ljava/lang/Double;

    .line 93
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 1561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 93
    add-int/2addr v0, v1

    .line 95
    :cond_0
    iget-object v1, p0, Lmbd;->c:Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 96
    const/4 v1, 0x2

    iget-object v2, p0, Lmbd;->c:Ljava/lang/Double;

    .line 97
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 2561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 97
    add-int/2addr v0, v1

    .line 99
    :cond_1
    iget-object v1, p0, Lmbd;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 100
    const/4 v1, 0x3

    iget-object v2, p0, Lmbd;->d:Ljava/lang/String;

    .line 101
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 103
    :cond_2
    iget-object v1, p0, Lmbd;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 104
    const/4 v1, 0x4

    iget-object v2, p0, Lmbd;->e:Ljava/lang/String;

    .line 105
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 107
    :cond_3
    iget-object v1, p0, Lmbd;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 108
    const/4 v1, 0x5

    iget-object v2, p0, Lmbd;->f:Ljava/lang/String;

    .line 109
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 111
    :cond_4
    iget-object v1, p0, Lmbd;->g:Llyt;

    if-eqz v1, :cond_5

    .line 112
    const/4 v1, 0x6

    iget-object v2, p0, Lmbd;->g:Llyt;

    .line 113
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 115
    :cond_5
    return v0
.end method
