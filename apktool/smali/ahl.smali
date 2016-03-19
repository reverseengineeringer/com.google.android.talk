.class public final Lahl;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private b:Lalh;

.field private c:Lamd;

.field private d:Laly;

.field private e:Lane;

.field private f:Lanm;

.field private g:Lanm;

.field private h:Lamv;

.field private i:Lang;

.field private j:Lati;

.field private k:I

.field private l:Lauk;


# direct methods
.method constructor <init>(Landroid/content/Context;)V
    .locals 1

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 39
    const/4 v0, 0x4

    iput v0, p0, Lahl;->k:I

    .line 40
    new-instance v0, Lauk;

    invoke-direct {v0}, Lauk;-><init>()V

    iput-object v0, p0, Lahl;->l:Lauk;

    .line 43
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lahl;->a:Landroid/content/Context;

    .line 44
    return-void
.end method


# virtual methods
.method a()Lahk;
    .locals 10

    .prologue
    const/4 v9, 0x1

    .line 265
    iget-object v0, p0, Lahl;->f:Lanm;

    if-nez v0, :cond_0

    .line 1089
    invoke-static {}, Lanm;->a()I

    move-result v0

    const-string v1, "source"

    sget-object v2, Lanq;->d:Lanq;

    .line 1107
    new-instance v3, Lanm;

    const/4 v4, 0x0

    invoke-direct {v3, v0, v1, v2, v4}, Lanm;-><init>(ILjava/lang/String;Lanq;Z)V

    .line 266
    iput-object v3, p0, Lahl;->f:Lanm;

    .line 268
    :cond_0
    iget-object v0, p0, Lahl;->g:Lanm;

    if-nez v0, :cond_1

    .line 2057
    const-string v0, "disk-cache"

    sget-object v1, Lanq;->d:Lanq;

    .line 2075
    new-instance v2, Lanm;

    invoke-direct {v2, v9, v0, v1, v9}, Lanm;-><init>(ILjava/lang/String;Lanq;Z)V

    .line 269
    iput-object v2, p0, Lahl;->g:Lanm;

    .line 272
    :cond_1
    iget-object v0, p0, Lahl;->i:Lang;

    if-nez v0, :cond_2

    .line 273
    new-instance v0, Lanh;

    iget-object v1, p0, Lahl;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lanh;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0}, Lanh;->a()Lang;

    move-result-object v0

    iput-object v0, p0, Lahl;->i:Lang;

    .line 276
    :cond_2
    iget-object v0, p0, Lahl;->j:Lati;

    if-nez v0, :cond_3

    .line 277
    new-instance v0, Lati;

    invoke-direct {v0}, Lati;-><init>()V

    iput-object v0, p0, Lahl;->j:Lati;

    .line 280
    :cond_3
    iget-object v0, p0, Lahl;->c:Lamd;

    if-nez v0, :cond_4

    .line 281
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_9

    .line 282
    iget-object v0, p0, Lahl;->i:Lang;

    invoke-virtual {v0}, Lang;->b()I

    move-result v0

    .line 283
    new-instance v1, Lamm;

    invoke-direct {v1, v0}, Lamm;-><init>(I)V

    iput-object v1, p0, Lahl;->c:Lamd;

    .line 289
    :cond_4
    :goto_0
    iget-object v0, p0, Lahl;->d:Laly;

    if-nez v0, :cond_5

    .line 290
    new-instance v0, Laly;

    iget-object v1, p0, Lahl;->i:Lang;

    invoke-virtual {v1}, Lang;->c()I

    move-result v1

    invoke-direct {v0, v1}, Laly;-><init>(I)V

    iput-object v0, p0, Lahl;->d:Laly;

    .line 293
    :cond_5
    iget-object v0, p0, Lahl;->e:Lane;

    if-nez v0, :cond_6

    .line 294
    new-instance v0, Land;

    iget-object v1, p0, Lahl;->i:Lang;

    invoke-virtual {v1}, Lang;->a()I

    move-result v1

    invoke-direct {v0, v1}, Land;-><init>(I)V

    iput-object v0, p0, Lahl;->e:Lane;

    .line 297
    :cond_6
    iget-object v0, p0, Lahl;->h:Lamv;

    if-nez v0, :cond_7

    .line 298
    new-instance v0, Lamv;

    iget-object v1, p0, Lahl;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lamv;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lahl;->h:Lamv;

    .line 301
    :cond_7
    iget-object v0, p0, Lahl;->b:Lalh;

    if-nez v0, :cond_8

    .line 302
    new-instance v0, Lalh;

    iget-object v1, p0, Lahl;->e:Lane;

    iget-object v2, p0, Lahl;->h:Lamv;

    iget-object v3, p0, Lahl;->g:Lanm;

    iget-object v4, p0, Lahl;->f:Lanm;

    invoke-direct {v0, v1, v2, v3, v4}, Lalh;-><init>(Lane;Lamv;Lanm;Lanm;)V

    iput-object v0, p0, Lahl;->b:Lalh;

    .line 305
    :cond_8
    new-instance v0, Lahk;

    iget-object v1, p0, Lahl;->a:Landroid/content/Context;

    iget-object v2, p0, Lahl;->b:Lalh;

    iget-object v3, p0, Lahl;->e:Lane;

    iget-object v4, p0, Lahl;->c:Lamd;

    iget-object v5, p0, Lahl;->d:Laly;

    iget-object v6, p0, Lahl;->j:Lati;

    iget v7, p0, Lahl;->k:I

    iget-object v8, p0, Lahl;->l:Lauk;

    .line 2828
    iput-boolean v9, v8, Laug;->t:Z

    .line 313
    check-cast v8, Lauk;

    invoke-direct/range {v0 .. v8}, Lahk;-><init>(Landroid/content/Context;Lalh;Lane;Lamd;Laly;Lati;ILauk;)V

    return-object v0

    .line 285
    :cond_9
    new-instance v0, Lame;

    invoke-direct {v0}, Lame;-><init>()V

    iput-object v0, p0, Lahl;->c:Lamd;

    goto :goto_0
.end method

.method public a(Lauk;)Lahl;
    .locals 0

    .prologue
    .line 160
    iput-object p1, p0, Lahl;->l:Lauk;

    .line 161
    return-object p0
.end method
