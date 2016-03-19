.class Ldbd;
.super Lbis;
.source "SourceFile"


# instance fields
.field private c:I

.field final synthetic d:Ldas;


# direct methods
.method public constructor <init>(Ldas;IZZ)V
    .locals 6

    .prologue
    .line 416
    const/4 v4, 0x1

    sget v5, Lfcj;->a:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    invoke-direct/range {v0 .. v5}, Ldbd;-><init>(Ldas;IZZI)V

    .line 417
    return-void
.end method

.method public constructor <init>(Ldas;IZZI)V
    .locals 6

    .prologue
    .line 420
    iput-object p1, p0, Ldbd;->d:Ldas;

    .line 421
    add-int/lit8 v2, p2, -0x1

    sget v0, Ldbg;->f:I

    add-int/lit8 v3, v0, -0x1

    move-object v0, p0

    move-object v1, p1

    move v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lbis;-><init>(Ldci;IIZZ)V

    .line 422
    iput p5, p0, Ldbd;->c:I

    .line 423
    return-void
.end method


# virtual methods
.method protected a(Laao;)V
    .locals 0

    .prologue
    .line 427
    return-void
.end method

.method protected bridge synthetic a(Laao;Landroid/database/Cursor;)V
    .locals 0

    .prologue
    .line 413
    check-cast p2, Lbec;

    invoke-virtual {p0, p1, p2}, Ldbd;->a(Laao;Lbec;)V

    return-void
.end method

.method protected a(Laao;Lbec;)V
    .locals 6

    .prologue
    .line 431
    iget-object v0, p1, Laao;->a:Landroid/view/View;

    check-cast v0, Lfce;

    .line 435
    invoke-virtual {v0}, Lfce;->j()V

    .line 436
    invoke-virtual {v0}, Lfce;->k()V

    .line 438
    invoke-interface {p2}, Lbec;->a()Lbdy;

    move-result-object v1

    .line 439
    iget-object v2, p0, Ldbd;->d:Ldas;

    .line 1046
    iget-object v2, v2, Ldas;->i:Ljava/lang/String;

    .line 439
    iput-object v2, v1, Lbdy;->a:Ljava/lang/String;

    .line 440
    iget-object v2, p0, Ldbd;->d:Ldas;

    .line 2046
    iget-object v2, v2, Ldas;->f:Laxq;

    .line 440
    invoke-virtual {v2, v1}, Laxq;->c(Lbdy;)Z

    move-result v2

    .line 441
    iget-object v3, p0, Ldbd;->d:Ldas;

    .line 3046
    iget-object v3, v3, Ldas;->f:Laxq;

    .line 441
    invoke-virtual {v3, v1}, Laxq;->b(Lbdy;)Z

    move-result v3

    .line 443
    iget-object v4, p0, Ldbd;->d:Ldas;

    .line 4046
    iget-object v4, v4, Ldas;->i:Ljava/lang/String;

    .line 443
    iget v5, p0, Ldbd;->c:I

    invoke-virtual {v0, v1, v4, v3, v5}, Lfce;->a(Lbdy;Ljava/lang/String;ZI)V

    .line 444
    const/4 v1, 0x0

    invoke-virtual {v0, v2, v1}, Lfce;->a(ZZ)V

    .line 445
    return-void
.end method
