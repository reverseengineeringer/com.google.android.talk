.class public final Lkmj;
.super Llyb;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Llyb",
        "<",
        "Lkmj;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Llyc;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Llyc",
            "<",
            "Lkmi;",
            "Lkmj;",
            ">;"
        }
    .end annotation
.end field

.field private static final d:[Lkmj;


# instance fields
.field public b:Llyt;

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 262
    const-class v0, Lkmj;

    const-wide/32 v2, 0x2ebcfdd2

    .line 263
    invoke-static {v0, v2, v3}, Llyc;->a(Ljava/lang/Class;J)Llyc;

    move-result-object v0

    sput-object v0, Lkmj;->a:Llyc;

    .line 268
    const/4 v0, 0x0

    new-array v0, v0, [Lkmj;

    sput-object v0, Lkmj;->d:[Lkmj;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 281
    invoke-direct {p0}, Llyb;-><init>()V

    .line 1286
    iput-object v0, p0, Lkmj;->b:Llyt;

    .line 1287
    iput-object v0, p0, Lkmj;->c:Ljava/lang/String;

    .line 1288
    iput-object v0, p0, Lkmj;->eD:Llyd;

    .line 1289
    const/4 v0, -0x1

    iput v0, p0, Lkmj;->eE:I

    .line 283
    return-void
.end method


# virtual methods
.method public synthetic a(Llxy;)Llyi;
    .locals 1

    .prologue
    .line 1324
    :cond_0
    :goto_0
    invoke-virtual {p1}, Llxy;->a()I

    move-result v0

    .line 1325
    sparse-switch v0, :sswitch_data_0

    .line 1329
    invoke-super {p0, p1, v0}, Llyb;->a(Llxy;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1330
    :sswitch_0
    return-object p0

    .line 1335
    :sswitch_1
    iget-object v0, p0, Lkmj;->b:Llyt;

    if-nez v0, :cond_1

    .line 1336
    new-instance v0, Llyt;

    invoke-direct {v0}, Llyt;-><init>()V

    iput-object v0, p0, Lkmj;->b:Llyt;

    .line 1338
    :cond_1
    iget-object v0, p0, Lkmj;->b:Llyt;

    invoke-virtual {p1, v0}, Llxy;->a(Llyi;)V

    goto :goto_0

    .line 1342
    :sswitch_2
    invoke-virtual {p1}, Llxy;->j()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lkmj;->c:Ljava/lang/String;

    goto :goto_0

    .line 1325
    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_0
        0xa -> :sswitch_1
        0x12 -> :sswitch_2
    .end sparse-switch
.end method

.method public a(Llxz;)V
    .locals 2

    .prologue
    .line 296
    iget-object v0, p0, Lkmj;->b:Llyt;

    if-eqz v0, :cond_0

    .line 297
    const/4 v0, 0x1

    iget-object v1, p0, Lkmj;->b:Llyt;

    invoke-virtual {p1, v0, v1}, Llxz;->b(ILlyi;)V

    .line 299
    :cond_0
    iget-object v0, p0, Lkmj;->c:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 300
    const/4 v0, 0x2

    iget-object v1, p0, Lkmj;->c:Ljava/lang/String;

    invoke-virtual {p1, v0, v1}, Llxz;->a(ILjava/lang/String;)V

    .line 302
    :cond_1
    invoke-super {p0, p1}, Llyb;->a(Llxz;)V

    .line 303
    return-void
.end method

.method protected b()I
    .locals 3

    .prologue
    .line 307
    invoke-super {p0}, Llyb;->b()I

    move-result v0

    .line 308
    iget-object v1, p0, Lkmj;->b:Llyt;

    if-eqz v1, :cond_0

    .line 309
    const/4 v1, 0x1

    iget-object v2, p0, Lkmj;->b:Llyt;

    .line 310
    invoke-static {v1, v2}, Llxz;->d(ILlyi;)I

    move-result v1

    add-int/2addr v0, v1

    .line 312
    :cond_0
    iget-object v1, p0, Lkmj;->c:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 313
    const/4 v1, 0x2

    iget-object v2, p0, Lkmj;->c:Ljava/lang/String;

    .line 314
    invoke-static {v1, v2}, Llxz;->b(ILjava/lang/String;)I

    move-result v1

    add-int/2addr v0, v1

    .line 316
    :cond_1
    return v0
.end method
