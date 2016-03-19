.class final Ldcu;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lilx;
.implements Limk;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 321
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 324
    const-class v0, Ldck;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Liog;Lilh;)V
    .locals 2

    .prologue
    .line 329
    const-class v0, Ldck;

    new-instance v1, Ldcr;

    .line 1046
    invoke-direct {v1, p1, p2}, Ldcr;-><init>(Landroid/app/Activity;Liog;)V

    .line 329
    invoke-virtual {p3, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 330
    return-void
.end method

.method public a(Lav;Liog;Lilh;)V
    .locals 2

    .prologue
    .line 334
    const-class v0, Ldck;

    new-instance v1, Ldcr;

    invoke-direct {v1, p2}, Ldcr;-><init>(Liog;)V

    invoke-virtual {p3, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 335
    return-void
.end method
