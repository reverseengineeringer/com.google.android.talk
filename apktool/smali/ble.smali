.class public final Lble;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lilx;
.implements Limk;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(B)V
    .locals 0

    .prologue
    .line 2022
    invoke-direct {p0}, Lble;-><init>()V

    return-void
.end method

.method private static a(Lilh;Liog;)V
    .locals 2

    .prologue
    .line 1025
    const-class v0, Lbll;

    new-instance v1, Lblq;

    .line 2012
    invoke-direct {v1, p1}, Lblq;-><init>(Liog;)V

    .line 1025
    invoke-virtual {p0, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 1026
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
    .line 2030
    const-class v0, Lbll;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Liog;Lilh;)V
    .locals 0

    .prologue
    .line 39
    invoke-static {p3, p2}, Lble;->a(Lilh;Liog;)V

    .line 40
    return-void
.end method

.method public a(Lav;Liog;Lilh;)V
    .locals 0

    .prologue
    .line 44
    invoke-static {p3, p2}, Lble;->a(Lilh;Liog;)V

    .line 45
    return-void
.end method
