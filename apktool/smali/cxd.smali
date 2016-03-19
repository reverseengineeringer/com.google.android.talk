.class public final Lcxd;
.super Lehr;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 75
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lehr;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 80
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 81
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 82
    const-string v1, "conversationIdSetString"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 83
    invoke-virtual {p0, p1, v0}, Lcxd;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 75
    invoke-super {p0}, Lehr;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 3

    .prologue
    .line 88
    const-string v0, "account_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 89
    const-string v0, "conversationIdSetString"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 91
    sget-object v2, Lcxb;->b:Lcxf;

    .line 1201
    invoke-static {v0}, Lexn;->a(Ljava/lang/String;)Lexn;

    move-result-object v0

    .line 1203
    new-instance v2, Lbfz;

    invoke-direct {v2, p1, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    invoke-static {v2, v0}, Lbft;->c(Lbfz;Lexn;)I

    move-result v0

    .line 1205
    if-lez v0, :cond_0

    const-class v0, Lekq;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekq;

    invoke-virtual {v0, v1}, Lekq;->b(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1206
    invoke-static {p1, v1}, Lcxf;->a(Landroid/content/Context;I)V

    .line 92
    :cond_0
    return-void
.end method
