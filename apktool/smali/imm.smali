.class public final Limm;
.super Limc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Limc",
        "<",
        "Limk;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Lav;


# direct methods
.method public constructor <init>(Lav;Liog;)V
    .locals 1

    .prologue
    .line 25
    const-class v0, Liml;

    invoke-direct {p0, p2, v0}, Limc;-><init>(Liog;Ljava/lang/Class;)V

    .line 26
    iput-object p1, p0, Limm;->b:Lav;

    .line 27
    return-void
.end method


# virtual methods
.method protected a(Landroid/content/Context;)Limb;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Limb",
            "<",
            "Limk;",
            ">;"
        }
    .end annotation

    .prologue
    .line 36
    new-instance v0, Liml;

    invoke-direct {v0, p1}, Liml;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected synthetic a(Lima;Liog;Lilh;)V
    .locals 1

    .prologue
    .line 20
    check-cast p1, Limk;

    .line 1031
    iget-object v0, p0, Limm;->b:Lav;

    invoke-interface {p1, v0, p2, p3}, Limk;->a(Lav;Liog;Lilh;)V

    .line 20
    return-void
.end method
