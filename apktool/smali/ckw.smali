.class final Lckw;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcgn;

.field final synthetic b:Lcgp;

.field final synthetic c:Lckr;


# direct methods
.method constructor <init>(Lckr;Lcgn;Lcgp;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lckw;->c:Lckr;

    iput-object p2, p0, Lckw;->a:Lcgn;

    iput-object p3, p0, Lckw;->b:Lcgp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 6

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 218
    const/16 v0, 0x62b

    invoke-static {v0}, Laal;->c(I)V

    .line 220
    iget-object v0, p0, Lckw;->c:Lckr;

    .line 1034
    iget-object v0, v0, Lckr;->b:Lcfc;

    .line 220
    invoke-virtual {v0}, Lcfc;->k()Lhjk;

    move-result-object v3

    .line 221
    if-nez v3, :cond_1

    .line 222
    iget-object v0, p0, Lckw;->a:Lcgn;

    invoke-virtual {v0}, Lcgn;->m()V

    .line 226
    :goto_0
    iget-object v0, p0, Lckw;->c:Lckr;

    iget-object v4, p0, Lckw;->b:Lcgp;

    .line 2301
    iget-object v0, v0, Lckr;->b:Lcfc;

    invoke-virtual {v0}, Lcfc;->i()Z

    move-result v0

    .line 2302
    invoke-virtual {v4}, Lcgp;->a()Z

    move-result v5

    if-ne v5, v0, :cond_0

    .line 2303
    if-nez v0, :cond_3

    :goto_1
    invoke-virtual {v4, v1}, Lcgp;->a(Z)V

    .line 2304
    if-eqz v0, :cond_4

    .line 2306
    const/16 v0, 0xb6

    .line 2304
    :goto_2
    invoke-static {v0}, Laal;->c(I)V

    .line 227
    :cond_0
    iget-object v0, p0, Lckw;->a:Lcgn;

    if-eqz v3, :cond_5

    .line 228
    invoke-virtual {v3}, Lhjk;->g()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 227
    :goto_3
    invoke-virtual {v0, v2}, Lcgn;->b(I)V

    .line 229
    iget-object v0, p0, Lckw;->a:Lcgn;

    invoke-virtual {v0}, Lcgn;->j()V

    .line 230
    return-void

    .line 224
    :cond_1
    invoke-virtual {v3}, Lhjk;->g()Z

    move-result v0

    if-nez v0, :cond_2

    move v0, v1

    :goto_4
    invoke-virtual {v3, v0}, Lhjk;->a(Z)V

    goto :goto_0

    :cond_2
    move v0, v2

    goto :goto_4

    :cond_3
    move v1, v2

    .line 2303
    goto :goto_1

    .line 2307
    :cond_4
    const/16 v0, 0xb8

    goto :goto_2

    .line 228
    :cond_5
    const/16 v2, 0x8

    goto :goto_3
.end method
