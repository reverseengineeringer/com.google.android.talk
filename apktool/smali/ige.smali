.class public final Lige;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lilx;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 45
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
            "<",
            "Ligc;",
            ">;"
        }
    .end annotation

    .prologue
    .line 54
    const-class v0, Ligc;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Liog;Lilh;)V
    .locals 2

    .prologue
    .line 48
    const-class v0, Ligc;

    new-instance v1, Ligc;

    invoke-direct {v1, p1, p2}, Ligc;-><init>(Landroid/app/Activity;Liog;)V

    invoke-virtual {p3, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 50
    return-void
.end method
