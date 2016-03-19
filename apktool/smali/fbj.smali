.class final Lfbj;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lbhv;


# instance fields
.field final synthetic a:Lfbg;


# direct methods
.method constructor <init>(Lfbg;)V
    .locals 0

    .prologue
    .line 738
    iput-object p1, p0, Lfbj;->a:Lfbg;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Leys;Lexs;ZLbhs;Z)V
    .locals 2

    .prologue
    .line 746
    iget-object v0, p0, Lfbj;->a:Lfbg;

    .line 1080
    iget-object v0, v0, Lfbg;->d:Lbhs;

    .line 746
    if-eq v0, p4, :cond_1

    .line 748
    if-eqz p1, :cond_0

    .line 749
    invoke-virtual {p1}, Leys;->b()V

    .line 772
    :cond_0
    :goto_0
    return-void

    .line 755
    :cond_1
    iget-object v0, p0, Lfbj;->a:Lfbg;

    .line 2080
    const/4 v1, 0x0

    iput-object v1, v0, Lfbg;->d:Lbhs;

    .line 757
    if-eqz p3, :cond_0

    .line 761
    if-eqz p2, :cond_2

    .line 762
    iget-object v0, p0, Lfbj;->a:Lfbg;

    new-instance v1, Lfcd;

    invoke-direct {v1, p2}, Lfcd;-><init>(Lexs;)V

    invoke-virtual {v0, v1}, Lfbg;->b(Landroid/graphics/drawable/Drawable;)V

    goto :goto_0

    .line 2198
    :cond_2
    const-string v0, "Expected non-null"

    invoke-static {v0, p1}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 765
    invoke-virtual {p1}, Leys;->e()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 3198
    const-string v1, "Expected non-null"

    invoke-static {v1, v0}, Lhbs;->b(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 767
    iget-object v0, p0, Lfbj;->a:Lfbg;

    .line 4080
    iget-object v0, v0, Lfbg;->e:Leys;

    .line 4188
    const-string v1, "Expected null"

    invoke-static {v1, v0}, Lhbs;->a(Ljava/lang/String;Ljava/lang/Object;)V

    .line 768
    iget-object v0, p0, Lfbj;->a:Lfbg;

    .line 5080
    iput-object p1, v0, Lfbg;->e:Leys;

    .line 769
    iget-object v0, p0, Lfbj;->a:Lfbg;

    iget-object v1, p0, Lfbj;->a:Lfbg;

    .line 6080
    iget-object v1, v1, Lfbg;->e:Leys;

    .line 769
    invoke-virtual {v1}, Leys;->e()Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-virtual {v0, v1}, Lfbg;->a(Landroid/graphics/Bitmap;)V

    .line 770
    iget-object v0, p0, Lfbj;->a:Lfbg;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lfbg;->c(I)V

    goto :goto_0
.end method
