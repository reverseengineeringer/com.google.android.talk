.class public final Lcxv;
.super Lehr;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 162
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lehr;-><init>(B)V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;ILjava/lang/String;)Landroid/content/Intent;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 167
    const-string v1, "account_id"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 168
    const-string v1, "conversationIdSetString"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 169
    invoke-super {p0, p1, v0}, Lehr;->b(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 162
    invoke-super {p0}, Lehr;->a()Ljava/lang/Class;

    move-result-object v0

    return-object v0
.end method

.method public a(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 174
    const-string v0, "account_id"

    const/4 v1, -0x1

    invoke-virtual {p2, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 175
    const-string v0, "conversationIdSetString"

    invoke-virtual {p2, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 176
    new-instance v2, Lbfz;

    invoke-direct {v2, p1, v1}, Lbfz;-><init>(Landroid/content/Context;I)V

    .line 178
    sget-object v3, Lcxt;->m:Lcxx;

    .line 1208
    invoke-static {v0}, Lexn;->a(Ljava/lang/String;)Lexn;

    move-result-object v3

    .line 1319
    sget-object v0, Ldvp;->v:Ldml;

    invoke-virtual {v0, v1}, Ldml;->b(I)Z

    move-result v0

    .line 1211
    if-eqz v0, :cond_1

    .line 1345
    sget-object v0, Ldvp;->x:Ldml;

    invoke-virtual {v0, v1}, Ldml;->b(I)Z

    move-result v0

    .line 1212
    if-eqz v0, :cond_1

    if-eqz v3, :cond_1

    .line 1214
    invoke-virtual {v3}, Lexn;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 1215
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1216
    invoke-static {v0}, Lbfz;->a(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 1217
    invoke-virtual {v2, v0, v7}, Lbfz;->a(Ljava/lang/String;Z)Ldne;

    goto :goto_0

    .line 1223
    :cond_1
    invoke-static {v2, v3}, Lbft;->a(Lbfz;Lexn;)I

    move-result v0

    .line 1224
    if-lez v0, :cond_2

    const-class v0, Lekq;

    invoke-static {p1, v0}, Lilh;->a(Landroid/content/Context;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lekq;

    invoke-virtual {v0, v1}, Lekq;->b(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1225
    invoke-static {p1, v1, v7, v6, v6}, Lcxx;->a(Landroid/content/Context;IZZZ)V

    .line 179
    :cond_2
    return-void
.end method
