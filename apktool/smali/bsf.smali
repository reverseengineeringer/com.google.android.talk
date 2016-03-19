.class final Lbsf;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhsb;


# instance fields
.field final synthetic a:Lbse;


# direct methods
.method constructor <init>(Lbse;)V
    .locals 0

    .prologue
    .line 52
    iput-object p1, p0, Lbsf;->a:Lbse;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 3

    .prologue
    .line 55
    const/4 v0, -0x1

    if-ne p1, v0, :cond_0

    .line 56
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v0

    .line 57
    const/4 v1, 0x1

    invoke-static {v1}, Lbmo;->a(I)Ljava/lang/String;

    move-result-object v1

    .line 59
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, v0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v0

    .line 60
    iget-object v1, p0, Lbsf;->a:Lbse;

    .line 1049
    iget-object v1, v1, Lbse;->context:Lill;

    .line 61
    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    .line 60
    invoke-static {v1, v0}, Lbqt;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 62
    iget-object v1, p0, Lbsf;->a:Lbse;

    .line 2049
    iget-object v1, v1, Lbse;->a:Lhsc;

    .line 62
    sget v2, Laal;->jR:I

    invoke-virtual {v1, v2, v0}, Lhsc;->a(ILandroid/content/Intent;)V

    .line 68
    :goto_0
    return-void

    .line 66
    :cond_0
    iget-object v0, p0, Lbsf;->a:Lbse;

    .line 3107
    iget-object v0, v0, Lbse;->binder:Lilh;

    const-class v1, Lbvc;

    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvc;

    const/16 v1, 0x924

    invoke-virtual {v0, v1}, Lbvc;->a(I)V

    goto :goto_0
.end method
