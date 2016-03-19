.class final Lbss;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lhsb;


# instance fields
.field final synthetic a:Lbsr;


# direct methods
.method constructor <init>(Lbsr;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lbss;->a:Lbsr;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onActivityResult(ILandroid/content/Intent;)V
    .locals 4

    .prologue
    .line 54
    const/4 v0, -0x1

    if-ne p1, v0, :cond_3

    if-eqz p2, :cond_3

    .line 55
    invoke-static {p2}, Laal;->a(Landroid/content/Intent;)Ljava/lang/String;

    move-result-object v2

    .line 57
    if-nez v2, :cond_0

    .line 84
    :goto_0
    return-void

    .line 60
    :cond_0
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 61
    iget-object v1, p0, Lbss;->a:Lbsr;

    .line 62
    invoke-virtual {v1}, Lbsr;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/ContentResolver;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1092
    invoke-static {v0}, Laal;->d(Ljava/lang/String;)Z

    move-result v3

    .line 65
    iget-object v0, p0, Lbss;->a:Lbsr;

    .line 2044
    iget-object v0, v0, Lbsr;->binder:Lilh;

    .line 65
    const-class v1, Lbvc;

    .line 66
    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvc;

    if-eqz v3, :cond_1

    .line 69
    const/16 v1, 0x917

    .line 67
    :goto_1
    invoke-virtual {v0, v1}, Lbvc;->a(I)V

    .line 72
    if-eqz v3, :cond_2

    .line 74
    iget-object v0, p0, Lbss;->a:Lbsr;

    .line 3044
    iget-object v0, v0, Lbsr;->context:Lill;

    .line 74
    invoke-static {v0, v2}, Lbqt;->b(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 76
    :goto_2
    iget-object v1, p0, Lbss;->a:Lbsr;

    .line 5044
    iget-object v1, v1, Lbsr;->a:Lhsc;

    .line 76
    sget v2, Laal;->jU:I

    invoke-virtual {v1, v2, v0}, Lhsc;->a(ILandroid/content/Intent;)V

    goto :goto_0

    .line 70
    :cond_1
    const/16 v1, 0x916

    goto :goto_1

    .line 75
    :cond_2
    iget-object v0, p0, Lbss;->a:Lbsr;

    .line 4044
    iget-object v0, v0, Lbsr;->context:Lill;

    .line 75
    invoke-static {v0, v2}, Lbqt;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    goto :goto_2

    .line 80
    :cond_3
    iget-object v0, p0, Lbss;->a:Lbsr;

    .line 6044
    iget-object v0, v0, Lbsr;->binder:Lilh;

    .line 80
    const-class v1, Lbvc;

    .line 81
    invoke-virtual {v0, v1}, Lilh;->a(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbvc;

    const/16 v1, 0x918

    .line 82
    invoke-virtual {v0, v1}, Lbvc;->a(I)V

    goto :goto_0
.end method
