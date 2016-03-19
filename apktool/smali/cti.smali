.class final Lcti;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcsr;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcsr",
        "<",
        "Lctj;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/Bundle;)Lav;
    .locals 1

    .prologue
    .line 1018
    new-instance v0, Lctj;

    invoke-direct {v0}, Lctj;-><init>()V

    .line 1019
    invoke-virtual {v0, p1}, Lctj;->setArguments(Landroid/os/Bundle;)V

    .line 15
    return-object v0
.end method
