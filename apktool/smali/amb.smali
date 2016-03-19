.class final Lamb;
.super Lamc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamc",
        "<",
        "Lama;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 62
    invoke-direct {p0}, Lamc;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IILandroid/graphics/Bitmap$Config;)Lama;
    .locals 1

    .prologue
    .line 64
    invoke-virtual {p0}, Lamb;->b()Lamp;

    move-result-object v0

    check-cast v0, Lama;

    .line 65
    invoke-virtual {v0, p1, p2, p3}, Lama;->a(IILandroid/graphics/Bitmap$Config;)V

    .line 66
    return-object v0
.end method

.method protected synthetic a()Lamp;
    .locals 1

    .prologue
    .line 1071
    new-instance v0, Lama;

    invoke-direct {v0, p0}, Lama;-><init>(Lamb;)V

    .line 62
    return-object v0
.end method
