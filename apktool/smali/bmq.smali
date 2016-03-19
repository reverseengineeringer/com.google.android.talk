.class final Lbmq;
.super Landroid/database/ContentObserver;
.source "SourceFile"


# instance fields
.field final synthetic a:Lbmp;


# direct methods
.method constructor <init>(Lbmp;Landroid/os/Handler;)V
    .locals 0

    .prologue
    .line 210
    iput-object p1, p0, Lbmq;->a:Lbmp;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 1

    .prologue
    .line 213
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lbmq;->onChange(ZLandroid/net/Uri;)V

    .line 214
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lbmq;->a:Lbmp;

    invoke-virtual {v0}, Lbmp;->c()V

    .line 219
    return-void
.end method
