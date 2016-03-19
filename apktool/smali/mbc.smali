.class public final Lmbc;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lmbc;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Llyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llyc",
            "<",
            "Llyu;",
            "Lmbc;",
            ">;"
        }
    .end annotation
.end field

.field private static final h:[Lmbc;


# instance fields
.field public b:Ljava/lang/Double;

.field public c:Ljava/lang/Double;

.field public d:Ljava/lang/String;

.field public e:Ljava/lang/String;

.field public f:Ljava/lang/String;

.field public g:Llyu;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 13
    const-class v0, Lmbc;

    const-wide/32 v2, 0xd0c6942

    .line 14
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Lmbc;->a:Llyc;

    .line 19
    const/4 v0, 0x0

    new-array v0, v0, [Lmbc;

    sput-object v0, Lmbc;->h:[Lmbc;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 44
    invoke-direct {p0}, Llyb;-><init>()V

    .line 45
    iput-object v0, p0, Lmbc;->b:Ljava/lang/Double;

    .line 46
    iput-object v0, p0, Lmbc;->c:Ljava/lang/Double;

    .line 47
    iput-object v0, p0, Lmbc;->d:Ljava/lang/String;

    .line 48
    iput-object v0, p0, Lmbc;->e:Ljava/lang/String;

    .line 49
    iput-object v0, p0, Lmbc;->f:Ljava/lang/String;

    .line 50
    iput-object v0, p0, Lmbc;->g:Llyu;

    .line 51
    iput-object v0, p0, Lmbc;->eD:Llyd;

    .line 52
    const/4 v0, -0x1

    iput v0, p0, Lmbc;->eE:I

    .line 53
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 3114
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3115
    sparse-switch v0, :sswitch_data_0

    .line 3119
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3120
    :sswitch_0
    return-object p0

    .line 3125
    :sswitch_1
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lmbc;->b:Ljava/lang/Double;

    goto :goto_0

    .line 3129
    :sswitch_2
    invoke-virtual {p1}, Llxy;->b()D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    iput-object v0, p0, Lmbc;->c:Ljava/lang/Double;

    goto :goto_0

    .line 3133
    :sswitch_3
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmbc;->d:Ljava/lang/String;

    goto :goto_0

    .line 3137
    :sswitch_4
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmbc;->e:Ljava/lang/String;

    goto :goto_0

    .line 3141
    :sswitch_5
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lmbc;->f:Ljava/lang/String;

    goto :goto_0

    .line 3145
    :sswitch_6
    iget-object v0, p0, Lmbc;->g:Llyu;

    if-nez v0, :cond_1

    .line 3146
    new-instance v0, Llyu;

    invoke-direct {v0}, Llyu;-><init>()V

    iput-object v0, p0, Lmbc;->g:Llyu;

    .line 3148
    :cond_1
    iget-object v0, p0, Lmbc;->g:Llyu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3115
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
    .line 58
    iget-object v0, p0, Lmbc;->b:Ljava/lang/Double;

    if-eqz v0, :cond_0

    .line 59
    const/4 v0, 0x1

    iget-object v1, p0, Lmbc;->b:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 61
    :cond_0
    iget-object v0, p0, Lmbc;->c:Ljava/lang/Double;

    if-eqz v0, :cond_1

    .line 62
    const/4 v0, 0x2

    iget-object v1, p0, Lmbc;->c:Ljava/lang/Double;

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->a(ID)V

    .line 64
    :cond_1
    iget-object v0, p0, Lmbc;->d:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 65
    const/4 v0, 0x3

    iget-object v1, p0, Lmbc;->d:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 67
    :cond_2
    iget-object v0, p0, Lmbc;->e:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 68
    const/4 v0, 0x4

    iget-object v1, p0, Lmbc;->e:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 70
    :cond_3
    iget-object v0, p0, Lmbc;->f:Ljava/lang/String;

    if-eqz v0, :cond_4

    .line 71
    const/4 v0, 0x5

    iget-object v1, p0, Lmbc;->f:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 73
    :cond_4
    iget-object v0, p0, Lmbc;->g:Llyu;

    if-eqz v0, :cond_5

    .line 74
    const/4 v0, 0x6

    iget-object v1, p0, Lmbc;->g:Llyu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 76
    :cond_5
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 77
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 81
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 82
    iget-object v1, p0, Lmbc;->b:Ljava/lang/Double;

    if-eqz v1, :cond_0

    .line 83
    const/4 v1, 0x1

    iget-object v2, p0, Lmbc;->b:Ljava/lang/Double;

    .line 84
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 1561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 84
    add-int/2addr v0, v1

    .line 86
    :cond_0
    iget-object v1, p0, Lmbc;->c:Ljava/lang/Double;

    if-eqz v1, :cond_1

    .line 87
    const/4 v1, 0x2

    iget-object v2, p0, Lmbc;->c:Ljava/lang/Double;

    .line 88
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    .line 2561
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 88
    add-int/2addr v0, v1

    .line 90
    :cond_1
    iget-object v1, p0, Lmbc;->d:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 91
    const/4 v1, 0x3

    iget-object v2, p0, Lmbc;->d:Ljava/lang/String;

    .line 92
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 94
    :cond_2
    iget-object v1, p0, Lmbc;->e:Ljava/lang/String;

    if-eqz v1, :cond_3

    .line 95
    const/4 v1, 0x4

    iget-object v2, p0, Lmbc;->e:Ljava/lang/String;

    .line 96
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 98
    :cond_3
    iget-object v1, p0, Lmbc;->f:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 99
    const/4 v1, 0x5

    iget-object v2, p0, Lmbc;->f:Ljava/lang/String;

    .line 100
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 102
    :cond_4
    iget-object v1, p0, Lmbc;->g:Llyu;

    if-eqz v1, :cond_5

    .line 103
    const/4 v1, 0x6

    iget-object v2, p0, Lmbc;->g:Llyu;

    .line 104
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 106
    :cond_5
    return v0
.end method
