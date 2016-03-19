.class public final Lhtz;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lilx;
.implements Limk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 476
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 489
    const-class v0, Lhty;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Liog;Lilh;)V
    .locals 2

    .prologue
    .line 479
    const-class v0, Lhty;

    new-instance v1, Lhty;

    invoke-direct {v1, p1, p2}, Lhty;-><init>(Landroid/app/Activity;Liog;)V

    invoke-virtual {p3, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 480
    return-void
.end method

.method public a(Lav;Liog;Lilh;)V
    .locals 2

    .prologue
    .line 484
    const-class v0, Lhty;

    new-instance v1, Lhty;

    invoke-direct {v1, p1, p2}, Lhty;-><init>(Lav;Liog;)V

    invoke-virtual {p3, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 485
    return-void
.end method
