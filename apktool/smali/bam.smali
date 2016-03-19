.class final Lbam;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lijh;


# instance fields
.field final synthetic a:Lazo;

.field final synthetic b:Landroid/app/AlertDialog;

.field final synthetic c:Lbah;


# direct methods
.method constructor <init>(Lbah;Lazo;Landroid/app/AlertDialog;)V
    .locals 0

    .prologue
    .line 293
    iput-object p1, p0, Lbam;->c:Lbah;

    iput-object p2, p0, Lbam;->a:Lazo;

    iput-object p3, p0, Lbam;->b:Landroid/app/AlertDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 5

    .prologue
    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 299
    iget-object v2, p0, Lbam;->c:Lbah;

    .line 1047
    iget-object v2, v2, Lbah;->a:Ljava/lang/String;

    .line 299
    if-eqz v2, :cond_0

    iget-object v2, p0, Lbam;->c:Lbah;

    .line 2047
    iget-object v2, v2, Lbah;->a:Ljava/lang/String;

    .line 300
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    iget-object v2, p0, Lbam;->c:Lbah;

    .line 3047
    iget-object v2, v2, Lbah;->a:Ljava/lang/String;

    .line 301
    iget-object v3, p0, Lbam;->a:Lazo;

    invoke-virtual {v3}, Lazo;->c()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 302
    :cond_0
    iget-object v0, p0, Lbam;->b:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    .line 311
    :cond_1
    :goto_0
    return v1

    .line 306
    :cond_2
    iget-object v2, p0, Lbam;->c:Lbah;

    .line 4263
    iget-object v3, v2, Lbah;->h:Landroid/net/NetworkInfo;

    if-eqz v3, :cond_3

    iget-object v3, v2, Lbah;->h:Landroid/net/NetworkInfo;

    invoke-virtual {v3}, Landroid/net/NetworkInfo;->isConnected()Z

    move-result v3

    if-nez v3, :cond_4

    .line 4264
    :cond_3
    iget-object v3, v2, Lbah;->b:Landroid/content/Context;

    iget-object v2, v2, Lbah;->b:Landroid/content/Context;

    sget v4, Laal;->iz:I

    invoke-virtual {v2, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {v3, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    .line 4266
    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    .line 306
    :goto_1
    if-eqz v0, :cond_1

    .line 310
    iget-object v0, p0, Lbam;->c:Lbah;

    iget-object v2, p0, Lbam;->a:Lazo;

    invoke-virtual {v2}, Lazo;->c()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lbah;->a(Ljava/lang/String;)V

    goto :goto_0

    :cond_4
    move v0, v1

    .line 4269
    goto :goto_1
.end method
