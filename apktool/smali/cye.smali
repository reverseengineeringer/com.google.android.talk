.class final Lcye;
.super Lcyd;
.source "SourceFile"


# instance fields
.field final synthetic b:Lcyb;


# direct methods
.method constructor <init>(Lcyb;)V
    .locals 0

    .prologue
    .line 625
    iput-object p1, p0, Lcye;->b:Lcyb;

    invoke-direct {p0, p1}, Lcyd;-><init>(Lcyb;)V

    return-void
.end method


# virtual methods
.method public a(Leys;Lexs;ZLbhs;Z)V
    .locals 2

    .prologue
    .line 1188
    const-string v0, "Expected null"

    invoke-static {v0, p2}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 631
    if-eqz p3, :cond_0

    .line 632
    invoke-virtual {p1}, Leys;->d()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 641
    :goto_0
    iget-object v1, p0, Lcye;->b:Lcyb;

    iget-object v1, v1, Lcyb;->u:Lcy;

    invoke-virtual {v1, v0}, Lcy;->a(Landroid/graphics/Bitmap;)Lcy;

    .line 642
    invoke-super/range {p0 .. p5}, Lcyd;->a(Leys;Lexs;ZLbhs;Z)V

    .line 643
    return-void

    .line 634
    :cond_0
    iget-object v0, p0, Lcye;->b:Lcyb;

    .line 635
    invoke-virtual {v0}, Lcyb;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 636
    sget-object v0, Lbeo;->b:Lbeo;

    .line 634
    :goto_1
    invoke-static {v0}, Lbfq;->a(Lbeo;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_0

    .line 638
    :cond_1
    iget-object v0, p0, Lcye;->b:Lcyb;

    .line 637
    invoke-virtual {v0}, Lcyb;->s()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 638
    sget-object v0, Lbeo;->c:Lbeo;

    goto :goto_1

    .line 639
    :cond_2
    sget-object v0, Lbeo;->a:Lbeo;

    goto :goto_1
.end method
