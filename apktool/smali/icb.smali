.class public final Licb;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Liap;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Liap",
        "<",
        "Licc;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic a(Landroid/os/Bundle;)Lav;
    .locals 1

    .prologue
    .line 1022
    new-instance v0, Licc;

    invoke-direct {v0}, Licc;-><init>()V

    .line 18
    return-object v0
.end method
