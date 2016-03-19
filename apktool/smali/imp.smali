.class final Limp;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lilx;
.implements Limk;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 99
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Class;
    .locals 1

    .prologue
    .line 113
    const-class v0, Limo;

    return-object v0
.end method

.method public a(Landroid/app/Activity;Liog;Lilh;)V
    .locals 2

    .prologue
    .line 103
    const-class v0, Limo;

    new-instance v1, Limo;

    invoke-direct {v1, p2}, Limo;-><init>(Liog;)V

    invoke-virtual {p3, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 104
    return-void
.end method

.method public a(Lav;Liog;Lilh;)V
    .locals 3

    .prologue
    .line 108
    const-class v0, Limo;

    new-instance v1, Limo;

    const/4 v2, 0x0

    invoke-direct {v1, p2, v2}, Limo;-><init>(Liog;B)V

    invoke-virtual {p3, v0, v1}, Lilh;->a(Ljava/lang/Class;Ljava/lang/Object;)Lilh;

    .line 109
    return-void
.end method
