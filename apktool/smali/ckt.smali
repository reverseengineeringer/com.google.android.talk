.class final Lckt;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcgp;

.field final synthetic b:Lckr;


# direct methods
.method constructor <init>(Lckr;Lcgp;)V
    .locals 0

    .prologue
    .line 115
    iput-object p1, p0, Lckt;->b:Lckr;

    iput-object p2, p0, Lckt;->a:Lcgp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 118
    const/16 v0, 0x113

    invoke-static {v0}, Laal;->c(I)V

    .line 120
    iget-object v0, p0, Lckt;->b:Lckr;

    .line 1034
    iget-object v3, v0, Lckr;->b:Lcfc;

    .line 120
    iget-object v0, p0, Lckt;->b:Lckr;

    .line 2034
    iget-object v0, v0, Lckr;->b:Lcfc;

    .line 120
    invoke-virtual {v0}, Lcfc;->h()Z

    move-result v0

    if-nez v0, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Lcfc;->a(Z)V

    .line 121
    iget-object v0, p0, Lckt;->b:Lckr;

    iget-object v3, p0, Lckt;->a:Lcgp;

    .line 3312
    iget-object v0, v0, Lckr;->b:Lcfc;

    invoke-virtual {v0}, Lcfc;->h()Z

    move-result v0

    .line 3313
    invoke-virtual {v3}, Lcgp;->a()Z

    move-result v4

    if-ne v4, v0, :cond_0

    .line 3314
    if-nez v0, :cond_2

    :goto_1
    invoke-virtual {v3, v1}, Lcgp;->a(Z)V

    .line 3315
    if-eqz v0, :cond_3

    .line 3316
    const/16 v0, 0xb5

    .line 3315
    :goto_2
    invoke-static {v0}, Laal;->c(I)V

    .line 122
    :cond_0
    return-void

    :cond_1
    move v0, v2

    .line 120
    goto :goto_0

    :cond_2
    move v1, v2

    .line 3314
    goto :goto_1

    .line 3316
    :cond_3
    const/16 v0, 0xb7

    goto :goto_2
.end method
