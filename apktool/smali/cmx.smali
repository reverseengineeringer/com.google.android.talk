.class public final Lcmx;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 131
    const/16 v0, 0xb25

    invoke-static {v0}, Laal;->c(I)V

    .line 133
    invoke-static {}, Lcfc;->a()Lcfc;

    move-result-object v0

    .line 134
    invoke-virtual {v0}, Lcfc;->k()Lhjk;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 135
    invoke-virtual {v0}, Lcfc;->k()Lhjk;

    move-result-object v1

    invoke-virtual {v1, v2}, Lhjk;->a(Z)V

    .line 136
    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 137
    invoke-virtual {v0}, Lcfc;->r()Lcgw;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcgw;->a(Z)V

    .line 140
    :cond_0
    return-void
.end method
