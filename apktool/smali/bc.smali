.class final Lbc;
.super Lbf;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lbf",
        "<",
        "Lba;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lba;


# direct methods
.method public constructor <init>(Lba;)V
    .locals 0

    .prologue
    .line 876
    iput-object p1, p0, Lbc;->a:Lba;

    .line 877
    invoke-direct {p0, p1}, Lbf;-><init>(Lba;)V

    .line 878
    return-void
.end method


# virtual methods
.method public a(I)Landroid/view/View;
    .locals 1

    .prologue
    .line 942
    iget-object v0, p0, Lbc;->a:Lba;

    invoke-virtual {v0, p1}, Lba;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public a(Lav;)V
    .locals 1

    .prologue
    .line 936
    iget-object v0, p0, Lbc;->a:Lba;

    invoke-virtual {v0, p1}, Lba;->a(Lav;)V

    .line 937
    return-void
.end method

.method public a(Lav;Landroid/content/Intent;I)V
    .locals 1

    .prologue
    .line 907
    iget-object v0, p0, Lbc;->a:Lba;

    invoke-virtual {v0, p1, p2, p3}, Lba;->a(Lav;Landroid/content/Intent;I)V

    .line 908
    return-void
.end method

.method public a(Lav;[Ljava/lang/String;I)V
    .locals 3

    .prologue
    .line 913
    iget-object v0, p0, Lbc;->a:Lba;

    .line 1863
    const/4 v1, -0x1

    if-ne p3, v1, :cond_0

    .line 1864
    invoke-static {v0, p2, p3}, Laj;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    .line 1865
    :goto_0
    return-void

    .line 1867
    :cond_0
    and-int/lit16 v1, p3, -0x100

    if-eqz v1, :cond_1

    .line 1868
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can only use lower 8 bits for requestCode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1870
    :cond_1
    const/4 v1, 0x1

    iput-boolean v1, v0, Lba;->i:Z

    .line 1871
    iget v1, p1, Lav;->p:I

    add-int/lit8 v1, v1, 0x1

    shl-int/lit8 v1, v1, 0x8

    and-int/lit16 v2, p3, 0xff

    add-int/2addr v1, v2

    invoke-static {v0, p2, v1}, Laj;->a(Landroid/app/Activity;[Ljava/lang/String;I)V

    goto :goto_0
.end method

.method public a(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 882
    iget-object v0, p0, Lbc;->a:Lba;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Lba;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 883
    return-void
.end method

.method public a()Z
    .locals 1

    .prologue
    .line 947
    iget-object v0, p0, Lbc;->a:Lba;

    invoke-virtual {v0}, Lba;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 948
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/Window;->peekDecorView()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public a(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 919
    iget-object v0, p0, Lbc;->a:Lba;

    .line 2362
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x17

    if-lt v1, v2, :cond_0

    .line 3037
    invoke-virtual {v0, p1}, Landroid/app/Activity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v0

    .line 2363
    :goto_0
    return v0

    .line 2365
    :cond_0
    const/4 v0, 0x0

    .line 919
    goto :goto_0
.end method

.method public b()Z
    .locals 1

    .prologue
    .line 887
    iget-object v0, p0, Lbc;->a:Lba;

    invoke-virtual {v0}, Lba;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public c()Landroid/view/LayoutInflater;
    .locals 2

    .prologue
    .line 892
    iget-object v0, p0, Lbc;->a:Lba;

    invoke-virtual {v0}, Lba;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lbc;->a:Lba;

    invoke-virtual {v0, v1}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public d()V
    .locals 1

    .prologue
    .line 902
    iget-object v0, p0, Lbc;->a:Lba;

    invoke-virtual {v0}, Lba;->y_()V

    .line 903
    return-void
.end method

.method public e()Z
    .locals 1

    .prologue
    .line 925
    iget-object v0, p0, Lbc;->a:Lba;

    invoke-virtual {v0}, Lba;->getWindow()Landroid/view/Window;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public f()I
    .locals 1

    .prologue
    .line 930
    iget-object v0, p0, Lbc;->a:Lba;

    invoke-virtual {v0}, Lba;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 931
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    invoke-virtual {v0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v0

    iget v0, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_0
.end method

.method public synthetic g()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 3897
    iget-object v0, p0, Lbc;->a:Lba;

    .line 875
    return-object v0
.end method
