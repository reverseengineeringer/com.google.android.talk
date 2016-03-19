.class public final Lbah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lazm;
.implements Lioq;
.implements Lioz;


# instance fields
.field a:Ljava/lang/String;

.field b:Landroid/content/Context;

.field c:I

.field d:Lazr;

.field e:Lbaz;

.field f:Landroid/content/BroadcastReceiver;

.field g:Landroid/app/ProgressDialog;

.field h:Landroid/net/NetworkInfo;

.field i:Lbba;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lba;Liog;Lcom/google/android/libraries/social/settings/PreferenceCategory;I)V
    .locals 4

    .prologue
    .line 66
    invoke-static {p1, p4}, Laal;->a(Landroid/content/Context;I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 103
    :goto_0
    return-void

    .line 70
    :cond_0
    iput-object p1, p0, Lbah;->b:Landroid/content/Context;

    .line 72
    new-instance v0, Lbaz;

    iget-object v1, p0, Lbah;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Lbaz;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lbah;->e:Lbaz;

    .line 73
    iget-object v0, p0, Lbah;->e:Lbaz;

    iget-object v1, p0, Lbah;->b:Landroid/content/Context;

    sget v2, Laal;->iP:I

    .line 74
    invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 73
    invoke-virtual {v0, v1}, Lbaz;->c(Ljava/lang/CharSequence;)V

    .line 75
    iget-object v0, p0, Lbah;->e:Lbaz;

    invoke-virtual {p3, v0}, Lcom/google/android/libraries/social/settings/PreferenceCategory;->c(Lijc;)Z

    .line 77
    const-string v0, "connectivity"

    .line 78
    invoke-virtual {p1, v0}, Lba;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;

    move-result-object v0

    iput-object v0, p0, Lbah;->h:Landroid/net/NetworkInfo;

    .line 79
    new-instance v0, Lbba;

    iget-object v1, p0, Lbah;->b:Landroid/content/Context;

    invoke-direct {v0, v1, p4}, Lbba;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lbah;->i:Lbba;

    .line 80
    invoke-static {}, Lezm;->f()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lbah;->a:Ljava/lang/String;

    .line 81
    iput p4, p0, Lbah;->c:I

    .line 83
    new-instance v0, Lbai;

    invoke-direct {v0, p0, p1}, Lbai;-><init>(Lbah;Lba;)V

    iput-object v0, p0, Lbah;->d:Lazr;

    .line 98
    invoke-virtual {p1}, Lba;->f()Lcj;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    new-instance v3, Lbao;

    .line 1108
    invoke-direct {v3, p0}, Lbao;-><init>(Lbah;)V

    .line 99
    invoke-virtual {v0, v1, v2, v3}, Lcj;->b(ILandroid/os/Bundle;Lck;)Lfe;

    move-result-object v0

    .line 101
    invoke-virtual {v0}, Lfe;->u()V

    .line 102
    invoke-virtual {p2, p0}, Liog;->a(Lioz;)Lioz;

    goto :goto_0
.end method

.method a(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 322
    iget-object v0, p0, Lbah;->i:Lbba;

    const/16 v1, 0x8c6

    invoke-virtual {v0, v1}, Lbba;->a(I)V

    .line 325
    iget-object v0, p0, Lbah;->b:Landroid/content/Context;

    const-string v1, ""

    iget-object v2, p0, Lbah;->b:Landroid/content/Context;

    sget v3, Laal;->iB:I

    .line 326
    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x1

    .line 325
    invoke-static {v0, v1, v2, v3}, Landroid/app/ProgressDialog;->show(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Z)Landroid/app/ProgressDialog;

    move-result-object v0

    iput-object v0, p0, Lbah;->g:Landroid/app/ProgressDialog;

    .line 328
    new-instance v0, Lban;

    invoke-direct {v0, p0}, Lban;-><init>(Lbah;)V

    iput-object v0, p0, Lbah;->f:Landroid/content/BroadcastReceiver;

    .line 345
    iget-object v0, p0, Lbah;->b:Landroid/content/Context;

    invoke-static {v0}, Lfi;->a(Landroid/content/Context;)Lfi;

    move-result-object v0

    iget-object v1, p0, Lbah;->f:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "set_callerid_outcome"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Lfi;->a(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 347
    iget-object v0, p0, Lbah;->b:Landroid/content/Context;

    const-class v1, Lazk;

    invoke-static {v0, v1}, Lilh;->b(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lazk;

    iget v1, p0, Lbah;->c:I

    const/4 v2, 0x0

    .line 348
    invoke-interface {v0, v1, v2, p1}, Lazk;->a(IZLjava/lang/String;)V

    .line 349
    return-void
.end method

.method a(Lkth;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkth",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 229
    invoke-virtual {p1}, Lkth;->size()I

    move-result v0

    new-array v3, v0, [Ljava/lang/String;

    .line 230
    const/4 v0, 0x0

    .line 231
    invoke-virtual {p1}, Lkth;->a()Lkyp;

    move-result-object v4

    move v1, v0

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 232
    add-int/lit8 v2, v1, 0x1

    .line 233
    invoke-static {v0}, Lezm;->p(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v3, v1

    move v1, v2

    .line 234
    goto :goto_0

    .line 235
    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    iget-object v1, p0, Lbah;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    sget v1, Laal;->iC:I

    .line 236
    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lbal;

    invoke-direct {v1, p0, v3}, Lbal;-><init>(Lbah;[Ljava/lang/String;)V

    .line 237
    invoke-virtual {v0, v3, v1}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const/high16 v1, 0x1040000

    const/4 v2, 0x0

    .line 244
    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    .line 245
    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;

    .line 246
    return-void
.end method

.method public h_()V
    .locals 2

    .prologue
    .line 136
    iget v0, p0, Lbah;->c:I

    iget-object v1, p0, Lbah;->d:Lazr;

    invoke-static {v0, v1}, Lazq;->a(ILazr;)V

    .line 139
    iget-object v0, p0, Lbah;->f:Landroid/content/BroadcastReceiver;

    if-eqz v0, :cond_0

    .line 140
    iget-object v0, p0, Lbah;->b:Landroid/content/Context;

    invoke-static {v0}, Lfi;->a(Landroid/content/Context;)Lfi;

    move-result-object v0

    iget-object v1, p0, Lbah;->f:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Lfi;->a(Landroid/content/BroadcastReceiver;)V

    .line 142
    :cond_0
    return-void
.end method
