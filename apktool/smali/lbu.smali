.class public final Llbu;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Llbu;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Llyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llyc",
            "<",
            "Lmsu;",
            "Llbu;",
            ">;"
        }
    .end annotation
.end field

.field private static final e:[Llbu;


# instance fields
.field public b:Ljava/lang/Long;

.field public c:Ljava/lang/Long;

.field public d:Lmsu;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 17
    const-class v0, Llbu;

    const-wide/32 v2, 0x65270aa

    .line 18
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Llbu;->a:Llyc;

    .line 23
    const/4 v0, 0x0

    new-array v0, v0, [Llbu;

    sput-object v0, Llbu;->e:[Llbu;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 39
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1044
    iput-object v0, p0, Llbu;->b:Ljava/lang/Long;

    .line 1045
    iput-object v0, p0, Llbu;->c:Ljava/lang/Long;

    .line 1046
    iput-object v0, p0, Llbu;->d:Lmsu;

    .line 1047
    iput-object v0, p0, Llbu;->eD:Llyd;

    .line 1048
    const/4 v0, -0x1

    iput v0, p0, Llbu;->eE:I

    .line 41
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 2

    .prologue
    .line 3082
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 3083
    sparse-switch v0, :sswitch_data_0

    .line 3087
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3088
    :sswitch_0
    return-object p0

    .line 3093
    :sswitch_1
    invoke-virtual {p1}, Llxy;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llbu;->b:Ljava/lang/Long;

    goto :goto_0

    .line 3097
    :sswitch_2
    invoke-virtual {p1}, Llxy;->g()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    iput-object v0, p0, Llbu;->c:Ljava/lang/Long;

    goto :goto_0

    .line 3101
    :sswitch_3
    iget-object v0, p0, Llbu;->d:Lmsu;

    if-nez v0, :cond_1

    .line 3102
    new-instance v0, Lmsu;

    invoke-direct {v0}, Lmsu;-><init>()V

    iput-object v0, p0, Llbu;->d:Lmsu;

    .line 3104
    :cond_1
    iget-object v0, p0, Llbu;->d:Lmsu;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 3083
    nop

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0x9 -> :sswitch_1
        0x11 -> :sswitch_2
        0x1a -> :sswitch_3
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 4

    .prologue
    .line 55
    const/4 v0, 0x1

    iget-object v1, p0, Llbu;->b:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->c(IJ)V

    .line 56
    const/4 v0, 0x2

    iget-object v1, p0, Llbu;->c:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-virtual {p1, v0, v2, v3}, Llxz;->c(IJ)V

    .line 57
    iget-object v0, p0, Llbu;->d:Lmsu;

    if-eqz v0, :cond_0

    .line 58
    const/4 v0, 0x3

    iget-object v1, p0, Llbu;->d:Lmsu;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 60
    :cond_0
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 61
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 65
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 66
    const/4 v1, 0x1

    iget-object v2, p0, Llbu;->b:Ljava/lang/Long;

    .line 67
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 1602
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 67
    add-int/2addr v0, v1

    .line 68
    const/4 v1, 0x2

    iget-object v2, p0, Llbu;->c:Ljava/lang/Long;

    .line 69
    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    .line 2602
    invoke-static {v1}, Llxz;->f(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x8

    .line 69
    add-int/2addr v0, v1

    .line 70
    iget-object v1, p0, Llbu;->d:Lmsu;

    if-eqz v1, :cond_0

    .line 71
    const/4 v1, 0x3

    iget-object v2, p0, Llbu;->d:Lmsu;

    .line 72
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 74
    :cond_0
    return v0
.end method
