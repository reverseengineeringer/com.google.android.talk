.class final Lamt;
.super Lamc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lamc",
        "<",
        "Lams;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 165
    invoke-direct {p0}, Lamc;-><init>()V

    return-void
.end method


# virtual methods
.method protected synthetic a()Lamp;
    .locals 1

    .prologue
    .line 1175
    new-instance v0, Lams;

    invoke-direct {v0, p0}, Lams;-><init>(Lamt;)V

    .line 165
    return-object v0
.end method

.method public a(ILandroid/graphics/Bitmap$Config;)Lams;
    .locals 1

    .prologue
    .line 168
    invoke-virtual {p0}, Lamt;->b()Lamp;

    move-result-object v0

    check-cast v0, Lams;

    .line 169
    invoke-virtual {v0, p1, p2}, Lams;->a(ILandroid/graphics/Bitmap$Config;)V

    .line 170
    return-object v0
.end method
