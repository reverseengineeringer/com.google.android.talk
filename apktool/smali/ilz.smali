.class public final Lilz;
.super Limc;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Limc",
        "<",
        "Lilx;",
        ">;"
    }
.end annotation


# instance fields
.field private final b:Landroid/app/Activity;


# direct methods
.method public constructor <init>(Landroid/app/Activity;Liog;)V
    .locals 1

    .prologue
    .line 23
    const-class v0, Lily;

    invoke-direct {p0, p2, v0}, Limc;-><init>(Liog;Ljava/lang/Class;)V

    .line 24
    iput-object p1, p0, Lilz;->b:Landroid/app/Activity;

    .line 25
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
            "Lilx;",
            ">;"
        }
    .end annotation

    .prologue
    .line 34
    new-instance v0, Lily;

    invoke-direct {v0, p1}, Lily;-><init>(Landroid/content/Context;)V

    return-object v0
.end method

.method protected synthetic a(Lima;Liog;Lilh;)V
    .locals 1

    .prologue
    .line 18
    check-cast p1, Lilx;

    .line 1029
    iget-object v0, p0, Lilz;->b:Landroid/app/Activity;

    invoke-interface {p1, v0, p2, p3}, Lilx;->a(Landroid/app/Activity;Liog;Lilh;)V

    .line 18
    return-void
.end method
