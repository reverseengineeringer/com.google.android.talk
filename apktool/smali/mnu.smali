.class final Lmnu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lmnv;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 104
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/os/Message;Z)V
    .locals 1

    .prologue
    .line 108
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/os/Message;->setAsynchronous(Z)V

    .line 109
    return-void
.end method
