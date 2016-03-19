.class public final Lhva;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhuy;


# instance fields
.field a:Landroid/content/Context;

.field b:Lhye;

.field private c:I

.field private d:Lhvb;

.field private e:Lhvd;

.field private f:Lhve;

.field private g:Ligp;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .prologue
    .line 200
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 192
    const/4 v0, -0x1

    iput v0, p0, Lhva;->c:I

    .line 193
    const/4 v0, 0x0

    iput-object v0, p0, Lhva;->d:Lhvb;

    .line 195
    new-instance v0, Lhvd;

    .line 1113
    invoke-direct {v0, p0}, Lhvd;-><init>(Lhva;)V

    .line 195
    iput-object v0, p0, Lhva;->e:Lhvd;

    .line 196
    new-instance v0, Lhve;

    .line 1156
    invoke-direct {v0, p0}, Lhve;-><init>(Lhva;)V

    .line 196
    iput-object v0, p0, Lhva;->f:Lhve;

    .line 198
    new-instance v0, Lhvc;

    .line 2092
    invoke-direct {v0}, Lhvc;-><init>()V

    .line 198
    iput-object v0, p0, Lhva;->g:Ligp;

    .line 201
    iput-object p1, p0, Lhva;->a:Landroid/content/Context;

    .line 203
    invoke-static {p1}, Lilh;->b(Landroid/content/Context;)Lilh;

    move-result-object v1

    .line 204
    const-class v0, Lhye;

    invoke-virtual {v1, v0}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhye;

    iput-object v0, p0, Lhva;->b:Lhye;

    .line 205
    const-class v0, Lhuz;

    invoke-virtual {v1, v0}, Lilh;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhuz;

    .line 206
    if-eqz v0, :cond_0

    .line 207
    invoke-virtual {v0}, Lhuz;->a()I

    move-result v0

    iput v0, p0, Lhva;->c:I

    .line 209
    :cond_0
    return-void
.end method

.method private a(Lhvb;Ligr;)Licw;
    .locals 2

    .prologue
    .line 330
    iget-object v0, p0, Lhva;->b:Lhye;

    invoke-interface {v0, p1}, Lhye;->a(Ligq;)Ligp;

    move-result-object v0

    check-cast v0, Licw;

    .line 331
    if-nez v0, :cond_0

    .line 332
    new-instance v0, Licw;

    iget-object v1, p0, Lhva;->b:Lhye;

    invoke-direct {v0, v1, p1}, Licw;-><init>(Lhye;Licy;)V

    .line 333
    invoke-virtual {p1}, Lhvb;->b()I

    move-result v1

    .line 3360
    packed-switch v1, :pswitch_data_0

    .line 6219
    const/4 v1, 0x0

    iput-object v1, v0, Lhya;->c:Lhyc;

    .line 339
    :goto_0
    iget-object v1, p0, Lhva;->b:Lhye;

    invoke-interface {v1, v0, p2}, Lhye;->a(Ligp;Ligr;)V

    .line 340
    return-object v0

    .line 3362
    :pswitch_0
    iget-object v1, p0, Lhva;->e:Lhvd;

    .line 4219
    iput-object v1, v0, Lhya;->c:Lhyc;

    goto :goto_0

    .line 3366
    :pswitch_1
    iget-object v1, p0, Lhva;->f:Lhve;

    .line 5219
    iput-object v1, v0, Lhya;->c:Lhyc;

    goto :goto_0

    .line 336
    :cond_0
    iget-object v1, p0, Lhva;->d:Lhvb;

    invoke-virtual {p1, v1}, Lhvb;->a(Licy;)V

    .line 337
    iput-object p1, p0, Lhva;->d:Lhvb;

    goto :goto_0

    .line 3360
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method


# virtual methods
.method public a(Landroid/content/Context;Ljava/lang/String;IILigr;)Ligp;
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 240
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lhva;->g:Ligp;

    invoke-interface {p5, v0}, Ligr;->a(Ligp;)V

    .line 242
    iget-object v0, p0, Lhva;->g:Ligp;

    .line 248
    :goto_0
    return-object v0

    .line 245
    :cond_0
    sget-object v0, Lida;->a:Lida;

    invoke-static {p1, p2, v0}, Licu;->a(Landroid/content/Context;Ljava/lang/String;Lida;)Licu;

    move-result-object v2

    .line 246
    iget v4, p0, Lhva;->c:I

    .line 2306
    iget-object v0, p0, Lhva;->d:Lhvb;

    if-eqz v0, :cond_1

    .line 2307
    iget-object v3, p0, Lhva;->d:Lhvb;

    .line 2308
    iget-object v0, p0, Lhva;->d:Lhvb;

    invoke-virtual {v0}, Lhvb;->h()Licy;

    move-result-object v0

    check-cast v0, Lhvb;

    iput-object v0, p0, Lhva;->d:Lhvb;

    .line 2309
    const/4 v0, 0x0

    invoke-virtual {v3, v0}, Lhvb;->a(Licy;)V

    move-object v0, v3

    .line 2314
    :goto_1
    iget-object v3, p0, Lhva;->a:Landroid/content/Context;

    .line 3058
    packed-switch p3, :pswitch_data_0

    move v3, v1

    :goto_2
    move v5, p4

    .line 2317
    invoke-virtual/range {v0 .. v5}, Lhvb;->a(ILicu;III)V

    .line 248
    invoke-direct {p0, v0, p5}, Lhva;->a(Lhvb;Ligr;)Licw;

    move-result-object v0

    goto :goto_0

    .line 2311
    :cond_1
    new-instance v0, Lhvb;

    invoke-direct {v0, p0}, Lhvb;-><init>(Lhva;)V

    goto :goto_1

    .line 3059
    :pswitch_0
    invoke-static {v3}, Laal;->z(Landroid/content/Context;)I

    move-result v3

    goto :goto_2

    .line 3060
    :pswitch_1
    invoke-static {v3}, Laal;->B(Landroid/content/Context;)I

    move-result v3

    goto :goto_2

    .line 3061
    :pswitch_2
    invoke-static {v3}, Laal;->D(Landroid/content/Context;)I

    move-result v3

    goto :goto_2

    .line 3062
    :pswitch_3
    invoke-static {v3}, Laal;->F(Landroid/content/Context;)I

    move-result v3

    goto :goto_2

    .line 3058
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
