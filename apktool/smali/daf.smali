.class final Ldaf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lfck;


# instance fields
.field final synthetic a:Ldad;


# direct methods
.method constructor <init>(Ldad;)V
    .locals 0

    .prologue
    .line 273
    iput-object p1, p0, Ldaf;->a:Ldad;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lfce;)V
    .locals 4

    .prologue
    .line 276
    invoke-virtual {p1}, Lfce;->a()Lbdy;

    move-result-object v2

    .line 277
    iget-object v0, p0, Ldaf;->a:Ldad;

    .line 1065
    iget-object v0, v0, Ldad;->c:Laxq;

    .line 277
    invoke-virtual {v0, v2}, Laxq;->c(Lbdy;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 278
    iget-object v0, p0, Ldaf;->a:Ldad;

    .line 2065
    iget-object v0, v0, Ldad;->c:Laxq;

    .line 278
    invoke-virtual {v0, v2}, Laxq;->b(Lbdy;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 279
    iget-object v0, p0, Ldaf;->a:Ldad;

    .line 3065
    iget-object v0, v0, Ldad;->f:Lbjp;

    .line 279
    invoke-interface {v0, v2}, Lbjp;->b(Lbdy;)V

    .line 307
    :cond_0
    :goto_0
    return-void

    .line 284
    :cond_1
    const/4 v0, 0x0

    .line 285
    sget-object v1, Ldag;->a:[I

    invoke-virtual {p1}, Lfce;->b()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    aget v1, v1, v3

    packed-switch v1, :pswitch_data_0

    move v1, v0

    .line 299
    :goto_1
    if-eqz v1, :cond_2

    .line 300
    iget-object v0, p0, Ldaf;->a:Ldad;

    .line 4065
    iget-object v0, v0, Ldad;->binder:Lilh;

    .line 300
    const-class v3, Lhba;

    invoke-virtual {v0, v3}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lhba;

    iget-object v3, p0, Ldaf;->a:Ldad;

    .line 5065
    iget-object v3, v3, Ldad;->a:Lhpu;

    .line 301
    invoke-interface {v3}, Lhpu;->a()I

    move-result v3

    invoke-interface {v0, v3}, Lhba;->a(I)Lhaw;

    move-result-object v0

    .line 302
    invoke-interface {v0, v1}, Lhaw;->a(I)Lhax;

    move-result-object v0

    .line 303
    invoke-interface {v0}, Lhax;->d()V

    .line 305
    :cond_2
    iget-object v0, p0, Ldaf;->a:Ldad;

    .line 6065
    iget-object v0, v0, Ldad;->f:Lbjp;

    .line 305
    invoke-interface {v0, v2}, Lbjp;->a(Lbdy;)V

    goto :goto_0

    .line 287
    :pswitch_0
    const/16 v0, 0x9ea

    move v1, v0

    .line 289
    goto :goto_1

    .line 291
    :pswitch_1
    const/16 v0, 0x9ec

    move v1, v0

    .line 293
    goto :goto_1

    .line 295
    :pswitch_2
    const/16 v0, 0x9eb

    move v1, v0

    goto :goto_1

    .line 285
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
